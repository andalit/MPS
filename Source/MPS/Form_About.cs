using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MPS
{
    public partial class Form_About : Form
    {
        public Form_About()
        {
            InitializeComponent();
            Label_Copyright.Text = "Copyright © " + DateTime.Now.Year;
            radLabel1_version.Text = "Program MPS v" + Properties.Settings.Default.Version;
        }

        private void radButton1_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
