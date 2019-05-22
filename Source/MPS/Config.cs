using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MPS.Resources
{
    public partial class Config : Form
    {
        public Config()
        {
            InitializeComponent();
        }

        private void radButton1_Click(object sender, EventArgs e)
        {
            Properties.Settings.Default.Host = radTextBox_host.Text;
            Properties.Settings.Default.Port = Convert.ToInt32(radTextBox_port.Value);
            Properties.Settings.Default.User = radTextox_User.Text;
            Properties.Settings.Default.Password = radTextBox_Pass.Text;
            Properties.Settings.Default.Database = radTextBox_DB.Text;
            Properties.Settings.Default.Charset = radTextBox_charset.Text;
            Properties.Settings.Default.User_MPS = radTextBox_userMPS.Text;
            Properties.Settings.Default.Save();
               
            Close();
        }

        private void Config_Load(object sender, EventArgs e)
        {
          radTextBox_host.Text =  Properties.Settings.Default.Host;
          radTextBox_port.Text =  Properties.Settings.Default.Port.ToString();
          radTextox_User.Text = Properties.Settings.Default.User;
          radTextBox_Pass.Text = Properties.Settings.Default.Password;
          radTextBox_DB.Text = Properties.Settings.Default.Database;
          radTextBox_charset.Text = Properties.Settings.Default.Charset;
          radTextBox_userMPS.Text = Properties.Settings.Default.User_MPS;
        }
    }
}
