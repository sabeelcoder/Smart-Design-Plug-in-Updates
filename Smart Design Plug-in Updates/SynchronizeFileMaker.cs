using Autodesk.Revit.Attributes;
using Autodesk.Revit.DB;
using Autodesk.Revit.UI;
using Smart_Design_Plug_in_Updates.Synchronize;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using WpfApp1;
using WpfApp1.Models;

namespace Smart_Design_Plug_in_Updates
{
    [Transaction(TransactionMode.Manual)]
    class SynchronizeFileMaker: IExternalCommand
    {
        public Result Execute(
          ExternalCommandData commandData,
          ref string message,
          ElementSet elements)
        {

            UIApplication uiapp = commandData.Application;
            UIDocument uidoc = uiapp.ActiveUIDocument;
            Autodesk.Revit.ApplicationServices.Application app = uiapp.Application;
            Document doc = uidoc.Document;
            List<ClustersData> ScheduleItems = new List<ClustersData>();
            #region Add schedule if it do not exist
            #region Check If Schedule Exist
            string scheduleTitle = "Smart Schedule";
            ViewSchedule CheckIfScheduleExist = (from v in new FilteredElementCollector(doc)
                     .OfClass(typeof(ViewSchedule))
                     .Cast<ViewSchedule>()
                                                 where v.Name == scheduleTitle
                                                 select v).FirstOrDefault();
            #endregion





            string ScheduleExist = " ";
            if (CheckIfScheduleExist == null)
            {

                ScheduleExist = "Not Exist";
                MessageBoxButton buttons = MessageBoxButton.OKCancel;
                var UserResp = MessageBox.Show("No smart schedule has been created do you want to make an empty schedule?", "Warning", buttons, MessageBoxImage.Warning);
                if (UserResp.ToString() == "OK")
                {
                    #region LoadingProjects
                    LoadingProjects xxx = new LoadingProjects();
                    double screenWidthload = System.Windows.SystemParameters.PrimaryScreenWidth;
                    double screenHeightload = System.Windows.SystemParameters.PrimaryScreenHeight;
                    xxx.Width = 300;
                    xxx.Height = 100;
                    double windowWidthload = xxx.Width;
                    double windowHeightload = xxx.Height;
                    xxx.Left = (screenWidthload / 2) - (windowWidthload / 2);
                    xxx.Top = (screenHeightload / 2) - (windowHeightload / 2);
                    xxx.ShowDialog();
                    List<Project> Projects = new List<Project>();
                    foreach (var Project in xxx.AllProjects)
                    {
                        Projects.Add(Project);
                    }

                    #endregion

                    #region Intialize ProjectsList
                    ChooseProject xx = new ChooseProject(Projects);
                    double screenWidthChoose = System.Windows.SystemParameters.PrimaryScreenWidth;
                    double screenHeightChoose = System.Windows.SystemParameters.PrimaryScreenHeight;
                    xx.Width = 800;
                    xx.Height = 505;
                    double windowWidthChoose = xx.Width;
                    double windowHeightChoose = xx.Height;
                    xx.Left = (screenWidthChoose / 2) - (windowWidthChoose / 2);
                    xx.Top = (screenHeightChoose / 2) - (windowHeightChoose / 2);
                    xx.ShowDialog();
                    #endregion

                    #region Send to create schedule class
                    CreateSmartSchedule create = new CreateSmartSchedule();
                    string Exist = create.CreateSchedule(doc, ScheduleItems);
                    #endregion

                    #region Extract data
                    ExtractDataFromSchedule ExData = new ExtractDataFromSchedule();
                    var data = ExData.ExData(doc);
                    List<WpfApp1.Models.Item> ScheduleData = data.Item1;
                    if (xx.ChoosedProject != null)
                    {
                        var RecordID = xx.ChoosedProject.RecordID;
                        var ProjectNum = xx.ChoosedProject.Project_Number;
                        var ProjectName = xx.ChoosedProject.Project_Name;
                        #endregion

                        #region Intialize window
                        MainWindow x = new MainWindow(ScheduleData, RecordID);
                        double screenWidth = System.Windows.SystemParameters.PrimaryScreenWidth;
                        double screenHeight = System.Windows.SystemParameters.PrimaryScreenHeight;
                        double windowWidth = x.Width;
                        double windowHeight = x.Height;
                        x.Left = (screenWidth / 2) - (windowWidth / 2);
                        x.Top = (screenHeight / 2) - (windowHeight / 2);
                        x.ShowDialog();
                        #endregion

                        #region Start the method                   
                        string Method = x.Method;
                        List<WpfApp1.Models.Item> RecordsUnsorted = x.FileMakerItems;
                        #region Sort items
                        Sortrecords Sorting = new Sortrecords();
                        var RecordsSorted = Sorting.RecordsSort(RecordsUnsorted);
                        #endregion
                        List<WpfApp1.Models.Item> NewScheduleData = ExData.NewRecords(RecordsSorted, doc);
                        Identify(doc, Method, RecordsUnsorted, NewScheduleData, ScheduleExist, RecordID, ProjectNum, ProjectName);
                        #endregion

                    }


                }
                else
                {
                    MessageBoxButton buttons1 = MessageBoxButton.OK;
                    MessageBox.Show("Can't synchronize without creating a smart schedule", "Error", buttons1, MessageBoxImage.Error);
                    
                }
            }


            #endregion
            else
            {
                ScheduleExist = "Exist";
                var pCurrView = doc.ActiveView;
                
                if(pCurrView.Name== "Smart Schedule")
                {
                    MessageBoxButton buttons1 = MessageBoxButton.OK;
                    MessageBox.Show("Close the Smart Schedule before syncing", "Error", buttons1, MessageBoxImage.Error);
                }
                else
                {
                    #region Extract data
                    ExtractDataFromSchedule ExData = new ExtractDataFromSchedule();
                    var data = ExData.ExData(doc);
                    string RecordID = "";
                    string ProjectNum = "";
                    string ProjectName = "";
                    List<WpfApp1.Models.Item> ScheduleData = data.Item1;
                    RecordID = data.Item2;
                    ProjectNum = data.Item3;
                    ProjectName = data.Item4;
                    Project ChoosedProject=null;
                    #endregion

                    #region Check if the user should choose a project or not
                    if (RecordID == "")
                    {
                        #region LoadingProjects
                        LoadingProjects xxx = new LoadingProjects();
                        double screenWidthload = System.Windows.SystemParameters.PrimaryScreenWidth;
                        double screenHeightload = System.Windows.SystemParameters.PrimaryScreenHeight;
                        xxx.Width = 300;
                        xxx.Height = 100;
                        double windowWidthload = xxx.Width;
                        double windowHeightload = xxx.Height;
                        xxx.Left = (screenWidthload / 2) - (windowWidthload / 2);
                        xxx.Top = (screenHeightload / 2) - (windowHeightload / 2);
                        xxx.ShowDialog();
                        List<Project> Projects = new List<Project>();
                        foreach (var Project in xxx.AllProjects)
                        {
                            Projects.Add(Project);
                        }

                        #endregion

                        #region Intialize ProjectsList
                        ChooseProject xx = new ChooseProject(Projects);
                        double screenWidthChoose = System.Windows.SystemParameters.PrimaryScreenWidth;
                        double screenHeightChoose = System.Windows.SystemParameters.PrimaryScreenHeight;
                        xx.Width = 800;
                        xx.Height = 505;
                        double windowWidthChoose = xx.Width;
                        double windowHeightChoose = xx.Height;
                        xx.Left = (screenWidthChoose / 2) - (windowWidthChoose / 2);
                        xx.Top = (screenHeightChoose / 2) - (windowHeightChoose / 2);
                        xx.ShowDialog();
                        ChoosedProject = xx.ChoosedProject;
                        if(xx.ChoosedProject != null)
                        {
                            RecordID = xx.ChoosedProject.RecordID;
                            ProjectNum = xx.ChoosedProject.Project_Number;
                            ProjectName = xx.ChoosedProject.Project_Name;
                        }

                        #endregion
                    }
                    #endregion

                    if (ChoosedProject != null || RecordID !="")
                    {
                        #region Intialize window
                        MainWindow x = new MainWindow(ScheduleData, RecordID);
                        double screenWidth = System.Windows.SystemParameters.PrimaryScreenWidth;
                        double screenHeight = System.Windows.SystemParameters.PrimaryScreenHeight;
                        double windowWidth = x.Width;
                        double windowHeight = x.Height;
                        x.Left = (screenWidth / 2) - (windowWidth / 2);
                        x.Top = (screenHeight / 2) - (windowHeight / 2);
                        x.ShowDialog();
                        #endregion

                        #region Start the method                   
                        string Method = x.Method;
                        List<WpfApp1.Models.Item> RecordsUnsorted = x.FileMakerItems;
                        #region Sort items
                        Sortrecords Sorting = new Sortrecords();
                        var RecordsSorted = Sorting.RecordsSort(RecordsUnsorted);
                        #endregion
                        List<WpfApp1.Models.Item> NewScheduleData = ExData.NewRecords(RecordsSorted, doc);
                        Identify(doc, Method, RecordsUnsorted, NewScheduleData, ScheduleExist, RecordID, ProjectNum, ProjectName);
                        #endregion
                    }

                }
            }
            return Result.Succeeded;
        }

        public void Identify(Document doc,string Method, List<WpfApp1.Models.Item> RecordsUnsorted, List<WpfApp1.Models.Item> NewScheduleData,string Exist,string RecordID,string ProjectNum,string ProjectName)
        {
            IdentifyingChosenMethod Identifying = new IdentifyingChosenMethod();
            Identifying.IdnetifyMethod(doc, Method, RecordsUnsorted, NewScheduleData,Exist,RecordID,ProjectNum,ProjectName);
        }

    }
}
