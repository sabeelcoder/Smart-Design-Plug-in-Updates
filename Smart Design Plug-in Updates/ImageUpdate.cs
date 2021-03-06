﻿using Autodesk.Revit.Attributes;
using Autodesk.Revit.DB;
using Autodesk.Revit.UI;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SmartImageForm_v1;
using System.Windows.Forms;
using Smart_Design_Plug_in_Updates.Synchronize;
using WpfApp1;
using WpfApp1.Models;
using LoginWindow;

namespace Smart_Design_Plug_in_Updates
{
    [Transaction(TransactionMode.Manual)]
    class ImageUpdate : IExternalCommand
    {
        public Result Execute(ExternalCommandData commandData, ref string message, ElementSet elements)
        {
            UIApplication uiapp = commandData.Application;
            UIDocument uidoc = uiapp.ActiveUIDocument;
            Autodesk.Revit.ApplicationServices.Application app = uiapp.Application;
            Document doc = uidoc.Document;
            string Version = app.VersionNumber;
            //Application.EnableVisualStyles();
            //Application.SetCompatibleTextRenderingDefault(false);

            string Username="";
            string Password="";



            #region Check Password
            #region Login Window
            LoginWindow.MainWindow Login = new LoginWindow.MainWindow();
            //double screenWidthlogin = System.Windows.SystemParameters.PrimaryScreenWidth;
            //double screenHeightlogin = System.Windows.SystemParameters.PrimaryScreenHeight;
            Username = Login.UserName;
            Password = Login.Password;
            /* xxx.Width = 300;
             xxx.Height = 100;
             double windowWidthload = xxx.Width;
             double windowHeightload = xxx.Height;
             xxx.Left = (screenWidthload / 2) - (windowWidthload / 2);
             xxx.Top = (screenHeightload / 2) - (windowHeightload / 2);*/
            #endregion
            #region Check If Schedule Exist
            string scheduleTitle = "Smart Schedule";
            ViewSchedule CheckIfScheduleExist = (from v in new FilteredElementCollector(doc)
                     .OfClass(typeof(ViewSchedule))
                     .Cast<ViewSchedule>()
                                                 where v.Name == scheduleTitle
                                                 select v).FirstOrDefault();
            #endregion
            if (CheckIfScheduleExist == null)
            {
                Login.ShowDialog();
                Username = Login.UserName;
                Password = Login.Password;
            }
            else
            {
                if (string.IsNullOrEmpty(Username))
                {
                    Login.ShowDialog();
                    Username = Login.UserName;
                    Password = Login.Password;
                }
            }

            #endregion

            #region LoadingProjects
            LoadingProjects xxx = new LoadingProjects(Username,Password);
            double screenWidthload = System.Windows.SystemParameters.PrimaryScreenWidth;
            double screenHeightload = System.Windows.SystemParameters.PrimaryScreenHeight;
            xxx.Width = 300;
            xxx.Height = 100;
            double windowWidthload = xxx.Width;
            double windowHeightload = xxx.Height;
            xxx.Left = (screenWidthload / 2) - (windowWidthload / 2);
            xxx.Top = (screenHeightload / 2) - (windowHeightload / 2);
            if (!(string.IsNullOrEmpty(xxx.token)))
            {
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

                if (xx.ChoosedProject != null)
                {
                    var RecordID = xx.ChoosedProject.RecordID;
                    var ProjectNum = xx.ChoosedProject.Project_Number;
                    var ProjectName = xx.ChoosedProject.Project_Name;
                    var Form = new Form1(RecordID, ProjectNum,Username,Password);
                    Application.Run(Form);
                    string token = Form.token;


                    if (!(string.IsNullOrEmpty(token)))
                    {
                        #region Intialize window
                        MainWindowExtract x = new MainWindowExtract(RecordID, ProjectNum,Username,Password);
                        double screenWidth = System.Windows.SystemParameters.PrimaryScreenWidth;
                        double screenHeight = System.Windows.SystemParameters.PrimaryScreenHeight;
                        double windowWidth = x.Width;
                        double windowHeight = x.Height;
                        x.Left = (screenWidth / 2) - (windowWidth / 2);
                        x.Top = (screenHeight / 2) - (windowHeight / 2);
                        x.ShowDialog();
                        #endregion

                        #region Start the method     


                        string Method = "Extract";
                        List<WpfApp1.Models.Item> RecordsUnsorted = x.FileMakerItems;
                        #region Sort items
                        Sortrecords Sorting = new Sortrecords();
                        var RecordsSorted = Sorting.RecordsSort(RecordsUnsorted);



                        #endregion
                        string ScheduleExist = "Exist";
                        List<WpfApp1.Models.Item> NewScheduleData = new List<Item>();
                        Identify(doc, Method, RecordsUnsorted, NewScheduleData, ScheduleExist, RecordID, ProjectNum, ProjectName, Version,Username,Password);
                        #endregion
                    }


                }
            }

            return Result.Succeeded;
        }
        public void Identify(Document doc, string Method, List<WpfApp1.Models.Item> RecordsUnsorted, List<WpfApp1.Models.Item> NewScheduleData, string Exist, string RecordID, string ProjectNum, string ProjectName,string Version,string username,string password)
        {
            IdentifyingChosenMethod Identifying = new IdentifyingChosenMethod();
            Identifying.IdnetifyMethod(doc, Method, RecordsUnsorted, NewScheduleData, Exist, RecordID, ProjectNum, ProjectName,Version,username,password);
        }
    }
}
