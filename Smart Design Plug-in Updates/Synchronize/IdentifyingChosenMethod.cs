using Autodesk.Revit.Creation;
using Autodesk.Revit.DB;
using Autodesk.Revit.UI;
using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using WpfApp1;
using System.Windows.Media.Imaging;
using System.Drawing;
using System.Drawing.Imaging;

namespace Smart_Design_Plug_in_Updates.Synchronize
{
    class IdentifyingChosenMethod
    {
        public void IdnetifyMethod(Autodesk.Revit.DB.Document doc,string Method, List<WpfApp1.Models.Item> RecordsUnsorted, List<WpfApp1.Models.Item> NewScheduleData,string Exist, string RecordID, string ProjectNum, string ProjectName,
            string Version)
        {
            List<ClustersData> ScheduleItems = new List<ClustersData>();
            string path = @"%AppData%\Autodesk\REVIT\Addins";
            path = Environment.ExpandEnvironmentVariables(path);
            if (!Directory.Exists(path))
            {
                path = @"%AppData%\Autodesk\Revit\Addins";
                path = Environment.ExpandEnvironmentVariables(path);
                if (!Directory.Exists(path))
                {
                    path = @"%AppData%\Autodesk\REVIT\Addins";
                    path = Environment.ExpandEnvironmentVariables(path);
                }
            }
            path = path+"\\" + Version + "\\Smart App";
            path = Environment.ExpandEnvironmentVariables(path);
            System.IO.DirectoryInfo di = new DirectoryInfo(path);
             if (!Directory.Exists(path))
             {
                 System.IO.Directory.CreateDirectory(path);
             }
            foreach (FileInfo file in di.GetFiles())
            {
                file.Delete();
            }
            foreach (DirectoryInfo dir in di.GetDirectories())
            {
                dir.Delete(true);
            }

            if (Method == "Extract")
            {

                #region Check if there are new items
                if (NewScheduleData.Count != 0)
                {
                    MessageBoxButton buttons1 = MessageBoxButton.YesNo;
                    var UserResp=MessageBox.Show("There are new items that have not been created yet ,do you want to create those items first ?", "Warning", buttons1, MessageBoxImage.Warning);

                    if (UserResp.ToString() == "Yes")
                    {
                        #region Intialize window
                        CreateUpdate x = new CreateUpdate(NewScheduleData,RecordID,ProjectNum);
                        double screenWidth = System.Windows.SystemParameters.PrimaryScreenWidth;
                        double screenHeight = System.Windows.SystemParameters.PrimaryScreenHeight;
                        double windowWidth = x.Width;
                        double windowHeight = x.Height;
                        x.Left = (screenWidth / 2) - (windowWidth / 2);
                        x.Top = (screenHeight / 2) - (windowHeight / 2);
                        x.ShowDialog();
                        #endregion

                        #region Getting the schedule and delete it
                        string scheduleTitle = "Smart Schedule";
                        ViewSchedule smartSchedule = (from v in new FilteredElementCollector(doc)
                                     .OfClass(typeof(ViewSchedule))
                                     .Cast<ViewSchedule>()
                                                      where v.Name == scheduleTitle
                                                      select v).FirstOrDefault();
                        using (Transaction tx = new Transaction(doc))
                        {
                            tx.Start("Updating smart schedule");

                            doc.Delete(smartSchedule.Id);

                            //yy
                           // var test = GetImageSource((RecordsUnsorted[94]).Images[0]);
                           // ImageType.Create(test.)
                            tx.Commit();
                        }

                        #endregion
                        #region Send to create schedule class
                        CreateSmartSchedule create = new CreateSmartSchedule();
                        string Exist1 = create.CreateSchedule(doc, ScheduleItems);
                        #endregion

                        List<WpfApp1.Models.Item> RecordsUnsortedTwo = x.FileMakerItems;
                        #region Sort items
                        Sortrecords Sorting1 = new Sortrecords();
                        
                        #endregion

                        var RecordsSortedTwo = Sorting1.RecordsSort(RecordsUnsortedTwo);

                        #region Adding items to the schedule
                        AddDataToSmartSchedule Adding1 = new AddDataToSmartSchedule();
                        Adding1.AddData(RecordsSortedTwo, doc,RecordID,ProjectNum,ProjectName,Version);
                        #endregion


                        MessageBoxButton buttons = MessageBoxButton.OK;
                        MessageBox.Show("Extraction done and the smart schedule have been updated", "Extraction done and the smart schedule have been updated", buttons, MessageBoxImage.Information);
                    }
                    else
                    {
                        #region Sort items
                        Sortrecords Sorting = new Sortrecords();
                        var RecordsSorted = Sorting.RecordsSort(RecordsUnsorted);
                        #endregion

                        #region Adding items to the schedule
                        AddDataToSmartSchedule Adding = new AddDataToSmartSchedule();
                        Adding.AddData(RecordsSorted, doc, RecordID, ProjectNum, ProjectName,Version);
                        #endregion


                        MessageBoxButton buttons = MessageBoxButton.OK;
                        MessageBox.Show("Extraction done and the smart schedule have been updated", "Extraction done and the smart schedule have been updated", buttons, MessageBoxImage.Information);
                    }
                }
                else
                {
                    if (Exist == "Exist")
                    {
                        #region Getting the schedule and delete it
                        string scheduleTitle = "Smart Schedule";
                        ViewSchedule smartSchedule = (from v in new FilteredElementCollector(doc)
                                     .OfClass(typeof(ViewSchedule))
                                     .Cast<ViewSchedule>()
                                                      where v.Name == scheduleTitle
                                                      select v).FirstOrDefault();
                        using (Transaction tx = new Transaction(doc))
                        {
                            tx.Start("Updating smart schedule");
                            if (!(smartSchedule == null))
                            {
                                doc.Delete(smartSchedule.Id);
                            }

                            tx.Commit();
                        }

                        #endregion
                        #region Send to create schedule class
                        CreateSmartSchedule create = new CreateSmartSchedule();
                        string Exist2 = create.CreateSchedule(doc, ScheduleItems);
                        #endregion
                    }
                    #region Sort items
                    Sortrecords Sorting = new Sortrecords();
                    var RecordsSorted = Sorting.RecordsSort(RecordsUnsorted);
                    #endregion

                    #region Adding items to the schedule
                    AddDataToSmartSchedule Adding = new AddDataToSmartSchedule();
                    Adding.AddData(RecordsSorted, doc, RecordID, ProjectNum, ProjectName,Version);
                    #endregion


                    MessageBoxButton buttons = MessageBoxButton.OK;
                    MessageBox.Show("Extraction done and the smart schedule have been updated", "Extraction done and the smart schedule have been updated", buttons, MessageBoxImage.Information);
                }
                #endregion


            }
            else if (Method == "Create")
            {


                #region Sort items
                Sortrecords Sorting = new Sortrecords();
                var RecordsSorted = Sorting.RecordsSort(RecordsUnsorted);
                #endregion

                #region Read what is in the schedule
                ExtractDataFromSchedule Extraction = new ExtractDataFromSchedule();
                List<WpfApp1.Models.Item> NewRecords=Extraction.NewRecords(RecordsSorted,doc);
                #endregion

                
                


                #region Send items to be created

                #region Intialize window
                CreateUpdate x = new CreateUpdate(NewRecords,RecordID,ProjectNum);
                double screenWidth = System.Windows.SystemParameters.PrimaryScreenWidth;
                double screenHeight = System.Windows.SystemParameters.PrimaryScreenHeight;
                double windowWidth = x.Width;
                double windowHeight = x.Height;
                x.Left = (screenWidth / 2) - (windowWidth / 2);
                x.Top = (screenHeight / 2) - (windowHeight / 2);
                x.ShowDialog();
                #endregion

                if (NewRecords.Count != 0)
                {
                    
                    

                    if (x.Created == "Done")
                    {
                        #region Update new items in smart schedule
                        List<WpfApp1.Models.Item> RecordsUnsortedTwo = x.FileMakerItems;
                        int NumberOfItems = NewRecords.Count;
                        var RecordsSortedTwo = Sorting.RecordsSort(RecordsUnsortedTwo);
                        List<WpfApp1.Models.Item> NewRecordsTwo = new List<WpfApp1.Models.Item>();

                        #region Get Newly generated items
                        int i = 0;
                        while (NewRecordsTwo.Count < NumberOfItems )
                        {
                            if (double.TryParse(RecordsSortedTwo[RecordsSortedTwo.Count - 1 - i].ItemNumber, out double num))
                            {
                                NewRecordsTwo.Add(RecordsSortedTwo[RecordsSortedTwo.Count - 1 - i]);
                                i = i + 1;
                            }
                            else
                            {
                                i = i + 1;
                            }
                            
                        }
                        #endregion

                        #region Getting the schedule and delete it
                        string scheduleTitle = "Smart Schedule";
                        ViewSchedule smartSchedule = (from v in new FilteredElementCollector(doc)
                                     .OfClass(typeof(ViewSchedule))
                                     .Cast<ViewSchedule>()
                                                      where v.Name == scheduleTitle
                                                      select v).FirstOrDefault();
                        using (Transaction tx = new Transaction(doc))
                        {
                            tx.Start("Updating smart schedule");
                            
                            doc.Delete(smartSchedule.Id);
                            tx.Commit();
                        }
                            
                        #endregion
                        #region Send to create schedule class
                        CreateSmartSchedule create = new CreateSmartSchedule();
                        string Exist4 = create.CreateSchedule(doc, ScheduleItems);
                        #endregion
                        #endregion

                        #region Adding items to the schedule
                        NewRecordsTwo.Reverse();
                        AddDataToSmartSchedule Adding = new AddDataToSmartSchedule();
                        Adding.AddData(RecordsSortedTwo, doc, RecordID, ProjectNum, ProjectName,Version);
                        #endregion
                        #endregion
                        MessageBoxButton buttons = MessageBoxButton.OK;
                        MessageBox.Show("New items have been created and uploaded successfully", "Done", buttons, MessageBoxImage.Information);
                    }

                }
                





            }
            else if (Method == "Update")
            {

            }
        }
        private BitmapSource GetImageSource(Image img)
        {
            BitmapImage bmp = new BitmapImage();

            using (MemoryStream ms = new MemoryStream())
            {
                img.Save(ms, ImageFormat.Png);
                ms.Position = 0;
                bmp.BeginInit();
                bmp.CacheOption = BitmapCacheOption.OnLoad;
                bmp.UriSource = null;
                bmp.StreamSource = ms;
                bmp.EndInit();
            }
            return bmp;
        }
    }
}
