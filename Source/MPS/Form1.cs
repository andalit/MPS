using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;
using System.IO;
using System.Threading;
using MPS.Properties;
using MPS.Resources;
using Telerik.WinControls.UI;


namespace MPS
{
    public partial class Form1 : Form
    {
        private string server;
        private string database;
        private string uid;
        private string password;
        private MySqlConnection connection;
        private MySqlDataAdapter mySqlDataAdapter;
        private int WorkAnketa = 0;
       // private string User = "Roman";
        public static DataSet DataSet_PersonData = new DataSet();

        public Form1()
        {
          //  Thread myThread = new Thread(func); //Создаем новый объект потока (Thread)
           // myThread.Start(); //запускаем поток

            InitializeComponent();
            radTextBox1_Allsearhc.KeyDown +=(s, e) => { if (e.KeyCode == Keys.Enter) radButton1_Click(new object(), new EventArgs()); };
                // ивент поля поиска и нажатие ентера
        }
        private bool OpenConnection()
        {
            try
            {
                connection.Open();
                return true;
            }
            catch (MySqlException ex)
            {
                //When handling errors, you can your application's response based on the error number.
                //The two most common error numbers when connecting are as follows:
                //0: Cannot connect to server.
                //1045: Invalid user name and/or password.
                switch (ex.Number)
                {
                    case 0:
                        MessageBox.Show("Cannot connect to server. Contact administrator");
                        break;
                    case 1045:
                        MessageBox.Show("Invalid username/password, please try again");
                        break;
                    default:
                        MessageBox.Show(ex.Message);
                        break;
                }
                return false;
            }
        }
        private bool CloseConnection()
        {
            try
            {
                connection.Close();
                return true;
            }
            catch (MySqlException ex)
            {
                MessageBox.Show(ex.Message);
                return false;
            }
        } //Close connection
         private void Form1_Load(object sender, EventArgs e)
        {
           // server = "localhost";
         //   database = "mps";
          //  uid = "root";
           // password = "";
                        string connectionString =
                "SERVER=" + Settings.Default.Host + ";" +
                "PORT  = "+Settings.Default.Port +"; "+
                "DATABASE=" + Settings.Default.Database + ";" +
                "UID=" + Settings.Default.User + ";" +
                "PASSWORD=" + Settings.Default.Password + ";" +
                "charset = " + Settings.Default.Charset;
                     //   Settings.Default.Host = connectionString;
          //  Settings.Default.Save();
                       connection = new MySqlConnection(connectionString);
            if (OpenConnection() == true)
            {
                mySqlDataAdapter = new MySqlDataAdapter("select * from `database` LIMIT 1", connection);
                DataSet DS = new DataSet();
                mySqlDataAdapter.Fill(DS);
             //   radGridView1_Work.DataSource = DS.Tables[0];
                //close connection
                // CloseConnection();
            }
           Createstruct();
        }
       
      
        // ###############################   ЗАКЛАДКА SEARCH №1  НАЧАЛО ###############################
         private void radPageView2_SelectedPageChanged(object sender, EventArgs e) // ИВЕНТ 2-Х активации вкладки любой
         {
             // WorkAnketa = 30;
             if (connection != null && WorkAnketa != 0)
             {
                 string zapros = null;
                 DataSet DS = null;
                 switch (radPageView2.SelectedPage.Text)
                 {
                     case "PERSONAL":
                         //   --- шапка --- 
                         zapros =
                             "SELECT `Comments`,`Salary`,DATE_FORMAT(`Date readiness`, '%Y-%c-%e') AS `Date readiness`,DATE_FORMAT(`Date Update`, '%Y-%c-%e') AS `Date Update`,`Foto` " +
                             "FROM `database` " +
                             "WHERE `ID`=" + WorkAnketa;
                         mySqlDataAdapter = new MySqlDataAdapter(zapros, connection);
                         DS = new DataSet();
                         mySqlDataAdapter.Fill(DS);

                         TextBox_Comment21.Text = DS.Tables[0].Rows[0][0].ToString(); //Коммент
                         Label_Salary.Text = "Salary: " + DS.Tables[0].Rows[0][1].ToString(); //Зарплата
                         Label_DateReadiness.Text = "Readness: " + DS.Tables[0].Rows[0][2].ToString(); //дата готовности
                         label_DateUpdate.Text = "Updated: " + DS.Tables[0].Rows[0][3].ToString(); //Дата обновления
                         try
                         {
                             byte[] Img = (byte[])DS.Tables[0].Rows[0][4];   // картинка (сжимать или обрезать  в настройках pictureBox1.SizeMode)
                             Bitmap image;
                             using (var ms = new MemoryStream(Img))
                             {
                                 image = new Bitmap(ms);
                             }
                             pictureBox1.Image = image;
                         }
                         catch (Exception)
                         {
                             pictureBox1.Image = MPS.Properties.Resources.Foto;
                         }

                         // --- telo ---
                         zapros =
                             "SELECT `Position to apply for`,`Certified for`, `Name`,`Surname`,`Father Name`," +
                             "`Mather Name`,DATE_FORMAT(`D.O.B.`,'%Y-%m-%d'),`P.O.B.`,`Nationality`,`Hieght`,`Weight`,`Shoes size`," +
                             "`Parka size`,`Address`,`Mobile No.`,`E-mail`,`Skype`,`Marital status`,`Children`," +
                             "`Seamans Pass No.`,`Place of Issue S`,`ISS S`,DATE_FORMAT(`Valid Date S`,'%Y-%m-%d'),`Civil Pass No.`," +
                             "`Place of Issue`,`ISS`,DATE_FORMAT(`Valid Date`,'%Y-%m-%d'),`Graduated From`,`English Ability`,`Nearest Int. Airport`" +
                             " FROM `database` WHERE `id` = " + WorkAnketa;
                         mySqlDataAdapter = new MySqlDataAdapter(zapros, connection);
                         DS = new DataSet();
                         mySqlDataAdapter.Fill(DS);

                         radGridView2PersonData.DataSource = DS.Tables[0];

                         int ssd = DS.Tables[0].Columns.Count;

                         for (int i = 0; i < ssd; i++)
                         {
                             var sdasdas = DS.Tables[0].Rows[0][i].ToString();
                             // radGridView2PersonData.Rows[i].Cells[1].Value = sdasdas; // заполнение таблицы
                             DataSet_PersonData.Tables["PersonalData"].Rows[i][1] = sdasdas;
                         }
                         radGridView2PersonData.DataSource = DataSet_PersonData.Tables["PersonalData"];
                         // Отобразить даннные таблици PersonalData в фирме таблици на винформе 

                         //     radGridView2PersonData.Columns[0].MaxWidth = 15; // размер 1й колонки
                         radGridView2PersonData.Columns[0].Width = 10; // размер 1й колонки
                         radGridView2PersonData.Columns[1].Width = 50; // размер 1й колонки
                         radGridView2PersonData.Columns[0].TextAlignment = ContentAlignment.MiddleRight;

                         break;
                     case "NEXT OF KIN": // при активации вкладки NEXT OF KIN
                         // MessageBox.Show("Активирована вкладка " + radPageView2.SelectedPage.Text);
                         zapros =
                             "SELECT `Name Surname`,`Relation`,`Occupantion`,DATE_FORMAT(`Date of Birth`,'%Y-%m-%d') AS `Date of Birth`,`Address`,`Telephone`" +
                             "FROM `nextofkin` " +
                             "WHERE `PID`=" + WorkAnketa;

                         mySqlDataAdapter = new MySqlDataAdapter(zapros, connection);
                         DS = new DataSet();
                         mySqlDataAdapter.Fill(DS);
                         radGridView2PersonData2NextOfKin.DataSource = DS.Tables[0];



                         break;
                     case "DOCUMENTS":
                         zapros =
                             "SELECT  `Certificate`,`Number`,DATE_FORMAT(`Issuing`,'%Y-%m-%d') AS `Issuing`,DATE_FORMAT(`Validation Date`,'%Y-%m-%d') AS `Validation Date`,`Issuing Place` " +
                             "FROM `documents` " +
                             "WHERE `PID`=" + WorkAnketa;

                         mySqlDataAdapter = new MySqlDataAdapter(zapros, connection);
                         DS = new DataSet();
                         mySqlDataAdapter.Fill(DS);
                         radGridViewNationalCertification.DataSource = DS.Tables[0];
                         // MessageBox.Show("Активирована вкладка " + radPageView2.SelectedPage.Text);
                         // --- VISA ---
                         zapros = "SELECT " +
                                  "`USA Visa : Number`," +
                                  "DATE_FORMAT(`USA Visa : Data iss`,'%Y-%m-%d') AS `USA Visa : Data iss`," +
                                  "DATE_FORMAT(`USA Visa : Data End`,'%Y-%m-%d') AS `USA Visa : Data End`," +
                                  "`Schengen : Number`," +
                                  "DATE_FORMAT(`Schengen : Data iss`,'%Y-%m-%d') AS `Schengen : Data iss`," +
                                  "DATE_FORMAT(`Schengen : Data End`,'%Y-%m-%d') AS  `Schengen : Data End`, " +
                                  "`MCV : Number`, " +
                                  "DATE_FORMAT(`MCV : Data iss`,'%Y-%m-%d') AS `MCV : Data iss`," +
                                  "DATE_FORMAT(`MCV : Data End`,'%Y-%m-%d') AS `MCV : Data End` " +
                                  "FROM `database` WHERE `id` = " + WorkAnketa;
                         mySqlDataAdapter = new MySqlDataAdapter(zapros, connection);
                         DS = new DataSet();
                         mySqlDataAdapter.Fill(DS);

                         //radGridViewVisa.DataSource = DsS2.Tables[0];
                         int ssds = DS.Tables[0].Columns.Count;
                         int stroka = 0;
                         int stolb = 1;
                         for (int i = 0; i < ssds; i++) // перебираем полученные данные 
                         {
                             if (i % 3 == 0 && i != 0) // проверка делиться ил на 3 число для заполнение 3х столбцов
                             {
                                 stroka++;
                                 stolb = 1;
                             }
                             var zapolnznach = DS.Tables[0].Rows[0][i].ToString();
                             if (zapolnznach != "")
                             {
                                 DataSet_PersonData.Tables["Visa"].Rows[stroka][stolb] = zapolnznach; // заполнение ячеек
                             }
                             stolb++;
                         }
                         radGridViewVisa.DataSource = DataSet_PersonData.Tables["Visa"]; // вывод на екран
                         // --- VISA --- конец
                         // --- Vakcination --- 
                         zapros = " SELECT " +
                                  "DATE_FORMAT(`Yellow Fever : Data iss`,'%Y-%m-%d') AS `Yellow Fever : Data iss`," +
                                  "DATE_FORMAT(`Yellow Fever : Data End`,'%Y-%m-%d') AS `Yellow Fever : Data End`," +
                                  "DATE_FORMAT(`Cholera : Data iss`,'%Y-%m-%d') AS `Cholera : Data iss`," +
                                  "DATE_FORMAT(`Cholera : Data End`,'%Y-%m-%d') AS `Cholera : Data End`," +
                                  "DATE_FORMAT(`Diphtheria : Data iss`,'%Y-%m-%d') AS `Diphtheria : Data iss`," +
                                  "DATE_FORMAT(`Diphtheria : Data End`,'%Y-%m-%d') AS `Diphtheria : Data End`" +
                                  "FROM `database` WHERE `id` = " + WorkAnketa;
                         mySqlDataAdapter = new MySqlDataAdapter(zapros, connection);
                         DS = new DataSet();
                         mySqlDataAdapter.Fill(DS);

                         //radGridViewVisa.DataSource = DsS2.Tables[0];
                         ssds = DS.Tables[0].Columns.Count;
                         stroka = 0;
                         stolb = 1;
                         for (int i = 0; i < ssds; i++) // перебираем полученные данные 
                         {
                             if (i % 2 == 0 && i != 0) // проверка делиться ил на 2 число для заполнение 3х столбцов
                             {
                                 stroka++;
                                 stolb = 1;
                             }
                             var zapolnznach = DS.Tables[0].Rows[0][i].ToString();
                             if (zapolnznach != "")
                             {
                                 DataSet_PersonData.Tables["Vaccination"].Rows[stroka][stolb] = zapolnznach; // заполнение ячеек
                             }

                             stolb++;
                         }
                         radGridViewVaccination.DataSource = DataSet_PersonData.Tables["Vaccination"]; // вывод на екран
                         // --- Vakcination --- конец
                         break;
                     case "FLAG CERT":
                         zapros =
                             "SELECT `Flag`,`Type`,`Number`,`Rank`,`Issued`,`Valid`,`National Number`" +
                             " FROM `flagcert`" +
                             "WHERE `PID`=" + WorkAnketa;

                         mySqlDataAdapter = new MySqlDataAdapter(zapros, connection);
                         DS = new DataSet();
                         mySqlDataAdapter.Fill(DS);
                         radGridViewFlagCert.DataSource = DS.Tables[0];
                         //  MessageBox.Show("Активирована вкладка " + radPageView2.SelectedPage.Text);
                         break;
                     case "Previous Sea Service":
                         zapros =
                             "SELECT `Vessel`,`Flag`,`Type`,`DWT`,`GRT`,`ENG`,`AUX`,`HP`,`RANK`,`S-on`,`S-off`,`Owners` " +
                             "FROM `previous_ss`" +
                             "WHERE `PID`=" + WorkAnketa;

                         mySqlDataAdapter = new MySqlDataAdapter(zapros, connection);
                         DS = new DataSet();
                         mySqlDataAdapter.Fill(DS);
                         radGridViewPreviousSeaCervice.DataSource = DS.Tables[0];
                         //  MessageBox.Show("Активирована вкладка " + radPageView2.SelectedPage.Text);
                         break;
                     case "COMMENTS":
                         zapros =
                             "SELECT `Comments`,`Salary`,`readiness`,`Date readiness` " +
                             "FROM `database` " +
                             "WHERE `ID`=" + WorkAnketa;
                         mySqlDataAdapter = new MySqlDataAdapter(zapros, connection);
                         DS = new DataSet();
                         mySqlDataAdapter.Fill(DS);

                         radTextBoComment.Text = DS.Tables[0].Rows[0][0].ToString(); //Коммент
                         radTextBox6Zarplata.Text = DS.Tables[0].Rows[0][1].ToString(); //Зарплата
                         var ssdsad = DS.Tables[0].Rows[0][2].ToString();

                         if (ssdsad == "True") //Готов
                         {
                             radCheckBox1Gotov.Checked = true;

                         }
                         else
                         {
                             radCheckBox1Gotov.Checked = false;
                         }

                         string tyme = DS.Tables[0].Rows[0][3].ToString();
                         if (tyme != "")
                         {
                             radDateTimePicker1.Value = Convert.ToDateTime(tyme); //Дата готовности
                         }


                         break;
                     default:
                         break;
                 }
             }
         }
        private void radButton1_Click(object sender, EventArgs e) // Поиск 1я вкладка
        {
            string query = "";
            DataSet DS = null;
            string zapros =
                "SELECT  `id`,`Surname`,`Name`,DATE_FORMAT(`D.O.B.`, '%Y-%c-%e') AS `D.O.B.`,`Position to apply for`,`Certified for`,DATE_FORMAT(`Date Update`, '%Y-%c-%e %k:%i') AS `Date Update`,`Comments`  " +
                " FROM `database` WHERE (";
            switch (radPageView_Search.SelectedPage.Text)
            {
                case "Поиск":
                    query = "SELECT * FROM `database` LIMIT 1"; // получим структуру базы для составления запроса
                    mySqlDataAdapter = new MySqlDataAdapter(query, connection);
                    DS = new DataSet();
                    mySqlDataAdapter.Fill(DS);

                    string text_searhc = radTextBox1_Allsearhc.Text;
                    string[] searchin = text_searhc.Split(new char[] { ' ' }, StringSplitOptions.RemoveEmptyEntries); // разобъем поиск на массив через пробелы
                    int countColumn = DS.Tables[0].Columns.Count;
                    if (searchin.Length == 0) // Если пустое поле поиска то отобразим все обрезав хвост
                    {
                        zapros = zapros.Remove(zapros.Length - 7, 7);
                        zapros = zapros + " LIMIT 100";
                    }
                    for (int i = 0; i < searchin.Length; i++) // количество поисковых слов через пробел
                    {
                        for (int j = 0; j < countColumn; j++) // выгрибаем все колонки и созхдаем запрос
                        {
                            //   if (DS.Tables[0].Columns[j].ColumnName != "Foto" || DS.Tables[0].Columns[j].ColumnName != "D.O.B." || DS.Tables[0].Columns[j].ColumnName != "Valid Date S" || DS.Tables[0].Columns[j].ColumnName != "Valid Date") // если только колонка не фотка
                            //   {
                            zapros = zapros + "`" + DS.Tables[0].Columns[j].ColumnName + "` LIKE '%" + searchin[i] +
                                     "%' OR ";
                            //  }
                        }
                        if (i + 1 < searchin.Length)
                        {
                            zapros = zapros.Remove(zapros.Length - 4, 4);
                            zapros = zapros + ") AND (";
                        }
                        else
                        {
                            zapros = zapros.Remove(zapros.Length - 4, 4);
                            zapros = zapros + ") ORDER BY NULL";
                        }
                    }
                    mySqlDataAdapter = new MySqlDataAdapter(zapros, connection);
                    DS = new DataSet();
                    mySqlDataAdapter.Fill(DS);
                    radGridView2_Searhc.DataSource = DS.Tables[0];
                    radGridView2_Searhc.Columns["id"].Width = 30; // размер 1й колонки
                    radGridView2_Searhc.Columns["id"].TextAlignment = ContentAlignment.MiddleCenter;

                    break;
                case "Поиcк +":
                    // MessageBox.Show("Find2");

                    string Surname = radTextBox2_Surname.Text;
                    string CertifiedFor = radTextBox2_CertifiedFor.Text;
                    string TypeShip = radTextBox2_TypeShip.Text;
                    string ENG = radTextBox_ENG.Text;
                    string Rank = radTextBox2_Rank.Text;
                    string Owners = radTextBox2_Owners.Text;

                    string DOBot = radTextBox2_DOBot.Text;
                    string DOBdo = radTextBox2_DOBdo.Text;

                    string DWTot = radTextBox2_DWTot.Text;
                    string DWTdo = radTextBox2_DWTdo.Text;
                    string Shengen = radCheckBox2_Shengen.IsChecked.ToString();
                    string Visa = radCheckBox2_Visa.IsChecked.ToString();

                    if (Surname == "")
                    {
                        Surname = "<>'' ";
                    } //  Если не заполнено поле - тогда выбираем "все"
                    else
                    {
                        Surname = "= '" + Surname + "' ";
                    } // Если заполнено то ставим = и кавычки 

                    if (CertifiedFor == "")
                    {
                        CertifiedFor = "<>'' ";
                    } //  Если не заполнено поле - тогда выбираем "все"
                    else
                    {
                        CertifiedFor = "= '" + CertifiedFor + "' ";
                    } // Если заполнено то ставим = и кавычки 

                    if (TypeShip == "")
                    {
                        TypeShip = "<>'' ";
                    } //  Если не заполнено поле - тогда выбираем "все"
                    else
                    {
                        TypeShip = "= '" + TypeShip + "' ";
                    } // Если заполнено то ставим = и кавычки 

                    if (ENG == "")
                    {
                        ENG = "<>'' ";
                    } //  Если не заполнено поле - тогда выбираем "все"
                    else
                    {
                        ENG = "= '" + ENG + "' ";
                    } // Если заполнено то ставим = и кавычки 

                    if (Rank == "")
                    {
                        Rank = "<>'' ";
                    } //  Если не заполнено поле - тогда выбираем "все"
                    else
                    {
                        Rank = "= '" + Rank + "' ";
                    } // Если заполнено то ставим = и кавычки 

                    if (Owners == "")
                    {
                        Owners = "<>'' ";
                    } //  Если не заполнено поле - тогда выбираем "все"
                    else
                    {
                        Owners = "= '" + Owners + "' ";
                    } // Если заполнено то ставим = и кавычки 


                    if (DOBot == "")
                    {
                        DOBot = "<>'' ";
                    } //  Если не заполнено поле - тогда выбираем "все"
                    else
                    {
                        DOBot = DateTime.Now.AddYears(-Convert.ToInt32(DOBot)).ToString("yyyy-MM-dd");
                        DOBot = "< '" + DOBot + "' ";
                    } // Если заполнено то ставим = и кавычки             24.08.1950  
                    if (DOBdo == "")
                    {
                        DOBdo = "<>'' ";
                    } //  Если не заполнено поле - тогда выбираем "все"
                    else
                    {
                        DOBdo = DateTime.Now.AddYears(-Convert.ToInt32(DOBdo)).ToString("yyyy-MM-dd");
                        DOBdo = "> '" + DOBdo + "' ";
                    } // Если заполнено то ставим = и кавычки 

                    if (DWTot == "")
                    {
                        DWTot = "<>'' ";
                    } //  Если не заполнено поле - тогда выбираем "все"
                    else
                    {
                        DWTot = "> '" + DWTot + "' ";
                    } // Если заполнено то ставим = и кавычки 
                    if (DWTdo == "")
                    {
                        DWTdo = "<>'' ";
                    } //  Если не заполнено поле - тогда выбираем "все"
                    else
                    {
                        DWTdo = "< '" + DWTdo + "' ";
                    } // Если заполнено то ставим = и кавычки 

                    if (Shengen == "false")
                    {
                        Shengen = "<>'' ";
                    } //  Если не заполнено поле - тогда выбираем "все"
                    else
                    {
                        Shengen = "> '" + DateTime.Now.ToString("yyyy-MM-dd") + "' ";
                    } // Если заполнено то ставим = и кавычки 
                    if (Visa == "false")
                    {
                        Visa = "<>'' ";
                    } //  Если не заполнено поле - тогда выбираем "все"
                    else
                    {
                        Visa = "> '" + DateTime.Now.ToString("yyyy-MM-dd") + "' ";
                    } // Если заполнено то ставим = и кавычки 


                    zapros =
                        "SELECT  `id`,`Surname`,`Name`,DATE_FORMAT(`D.O.B.`, '%Y-%c-%e') AS `D.O.B.`,`Position to apply for`,`Certified for`,DATE_FORMAT(`Date Update`, '%Y-%c-%e %k:%i') AS `Date Update`,`Comments` " +
                        "FROM `database` " +
                        "WHERE  `Surname` " + Surname +
                        "AND `Certified for` " + CertifiedFor +
                        "AND `id` IN (SELECT  DISTINCT  `PID` FROM `previous_ss` " +
                        "WHERE ( `Type` " + TypeShip +
                        "AND `ENG` " + ENG +
                        "AND `Rank` " + Rank +
                        "AND `DWT` " + DWTot +
                        "AND `DWT` " + DWTdo +
                        "AND `D.O.B.` " + DOBot +
                        "AND `D.O.B.` " + DOBdo +
                        "AND `Owners` " + Owners + ")) " +
                        "AND `USA Visa : Data End` " + Visa +
                        "AND `Schengen : Data End` " + Shengen +
                        "ORDER BY NULL";

                    mySqlDataAdapter = new MySqlDataAdapter(zapros, connection);
                    DS = new DataSet();
                    mySqlDataAdapter.Fill(DS);
                    radGridView2_Searhc.DataSource = DS.Tables[0];
                    radGridView2_Searhc.Columns["id"].Width = 30; // размер 1й колонки
                    radGridView2_Searhc.Columns["id"].TextAlignment = ContentAlignment.MiddleCenter;
                    break;
                default:
                    break;
            }

        }
        private void radGridView2_Searhc_ContextMenuOpening(object sender, ContextMenuOpeningEventArgs e) // меню в табличке  поиска
        {


            RadMenuSeparatorItem separator = new RadMenuSeparatorItem();
            e.ContextMenu.Items.Add(separator);

            RadMenuItem menuItem_Edit = new RadMenuItem("&Edit");
            e.ContextMenu.Items.Add(menuItem_Edit);
            menuItem_Edit.Click += menuItem_Find_Edit_Click;

            RadMenuItem menuItem_AddtoWork = new RadMenuItem("&Add to Work");
            e.ContextMenu.Items.Add(menuItem_AddtoWork);
            menuItem_AddtoWork.Click += menuItem_Find_AddtoWork_Click;

            RadMenuItem menuItem_View = new RadMenuItem("&View");
            e.ContextMenu.Items.Add(menuItem_View);
            menuItem_View.Click += menuItem_Find_View_Click;


            RadMenuItem menuItem_DEL = new RadMenuItem("&DELETE Application");
            e.ContextMenu.Items.Add(menuItem_DEL);
            menuItem_DEL.Click += menuItem_Find_DEL_Click;
        }
        private void menuItem_Find_Edit_Click(object sender, EventArgs e)
        {
            WorkAnketa = (int)radGridView2_Searhc.CurrentRow.Cells[0].Value;
            tabControl1.SelectedIndex = 1; // активируем 2ю вкладку
            radPageView2.SelectedPage = radPageViewPage6_Comments; // активируем 5ю вкладку
            //  radPageView2.SelectedPageChanged += new EventHandler(radPageView2_SelectedPageChanged);
            radPageView2.SelectedPage = radPageViewPage1_PersonData; // активируем 1ю вкладку
        }
        private void menuItem_Find_AddtoWork_Click(object sender, EventArgs e) // Меню добавление анкеты в обработку
        {
            //  WorkAnketa = (int)radGridView2_Searhc.CurrentRow.Cells[0].Value;
            MySqlTransaction tr = connection.BeginTransaction();
            MySqlCommand cmd = new MySqlCommand();
            cmd.Connection = connection;
            cmd.Transaction = tr;
            cmd.CommandText = "UPDATE `database` SET `Worked`='" + Settings.Default.User_MPS + "' WHERE id=" + (int)radGridView2_Searhc.CurrentRow.Cells[0].Value;
            cmd.ExecuteNonQuery();
            tr.Commit();
            MessageBox.Show("Анкета добавлена в обработку");

        }
        private void menuItem_Find_View_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Эта функция еще не реализована :(");
        }
        private void menuItem_Find_DEL_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Эта функция еще не реализована :(");
        }
        /// ###############################   ЗАКЛАДКА SEARCH №1   КОНЕЦ ###############################
        // ###############################   ЗАКЛАДКА  №2 ADD-EDIT   НАЧАЛО ###############################v
        private void radGridView2PersonData_EditorRequired(object sender, EditorRequiredEventArgs e)
        // Добавление календарика в ячейку в  таблице
        {
           if(  e.EditorType.FullName == "Telerik.WinControls.UI.RadTextBoxEditor")
           {
               string a = radGridView2PersonData.CurrentRow.Cells[0].Value.ToString();

               if (a == "D.O.B." || a == "Valid Date" || a == "Valid Date S")
               {
                   e.EditorType = typeof(MyDateTimeEditor);
                   return;
               }
           }
             // GridViewEditManager sds = sender.GridViewElement.CerrentCel.Value
           if (e.EditorType.FullName == "Telerik.WinControls.UI.RadDateTimeEditor")
           {
               e.EditorType = typeof(MyDateTimeEditor);
               // e.EditorType = typeof(RadDateTimeEditor);
               return;
            }
           

        }

        public class MyDateTimeEditor : RadDateTimeEditor // Отображение даты в  таблице
        {
            public override object Value
            {
                get
                {
                    GridCellElement cellElement = this.OwnerElement as GridCellElement;
                    RadDateTimePickerElement element = this.EditorElement as RadDateTimePickerElement;
                    if (element.Value != null && cellElement.ColumnInfo.Name == "row") // В нужном столбце
                    {
                        DateTime value = (DateTime)element.Value;
                        //   var sds = value.
                        return value.Date.ToString("yyyy-MM-dd"); // в нужном формате отобразить
                    }
                    var sds = cellElement.GridViewElement.CurrentColumn.ToString();
                    
                    if (element.Value != null && sds == cellElement.ColumnInfo.Name + " (GridViewDateTimeColumn)")
                     {
                      DateTime value = (DateTime)element.Value;
                       return value.Date.ToString("yyyy-MM-dd"); // в нужном формате отобразить
                    }
                   return base.Value;
                }
                set { base.Value = value; }
            }
        }
        public void Createstruct()
        {
            //-----------------------
            //структурат балици PersonalData в базе DataSet_PersonData
            DataTable myDataTable = DataSet_PersonData.Tables.Add("PersonalData");
            myDataTable.Columns.Add("id", typeof(string));
            myDataTable.Columns.Add("row", typeof(string));
            myDataTable.Columns["id"].ReadOnly = true;
            //table.Rows.Add(25, "Indocin", "David", DateTime.Now); добавление данных
            myDataTable.Rows.Add(new object[] { "Position to apply for" });
            myDataTable.Rows.Add(new object[] { "Certified for" });
            myDataTable.Rows.Add(new object[] { "Name" });
            myDataTable.Rows.Add(new object[] { "Surname" });
            myDataTable.Rows.Add(new object[] { "Father Name" });
            myDataTable.Rows.Add(new object[] { "Mather Name" });
            myDataTable.Rows.Add("D.O.B.");
            myDataTable.Rows.Add(new object[] { "P.O.B." });
            myDataTable.Rows.Add(new object[] { "Nationality" });
            myDataTable.Rows.Add(new object[] { "Hieght" });
            myDataTable.Rows.Add(new object[] { "Weight" });
            myDataTable.Rows.Add(new object[] { "Shoes size" });
            myDataTable.Rows.Add(new object[] { "Parka size" });
            myDataTable.Rows.Add(new object[] { "Address" });
            myDataTable.Rows.Add(new object[] { "Mobile No." });
            myDataTable.Rows.Add(new object[] { "E-mail" });
            myDataTable.Rows.Add(new object[] { "Skype" });
            myDataTable.Rows.Add(new object[] { "Marital status" });
            myDataTable.Rows.Add(new object[] { "Children" });
            myDataTable.Rows.Add(new object[] { "Seamans Pass No." });
            myDataTable.Rows.Add(new object[] { "Place of Issue S" });
            myDataTable.Rows.Add(new object[] { "ISS S" });
            myDataTable.Rows.Add(new object[] { "Valid Date S" });
            myDataTable.Rows.Add(new object[] { "Civil Pass No." });
            myDataTable.Rows.Add(new object[] { "Place of Issue" });
            myDataTable.Rows.Add(new object[] { "ISS" });
            myDataTable.Rows.Add(new object[] { "Valid Date" });
            myDataTable.Rows.Add(new object[] { "Graduated From" });
            myDataTable.Rows.Add(new object[] { "English Ability" });
            myDataTable.Rows.Add(new object[] { "Nearest Int. Airport" });
            radGridView2PersonData.DataSource = DataSet_PersonData.Tables["PersonalData"];
            //     Отобразить даннные таблици PersonalData в фирме таблици на винформе 
            //     radGridView2PersonData.Columns["id"].MinWidth = 15; // размер 1й колонки
            radGridView2PersonData.Columns["id"].Width = 10; // размер 1й колонки
            radGridView2PersonData.Columns["row"].Width = 50; // размер 1й колонки
            radGridView2PersonData.Columns["id"].TextAlignment = ContentAlignment.MiddleRight;
            radGridView2PersonData.EditorRequired += radGridView2PersonData_EditorRequired;
            // Изменение формата данных в таблице Едитором
            //структурат балици PersonalData в базе NextOfKin
            //-----------------------
            DataTable myDataTableNextOfKin = DataSet_PersonData.Tables.Add("NextOfKin");
            // myDataTableNextOfKin.Columns.Add("ID", typeof(string));
            myDataTableNextOfKin.Columns.Add("Name Surname", typeof(string));
            myDataTableNextOfKin.Columns.Add("Relation", typeof(string));
            myDataTableNextOfKin.Columns.Add("Occupantion", typeof(string));
            myDataTableNextOfKin.Columns.Add("Date of Birth", typeof(DateTime));
            myDataTableNextOfKin.Columns.Add("Address", typeof(string));
            myDataTableNextOfKin.Columns.Add("Telephone", typeof(string));
            radGridView2PersonData2NextOfKin.DataSource = DataSet_PersonData.Tables["NextOfKin"];
            radGridView2PersonData2NextOfKin.EditorRequired += radGridView2PersonData_EditorRequired;
            // Отобразить даннные таблици PersonalData в фирме таблици на винформе 
            //----------------------
            DataTable myDataTableNationalCertification = DataSet_PersonData.Tables.Add("NationalCertification");
            myDataTableNationalCertification.Columns.Add("Certificate", typeof(string));
            myDataTableNationalCertification.Columns.Add("Number", typeof(string));
            myDataTableNationalCertification.Columns.Add("Issuing", typeof(DateTime));
            myDataTableNationalCertification.Columns.Add("Validation Date", typeof(DateTime));
            myDataTableNationalCertification.Columns.Add("Issuing Place", typeof(string));
            radGridViewNationalCertification.DataSource = DataSet_PersonData.Tables["NationalCertification"];
            radGridViewNationalCertification.EditorRequired += radGridView2PersonData_EditorRequired;
            // Отобразить даннные таблици PersonalData в фирме таблици на винформе 
            //----------------------
            DataTable myDataTableVisa = DataSet_PersonData.Tables.Add("Visa");
            myDataTableVisa.Columns.Add("Visa", typeof(string));
            myDataTableVisa.Columns.Add("Number", typeof(string));
            myDataTableVisa.Columns.Add("Data iss", typeof(DateTime));
            myDataTableVisa.Columns.Add("Data End", typeof(DateTime));
          
            myDataTableVisa.Rows.Add(new object[] { "USA Visa :" });
            myDataTableVisa.Rows.Add(new object[] { "Schengen :" });
            myDataTableVisa.Rows.Add(new object[] { "MCV :" });
            myDataTableVisa.Columns["Visa"].ReadOnly = true;
            radGridViewVisa.DataSource = DataSet_PersonData.Tables["Visa"];
             radGridViewVisa.Columns["Data iss"].FormatString = "{0:yyyy-MM-dd}";
             radGridViewVisa.Columns["Data End"].FormatString = "{0:yyyy-MM-dd}";
                // Отобразить даннные таблици PersonalData в фирме таблици на винформе 
            radGridViewVisa.Columns["Visa"].Width = 50; // размер 1й колонки
            radGridViewVisa.Columns["Visa"].TextAlignment = ContentAlignment.MiddleRight;
          //  radGridViewVisa.EditorRequired += radGridView2PersonData_EditorRequired;
            //----------------------
            DataTable myDataTableVaccination = DataSet_PersonData.Tables.Add("Vaccination");
            myDataTableVaccination.Columns.Add("Vaccination", typeof(string));
            myDataTableVaccination.Columns.Add("Data iss", typeof(DateTime));
            myDataTableVaccination.Columns.Add("Data End", typeof(DateTime));
            myDataTableVaccination.Columns["Vaccination"].ReadOnly = true;
            myDataTableVaccination.Rows.Add("Yellow Fever :");
            myDataTableVaccination.Rows.Add( "Cholera :" );
            myDataTableVaccination.Rows.Add( "Diphtheria :" );
            radGridViewVaccination.DataSource = DataSet_PersonData.Tables["Vaccination"];
            radGridViewVaccination.Columns["Data iss"].FormatString = "{0:yyyy-MM-dd}";
            radGridViewVaccination.Columns["Data End"].FormatString = "{0:yyyy-MM-dd}";
            // Отобразить даннные таблици PersonalData в фирме таблици на винформе 
            radGridViewVaccination.Columns["Vaccination"].Width = 50; // размер 1й колонки
            radGridViewVaccination.Columns["Vaccination"].TextAlignment = ContentAlignment.MiddleRight;
            //----------------------
            DataTable myDataTableFlagCert = DataSet_PersonData.Tables.Add("FlagCert");
            myDataTableFlagCert.Columns.Add("Flag", typeof(string));
            myDataTableFlagCert.Columns.Add("Type", typeof(string));
            myDataTableFlagCert.Columns.Add("Number", typeof(string));
            myDataTableFlagCert.Columns.Add("Rank", typeof(string));
            myDataTableFlagCert.Columns.Add("Issued", typeof(DateTime));
            myDataTableFlagCert.Columns.Add("Valid", typeof(DateTime));
            myDataTableFlagCert.Columns.Add("National Number", typeof(string));

            
            radGridViewFlagCert.DataSource = DataSet_PersonData.Tables["FlagCert"];
            radGridViewFlagCert.EditorRequired += radGridView2PersonData_EditorRequired;
            // Отобразить даннные таблици PersonalData в фирме таблици на винформе 
            //----------------------
            DataTable myDataTablePreviousSeaCervice = DataSet_PersonData.Tables.Add("PreviousSeaCervice");
            myDataTablePreviousSeaCervice.Columns.Add("Vessel", typeof(string));
            myDataTablePreviousSeaCervice.Columns.Add("Year/Shipyard", typeof(string));
            myDataTablePreviousSeaCervice.Columns.Add("Flag", typeof(string));
            myDataTablePreviousSeaCervice.Columns.Add("Type", typeof(string));
            myDataTablePreviousSeaCervice.Columns.Add("DWT", typeof(string));
            myDataTablePreviousSeaCervice.Columns.Add("GRT", typeof(string));
            myDataTablePreviousSeaCervice.Columns.Add("ENG", typeof(string));
            myDataTablePreviousSeaCervice.Columns.Add("AUX", typeof(string));
            myDataTablePreviousSeaCervice.Columns.Add("HP", typeof(string));
            myDataTablePreviousSeaCervice.Columns.Add("Rank", typeof(string));
            myDataTablePreviousSeaCervice.Columns.Add("S/ON", typeof(string));
            myDataTablePreviousSeaCervice.Columns.Add("S/OFF", typeof(string));
            myDataTablePreviousSeaCervice.Columns.Add("Owners", typeof(string));


            radGridViewPreviousSeaCervice.DataSource = DataSet_PersonData.Tables["PreviousSeaCervice"];

            //----------------------

        } // структура пустых таблиц
        public void radButton2_Click(object sender, EventArgs e)
        {
            DataSet_PersonData = new DataSet();
            Createstruct();
            WorkAnketa = 0;
            Label_Salary.Text = "Salary: ";
            Label_DateReadiness.Text = "Readness: ";
            label_DateUpdate.Text = "Updated: ";
        }
        private void radGridView2PersonData_CellEndEdit(object sender, GridViewCellEventArgs e) //ИВЕНТ 2-1 Изменение данных ADD-edit PERSONAL
        {
            string firstRow = radGridView2PersonData.Rows[0].Cells[1].Value.ToString(); // содержимое 1го поля
            if (firstRow == "") // если 1е поле пустое
            {
                MessageBox.Show("Для добавления новой записи в базу - заполните первое поле, а именно \r" +
                                radGridView2PersonData.Rows[0].Cells[0].Value.ToString());
                radGridView2PersonData.CurrentRow.Cells["row"].Value = "";
            }
            else // Первая строка заполнена но не факт что мы не изменяем данные а добавляем новые
            {

                // string SecondRow = radGridView2PersonData.Rows[1].Cells[1].Value.ToString(); // содержимое 2го поля
                if (radGridView2PersonData.CurrentRow.Index == 0 && WorkAnketa == 0) // Если текущее поле 1е
                {
                    // Добавляем новую запись в таблицу ДБ
                    MySqlTransaction tr = connection.BeginTransaction();
                    MySqlCommand cmd = new MySqlCommand();
                    cmd.Connection = connection;
                    cmd.Transaction = tr;
                    cmd.CommandText = "INSERT IGNORE INTO `database` SET `Position to apply for`='" + firstRow + "'";
                    cmd.ExecuteNonQuery();
                    tr.Commit();
                    string query = " SELECT MAX(id) FROM `database` WHERE `Position to apply for`='" + firstRow + "'";
                    // найдем наш ИД апликашки
                    MySqlCommand cmd2 = new MySqlCommand(query, connection);
                    object result = cmd2.ExecuteScalar();
                    WorkAnketa = Convert.ToInt32(result);
                    MessageBox.Show("наш номер в базе: " + WorkAnketa);
                    // узнаем селектом текущий последний номер в базе и уже сним работаем.
                    //  WorkAnketa
                }
                else // так как у нас заполнено и 1е и 2е поле то мы тупо обновляем данные по текущей позиции
                {
                    string indexRow = radGridView2PersonData.CurrentRow.Cells["id"].Value.ToString();
                    string data = radGridView2PersonData.CurrentRow.Cells["row"].Value.ToString();
                    if (data != "" && indexRow != "")
                    {
                        MySqlTransaction tr = connection.BeginTransaction();
                        MySqlCommand cmd = new MySqlCommand();
                        cmd.Connection = connection;
                        cmd.Transaction = tr;
                        cmd.CommandText = "UPDATE `database` SET `" + indexRow + "`='" + data + "',`Date Update`='" +
                                          DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "'  WHERE `id`='" + WorkAnketa +
                                          "'";
                        cmd.ExecuteNonQuery();
                        tr.Commit();
                        // connection.Close();
                        //        ((DataTable)radGridView2PersonData.DataSource).AcceptChanges();
                    }
                }
            }
        }

        private void radGridView2PersonData2NextOfKin_CellEndEdit(object sender, GridViewCellEventArgs e) //ИВЕНТ 2-2  Изменение значения ячейки
        {
            if (e.RowIndex != -1)
            {
                if (WorkAnketa != 0) // Если мы работаем с какой то анкетой
                {
                    //  MessageBox.Show("Меняем значение ячейки"); // текущая колонка
                    string indexColumn = radGridView2PersonData2NextOfKin.CurrentColumn.HeaderText;
                    // string index = radGridView2PersonData2NextOfKin.CurrentRow.Cells["ID"].Value.ToString();
                    int index = e.RowIndex + 1;

                    string data = radGridView2PersonData2NextOfKin.CurrentCell.Value.ToString();
                    MySqlTransaction tr = connection.BeginTransaction();
                    MySqlCommand cmd = new MySqlCommand();
                    cmd.Connection = connection;
                    cmd.Transaction = tr;
                    cmd.CommandText = "UPDATE `nextofkin` SET `" + indexColumn + "`='" + data + "'  WHERE `PID`='" +
                                      WorkAnketa + "' AND `ID` = '" + index + "'";
                    cmd.ExecuteNonQuery();
                    tr.Commit();
                    // connection.Close();
                    ((DataTable)radGridView2PersonData2NextOfKin.DataSource).AcceptChanges();

                }
                else
                {
                    MessageBox.Show("Дети неизвестно кого");
                }

            }
        }

        private void radGridView2PersonData2NextOfKin_UserAddedRow(object sender, GridViewRowEventArgs e)
        {
            if (WorkAnketa != 0) // Если мы работаем с какой то анкетой
            {
                // MessageBox.Show("Добавляем новую строчку в базу");
                for (int i = 0; i < e.Rows[0].Cells.Count; i++) // проверка на заполненные ячейки таблицы
                {
                    var ss = e.Rows[0].Cells[i].Value.ToString().Length;
                    if (ss == 0) // проверка на нульзначение заполнения данных в резиновой таблице
                    {
                        MessageBox.Show("Не заполнены какие то поля");
                        radGridView2PersonData2NextOfKin.Rows[radGridView2PersonData2NextOfKin.RowCount - 1].Delete();
                        // удаление неверной строки, где не заполнено все.
                        return;
                    }
                }
                var COUNT_ROW = radGridView2PersonData2NextOfKin.RowCount;
                MySqlTransaction tr = connection.BeginTransaction();
                MySqlCommand cmd = new MySqlCommand();
                cmd.Connection = connection;
                cmd.Transaction = tr;
                cmd.CommandText = "INSERT INTO `nextofkin` " +
                                  "(`ID`,`PID`,`Name Surname`,`Relation`,`Occupantion`,`Date of Birth`,`Address`,`Telephone`) " +
                                  "VALUES ('" + COUNT_ROW + "','" +
                                  WorkAnketa + "','" +
                                  e.Rows[0].Cells[0].Value.ToString() + "','" +
                                  e.Rows[0].Cells[1].Value.ToString() + "','" +
                                  e.Rows[0].Cells[2].Value.ToString() + "','" +
                                  e.Rows[0].Cells[3].Value.ToString() + "','" +
                                  e.Rows[0].Cells[4].Value.ToString() + "','" +
                                  e.Rows[0].Cells[5].Value.ToString() + "')";
                cmd.ExecuteNonQuery();
                tr.Commit();
                // connection.Close();
                ((DataTable)radGridView2PersonData2NextOfKin.DataSource).AcceptChanges();
                //   MessageBox.Show("Новая строчка добавлена");
            }
            else
            {
                MessageBox.Show("Не задано с какой анкетой работать");
                radGridView2PersonData2NextOfKin.Rows[radGridView2PersonData2NextOfKin.RowCount - 1].Delete();
                // удаление неверной строки, где не заполнено все.
            }
        } //ИВЕНТ 2-2  Добавление новой строки

        private void radGridViewNationalCertification_CellEndEdit(object sender, GridViewCellEventArgs e)
        //ИВЕНТ 2-3-1  Изменение строки
        {
            if (e.RowIndex != -1)
            {
                if (WorkAnketa != 0) // Если мы работаем с какой то анкетой
                {
                    //  MessageBox.Show("Меняем значение ячейки"); // текущая колонка
                    string indexColumn = radGridViewNationalCertification.CurrentColumn.HeaderText;
                    // string index = radGridView2PersonData2NextOfKin.CurrentRow.Cells["ID"].Value.ToString();
                    int index = e.RowIndex + 1;

                    string data = radGridViewNationalCertification.CurrentCell.Value.ToString();
                    MySqlTransaction tr = connection.BeginTransaction();
                    MySqlCommand cmd = new MySqlCommand();
                    cmd.Connection = connection;
                    cmd.Transaction = tr;
                    cmd.CommandText = "UPDATE `documents` SET `" + indexColumn + "`='" + data + "'  WHERE `PID`='" +
                                      WorkAnketa + "' AND `ID` = '" + index + "'";
                    cmd.ExecuteNonQuery();
                    tr.Commit();
                    // connection.Close();
                    ((DataTable)radGridViewNationalCertification.DataSource).AcceptChanges();

                }
                else
                {
                    MessageBox.Show("Дети неизвестно кого");
                }

            }
        }

        private void radGridViewNationalCertification_UserAddedRow(object sender, GridViewRowEventArgs e)
        //ИВЕНТ 2-3-1  Добавление новой строки
        {
            if (WorkAnketa != 0) // Если мы работаем с какой то анкетой
            {
                // MessageBox.Show("Добавляем новую строчку в базу");
                for (int i = 0; i < e.Rows[0].Cells.Count; i++) // проверка на заполненные ячейки таблицы
                {
                    var ss = e.Rows[0].Cells[i].Value.ToString().Length;
                    if (ss == 0) // проверка на нульзначение заполнения данных в резиновой таблице
                    {
                        MessageBox.Show("Не заполнены какие то поля");
                        radGridViewNationalCertification.Rows[radGridViewNationalCertification.RowCount - 1].Delete();
                        // удаление неверной строки, где не заполнено все.
                        return;
                    }
                }
                var COUNT_ROW = radGridViewNationalCertification.RowCount;
                MySqlTransaction tr = connection.BeginTransaction();
                MySqlCommand cmd = new MySqlCommand();
                cmd.Connection = connection;
                cmd.Transaction = tr;
                cmd.CommandText = "INSERT INTO `documents` " +
                                  "(`ID`,`PID`,`Certificate`,`Number`,`Issuing`,`Validation Date`,`Issuing Place`) " +
                                  "VALUES ('" + COUNT_ROW + "','" +
                                  WorkAnketa + "','" +
                                  e.Rows[0].Cells[0].Value.ToString() + "','" +
                                  e.Rows[0].Cells[1].Value.ToString() + "','" +
                                  e.Rows[0].Cells[2].Value.ToString() + "','" +
                                  e.Rows[0].Cells[3].Value.ToString() + "','" +
                                  e.Rows[0].Cells[4].Value.ToString() + "')";
                cmd.ExecuteNonQuery();
                tr.Commit();
                // connection.Close();
                //   ((DataTable)radGridViewNationalCertification.DataSource).AcceptChanges();
                //   MessageBox.Show("Новая строчка добавлена");
            }
            else
            {
                MessageBox.Show("Не задано с какой анкетой работать");
                radGridViewNationalCertification.Rows[radGridViewNationalCertification.RowCount - 1].Delete();
                // удаление неверной строки, где не заполнено все.
            }
        }

        private void radGridViewVisa_CellEndEdit(object sender, GridViewCellEventArgs e)
        //ИВЕНТ ВИЗА 2-3-2 100% Изменение данных
        {
            if (WorkAnketa != 0) // Если мы работаем с какой то анкетой
            {
            // Меняем текущее значение втаблице основываясь на на формуле "1я ячейка изменяемой строки + пробел + название колонки" - это все в базе
            string colonka = radGridViewVisa.CurrentColumn.Name; // название колонки текущей позиции
            string stroka = radGridViewVisa.Rows[radGridViewVisa.CurrentRow.Index].Cells[0].Value.ToString();
            
            string CurrentRow = radGridViewVisa.CurrentRow.Cells[colonka].Value.ToString();
            // текущие данные которые надо поменять
            DateTime date;
            if (DateTime.TryParse(CurrentRow, out date)) // выгрибаем дату
                {
                    CurrentRow = date.ToString("yyyy-MM-dd");
                }
            // 1я строка измененной колонки
            MySqlTransaction tr = connection.BeginTransaction();
            MySqlCommand cmd = new MySqlCommand();
            cmd.Connection = connection;
            cmd.Transaction = tr;
            cmd.CommandText = "UPDATE `database` SET `" + stroka + " " + colonka + "`='" + CurrentRow +
                              "'  WHERE `id`='" + WorkAnketa + "'";
            cmd.ExecuteNonQuery();
            tr.Commit();
            }
               else
               {
                   MessageBox.Show("Не задано с какой анкетой работать");
                   radGridViewNationalCertification.Rows[radGridViewNationalCertification.RowCount - 1].Delete();
                   // удаление неверной строки, где не заполнено все.
               }
        }

        private void radGridViewVaccination_CellEndEdit(object sender, GridViewCellEventArgs e) //ИВЕНТ Вакцины 2-3-3  Изменение данных
        {
            if (WorkAnketa != 0) // Если мы работаем с какой то анкетой
            {
            // Меняем текущее значение втаблице основываясь на на формуле "1я ячейка изменяемой строки + пробел + название колонки" - это все в базе
            string colonka = radGridViewVaccination.CurrentColumn.Name; // название колонки текущей позиции
            string CurrentRow = radGridViewVaccination.CurrentRow.Cells[colonka].Value.ToString();
            // текущие данные которые надо поменять
            string stroka = radGridViewVaccination.Rows[radGridViewVaccination.CurrentRow.Index].Cells[0].Value.ToString();
            // 1я строка измененной колонки

            DateTime date;
            if (DateTime.TryParse(CurrentRow, out date)) // выгрибаем дату
            {
                CurrentRow = date.ToString("yyyy-MM-dd");
            }

            MySqlTransaction tr = connection.BeginTransaction();
            MySqlCommand cmd = new MySqlCommand();
            cmd.Connection = connection;
            cmd.Transaction = tr;
            cmd.CommandText = "UPDATE `database` SET `" + stroka + " " + colonka + "`='" + CurrentRow +
                              "'  WHERE `id`='" + WorkAnketa + "'";
            cmd.ExecuteNonQuery();
            tr.Commit();
             }
            else
            {
                MessageBox.Show("Не задано с какой анкетой работать");
                radGridViewNationalCertification.Rows[radGridViewNationalCertification.RowCount - 1].Delete();
                // удаление неверной строки, где не заполнено все.
            }
        }

        private void radGridViewFlagCert_UserAddedRow(object sender, GridViewRowEventArgs e)
        //ИВЕНТ Флаги добавление данных
        {
            if (WorkAnketa != 0) // Если мы работаем с какой то анкетой
            {
                // MessageBox.Show("Добавляем новую строчку в базу");
                for (int i = 0; i < e.Rows[0].Cells.Count; i++) // проверка на заполненные ячейки таблицы
                {
                    var ss = e.Rows[0].Cells[i].Value.ToString().Length;
                    if (ss == 0) // проверка на нульзначение заполнения данных в резиновой таблице
                    {
                        MessageBox.Show("Не заполнены какие то поля");
                        radGridViewFlagCert.Rows[radGridViewFlagCert.RowCount - 1].Delete();
                        // удаление неверной строки, где не заполнено все.
                        return;
                    }
                }
                var COUNT_ROW = radGridViewFlagCert.RowCount;
                MySqlTransaction tr = connection.BeginTransaction();
                MySqlCommand cmd = new MySqlCommand();
                cmd.Connection = connection;
                cmd.Transaction = tr;
                cmd.CommandText = "INSERT INTO `flagcert` " +
                                  "(`ID`,`PID`,`Flag`,`Type`,`Number`,`Rank`,`Issued`,`Valid`,`National Number`) " +
                                  "VALUES ('" + COUNT_ROW + "','" +
                                  WorkAnketa + "','" +
                                  e.Rows[0].Cells[0].Value.ToString() + "','" +
                                  e.Rows[0].Cells[1].Value.ToString() + "','" +
                                  e.Rows[0].Cells[2].Value.ToString() + "','" +
                                  e.Rows[0].Cells[3].Value.ToString() + "','" +
                                  e.Rows[0].Cells[4].Value.ToString() + "','" +
                                  e.Rows[0].Cells[5].Value.ToString() + "','" +
                                  e.Rows[0].Cells[6].Value.ToString() + "')";
                cmd.ExecuteNonQuery();
                tr.Commit();
                // connection.Close();
                ((DataTable)radGridViewFlagCert.DataSource).AcceptChanges();
                //   MessageBox.Show("Новая строчка добавлена");
            }
            else
            {
                MessageBox.Show("Не задано с какой анкетой работать");
                radGridViewFlagCert.Rows[radGridViewFlagCert.RowCount - 1].Delete();
                // удаление неверной строки, где не заполнено все.

            }
        }
        private void radGridViewFlagCert_CellEndEdit(object sender, GridViewCellEventArgs e)
        //ИВЕНТ Флаги Изменение данных
        {
            if (e.RowIndex != -1)
            {
                if (WorkAnketa != 0) // Если мы работаем с какой то анкетой
                {
                    //  MessageBox.Show("Меняем значение ячейки"); // текущая колонка
                    string indexColumn = radGridViewFlagCert.CurrentColumn.HeaderText;
                    // string index = radGridView2PersonData2NextOfKin.CurrentRow.Cells["ID"].Value.ToString();
                    int index = e.RowIndex + 1;

                    string data = radGridViewFlagCert.CurrentCell.Value.ToString();
                    MySqlTransaction tr = connection.BeginTransaction();
                    MySqlCommand cmd = new MySqlCommand();
                    cmd.Connection = connection;
                    cmd.Transaction = tr;
                    cmd.CommandText = "UPDATE `flagcert` SET `" + indexColumn + "`='" + data + "'  WHERE `PID`='" +
                                      WorkAnketa + "' AND `ID` = '" + index + "'";
                    cmd.ExecuteNonQuery();
                    tr.Commit();
                    // connection.Close();
                    ((DataTable)radGridViewFlagCert.DataSource).AcceptChanges();

                }
                else
                {
                    MessageBox.Show("Не задано с какой анкетой работать");
                   
                }

            }
        }
        private void radGridViewPreviousSeaCervice_UserAddedRow(object sender, GridViewRowEventArgs e)
        //ИВЕНТ ПСС добавление данных
        {

            if (WorkAnketa != 0) // Если мы работаем с какой то анкетой
            {
                // MessageBox.Show("Добавляем новую строчку в базу");
                for (int i = 0; i < e.Rows[0].Cells.Count; i++) // проверка на заполненные ячейки таблицы
                {
                    var ss = e.Rows[0].Cells[i].Value.ToString().Length;
                    if (ss == 0) // проверка на нульзначение заполнения данных в резиновой таблице
                    {
                        MessageBox.Show("Не заполнены какие то поля");
                        radGridViewPreviousSeaCervice.Rows[radGridViewPreviousSeaCervice.RowCount - 1].Delete();
                        // удаление неверной строки, где не заполнено все.
                        return;
                    }
                }
                var COUNT_ROW = radGridViewPreviousSeaCervice.RowCount;
                MySqlTransaction tr = connection.BeginTransaction();
                MySqlCommand cmd = new MySqlCommand();
                cmd.Connection = connection;
                cmd.Transaction = tr;
                cmd.CommandText = "INSERT INTO `previous_ss` " +
                                  "(`ID`,`PID`,`Vessel`,`Flag`,`Type`,`DWT`,`GRT`,`ENG`,`AUX`,`HP`,`RANK`,`S-on`,`S-off`,`Owners`) " +
                                  "VALUES ('" + COUNT_ROW + "','" +
                                  WorkAnketa + "','" +
                                  e.Rows[0].Cells[0].Value.ToString() + "','" +
                                  e.Rows[0].Cells[1].Value.ToString() + "','" +
                                  e.Rows[0].Cells[2].Value.ToString() + "','" +
                                  e.Rows[0].Cells[3].Value.ToString() + "','" +
                                  e.Rows[0].Cells[4].Value.ToString() + "','" +
                                  e.Rows[0].Cells[5].Value.ToString() + "','" +
                                  e.Rows[0].Cells[6].Value.ToString() + "','" +
                                  e.Rows[0].Cells[7].Value.ToString() + "','" +
                                  e.Rows[0].Cells[8].Value.ToString() + "','" +
                                  e.Rows[0].Cells[9].Value.ToString() + "','" +
                                  e.Rows[0].Cells[10].Value.ToString() + "','" +
                                  e.Rows[0].Cells[11].Value.ToString() + "')";
                cmd.ExecuteNonQuery();
                tr.Commit();
                // connection.Close();
                ((DataTable)radGridViewPreviousSeaCervice.DataSource).AcceptChanges();
                //   MessageBox.Show("Новая строчка добавлена");
            }
            else
            {
                MessageBox.Show("Не задано с какой анкетой работать");
                radGridViewPreviousSeaCervice.Rows[radGridViewPreviousSeaCervice.RowCount - 1].Delete();
                // удаление неверной строки, где не заполнено все.

            }
        }
        private void radGridViewPreviousSeaCervice_CellEndEdit(object sender, GridViewCellEventArgs e)
        //ИВЕНТ ПСС Изменение данных
        {
            if (e.RowIndex != -1)
            {
                if (WorkAnketa != 0) // Если мы работаем с какой то анкетой
                {
                    //  MessageBox.Show("Меняем значение ячейки"); // текущая колонка
                    string indexColumn = radGridViewPreviousSeaCervice.CurrentColumn.HeaderText;
                    // string index = radGridView2PersonData2NextOfKin.CurrentRow.Cells["ID"].Value.ToString();
                    int index = e.RowIndex + 1;
                    string data = radGridViewPreviousSeaCervice.CurrentCell.Value.ToString();
                    MySqlTransaction tr = connection.BeginTransaction();
                    MySqlCommand cmd = new MySqlCommand();
                    cmd.Connection = connection;
                    cmd.Transaction = tr;
                    cmd.CommandText = "UPDATE `previous_ss` SET `" + indexColumn + "`='" + data + "'  WHERE `PID`='" +
                                      WorkAnketa + "' AND `ID` = '" + index + "'";
                    cmd.ExecuteNonQuery();
                    tr.Commit();
                    // connection.Close();
                    ((DataTable)radGridViewPreviousSeaCervice.DataSource).AcceptChanges();
                }
                else
                {
                    MessageBox.Show("Флаг не понятно кого");
                }

            }
        }
        private void pictureBox1_Click(object sender, EventArgs e) // Ивент обновление фотки 2 клика по ней
        {
            // v sql

            Bitmap image; //Bitmap для открываемого изображения
            OpenFileDialog open_dialog = new OpenFileDialog(); //создание диалогового окна для выбора файла
            open_dialog.Filter =
                "Image Files(*.BMP;*.JPG;*.GIF;*.PNG;.*.jpeg)|*.BMP;*.JPG;*.GIF;*.PNG;*.jpeg|All files (*.*)|*.*";
            //формат загружаемого файла
            if (open_dialog.ShowDialog() == DialogResult.OK) //если в окне была нажата кнопка "ОК"
            {
                try
                {
                    image = new Bitmap(open_dialog.FileName);
                    //FileInfo для получения размера файла
                    FileInfo fInfo = new FileInfo(open_dialog.FileName);
                    long numBytes = fInfo.Length;
                    //Открываем поток FileStream для чтения файла
                    FileStream fStream = new FileStream(open_dialog.FileName, FileMode.Open, FileAccess.Read);
                    //Используем BinaryReader и читаем данные в буфер byte[]
                    BinaryReader br = new BinaryReader(fStream);
                    byte[] data = br.ReadBytes((int)numBytes);
                    fStream.Close();
                    MySqlTransaction tr = connection.BeginTransaction();
                    MySqlCommand cmd = new MySqlCommand();
                    cmd.Connection = connection;
                    cmd.Transaction = tr;
                    cmd.CommandText = "UPDATE `database` SET `Foto`=@image  WHERE `id`='" + WorkAnketa + "'";
                    cmd.Parameters.Add("@image", MySqlDbType.Blob).Value = data;
                    cmd.ExecuteNonQuery();
                    tr.Commit();

                    //    this.pictureBox1.Size = image.Size;

                    pictureBox1.Image = image;
                    pictureBox1.Invalidate();
                }
                catch
                {
                    DialogResult rezult = MessageBox.Show("Невозможно открыть выбранный файл",
                        "Ошибка", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }

        }
        private void radTextBoComment_Leave(object sender, EventArgs e) // ИВЕНТ Комменты изменение 
        {
            if (WorkAnketa != 0) // Если мы работаем с какой то анкетой
            {
                string data = radTextBoComment.Text;
                MySqlTransaction tr = connection.BeginTransaction();
                MySqlCommand cmd = new MySqlCommand();
                cmd.Connection = connection;
                cmd.Transaction = tr;
                cmd.CommandText = "UPDATE `database` SET `Comments`='" + data + "'  WHERE  `ID` = '" + WorkAnketa + "'";
                cmd.ExecuteNonQuery();
                tr.Commit();
            }
            else
            {
                MessageBox.Show("С какой анкетой не пАнятнА");
                radTextBoComment.Text = "";
            }
        }
        private void radTextBox6Zarplata_Leave(object sender, EventArgs e) // ИВЕНТ Комменты изменение зарплаты
        {
            if (WorkAnketa != 0) // Если мы работаем с какой то анкетой
            {
                string data = radTextBox6Zarplata.Text;
                MySqlTransaction tr = connection.BeginTransaction();
                MySqlCommand cmd = new MySqlCommand();
                cmd.Connection = connection;
                cmd.Transaction = tr;
                cmd.CommandText = "UPDATE `database` SET `Salary`='" + data + "'  WHERE  `ID` = '" + WorkAnketa + "'";
                cmd.ExecuteNonQuery();
                tr.Commit();
            }
            else
            {
                MessageBox.Show("С какой анкетой не пАнятнА");
                radTextBox6Zarplata.Text = "";
            }
        }
        private void radDateTimePicker1_ValueChanged(object sender, EventArgs e) // ивент Комменты изменение даты
        {
            if (WorkAnketa != 0) // Если мы работаем с какой то анкетой
            {
                // dateTimePicker1.CustomFormat = "dd/MM/yyyy";
                // dateTimePicker1.Format = DateTimePickerFormat.Custom;
                string data = radDateTimePicker1.Value.ToString("s");
                MySqlTransaction tr = connection.BeginTransaction();
                MySqlCommand cmd = new MySqlCommand();
                cmd.Connection = connection;
                cmd.Transaction = tr;
                cmd.CommandText = "UPDATE `database` SET `Date readiness`='" + data + "'  WHERE  `ID` = '" + WorkAnketa +
                                  "'";
                cmd.ExecuteNonQuery();
                tr.Commit();
            }
            else
            {
                MessageBox.Show("С какой анкетой не пАнятнА");
            }
        }
        private void radCheckBox1Gotov_Click(object sender, EventArgs e) // Ивент Комменты чекбокс готовность
        {
            if (WorkAnketa != 0) // Если мы работаем с какой то анкетой
            {

                var data = !radCheckBox1Gotov.IsChecked;
                MySqlTransaction tr = connection.BeginTransaction();
                MySqlCommand cmd = new MySqlCommand();
                cmd.Connection = connection;
                cmd.Transaction = tr;
                cmd.CommandText = "UPDATE `database` SET `readiness`=" + data + "  WHERE  `ID` = '" + WorkAnketa + "'";
                cmd.ExecuteNonQuery();
                tr.Commit();
            }
            else
            {
                MessageBox.Show("С какой анкетой не пАнятнА");
            }
        }

       

        // ###############################   ЗАКЛАДКА №2 ADD-EDIT  КОНЕЦ ###############################

        // ###############################   ЗАКЛАДКА №3  НАЧАЛО ###############################
        private void tabControl1_SelectedIndexChanged(object sender, EventArgs e) //Ивент 3-1 Активация вкладки верхней
        {
            if (connection != null)
            {
                string zapros = null;
                DataSet DS = null;
                switch (tabControl1.SelectedIndex)
                {
                    case 2: // если активирована 3я вкладка

                        zapros =
                            "SELECT `id`,`Worked`,`Position to apply for`,`Certified for`,`Name`,`Surname`,`D.O.B.`,`Comments` " +
                            "FROM `database` WHERE `Worked` IS NOT NULL";

                        mySqlDataAdapter = new MySqlDataAdapter(zapros, connection);
                        DS = new DataSet();
                        mySqlDataAdapter.Fill(DS);
                        radGridView1_Work.DataSource = DS.Tables[0];

                        radGridView1_Work.Columns[0].ReadOnly = true;
                        radGridView1_Work.Columns[1].ReadOnly = true;
                        radGridView1_Work.Columns[2].ReadOnly = true;
                        radGridView1_Work.Columns[3].ReadOnly = true;
                        radGridView1_Work.Columns[4].ReadOnly = true;
                        radGridView1_Work.Columns[5].ReadOnly = true;
                        radGridView1_Work.Columns[6].ReadOnly = true;
                        //   TextBox_Comment21.Text = DS.Tables[0].Rows[0][0].ToString(); //Коммент
                        radGridView1_Work.Columns[0].Width = 50; // размер 1й колонки
                        radGridView1_Work.Columns[0].TextAlignment = ContentAlignment.MiddleCenter;

                        break;
                    default:
                        break;
                }
            }
        }
        private void radGridView1_CellValueChanged(object sender, GridViewCellEventArgs e)        // ИВЕНТ 3-1 изменение ячейки 
        {
            // DataTable changes = (this.radGridView1.DataSource as DataTable).GetChanges();
            //    DataTable changes = ((DataTable)radGridView1.DataSource).GetChanges();
            // if (changes != null)
            //  {
            string indexRow = radGridView1_Work.CurrentRow.Cells["id"].Value.ToString();
            string comment = radGridView1_Work.CurrentRow.Cells["Comments"].Value.ToString();
            MessageBox.Show("Изменения внесены для анкеты №" + indexRow);
            MySqlTransaction tr = connection.BeginTransaction();
            MySqlCommand cmd = new MySqlCommand();
            cmd.Connection = connection;
            cmd.Transaction = tr;
            cmd.CommandText = "UPDATE `database` SET `Comments`='" + comment + "'  WHERE `id`=" + indexRow + "";
            cmd.ExecuteNonQuery();
            tr.Commit();
            // connection.Close();
            ((DataTable)radGridView1_Work.DataSource).AcceptChanges();
            //  }  
        }
        private void radGridView1_Work_SelectionChanged(object sender, EventArgs e)
        {
            if (tabControl1.SelectedIndex == 2 && radGridView1_Work.CurrentRow.Cells[0].Value != null)
            {
                int sd = (int)radGridView1_Work.CurrentRow.Cells[0].Value;
                string zapros = "SELECT * FROM `documents` WHERE `PID`=" + sd;
                mySqlDataAdapter = new MySqlDataAdapter(zapros, connection);
                var DS = new DataSet();
                mySqlDataAdapter.Fill(DS);
                radGridView2_work.DataSource = DS.Tables[0];
            }
            //   radGridView2_work
        }
        private void radGridView1_Work_UserDeletingRow(object sender, GridViewRowCancelEventArgs e)
        {
            MySqlTransaction tr = connection.BeginTransaction();
            MySqlCommand cmd = new MySqlCommand();
            cmd.Connection = connection;
            cmd.Transaction = tr;
              cmd.CommandText = "UPDATE `database` SET `Worked`= NULL WHERE id=" + e.Rows[0].Cells[0].Value.ToString();
            cmd.ExecuteNonQuery();
            tr.Commit();
            MessageBox.Show("Анкета убрана из обработки");
        }
        // ###############################   ЗАКЛАДКА №3  КОНЕЦ ###############################

        private void radMenuItem7_Click(object sender, EventArgs e)
        {
            Form_About form = new Form_About();
            form.Show();
        }

        private void radMenuItem9_Click(object sender, EventArgs e)
        {
            Config form = new Config();
            form.Show();
        }


    }

    /// </summary>
}
