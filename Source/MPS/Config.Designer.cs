namespace MPS.Resources
{
    partial class Config
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.radTextBox_host = new Telerik.WinControls.UI.RadTextBox();
            this.radLabel1 = new Telerik.WinControls.UI.RadLabel();
            this.radButton1 = new Telerik.WinControls.UI.RadButton();
            this.radGroupBox1 = new Telerik.WinControls.UI.RadGroupBox();
            this.radTextBox_DB = new Telerik.WinControls.UI.RadTextBox();
            this.radTextBox_Pass = new Telerik.WinControls.UI.RadTextBox();
            this.radTextBox_charset = new Telerik.WinControls.UI.RadTextBox();
            this.radTextox_User = new Telerik.WinControls.UI.RadTextBox();
            this.radLabel7 = new Telerik.WinControls.UI.RadLabel();
            this.radLabel6 = new Telerik.WinControls.UI.RadLabel();
            this.radLabel4 = new Telerik.WinControls.UI.RadLabel();
            this.radLabel3 = new Telerik.WinControls.UI.RadLabel();
            this.radLabel2 = new Telerik.WinControls.UI.RadLabel();
            this.radLabel5 = new Telerik.WinControls.UI.RadLabel();
            this.radTextBox_userMPS = new Telerik.WinControls.UI.RadTextBox();
            this.radTextBox_port = new System.Windows.Forms.NumericUpDown();
            ((System.ComponentModel.ISupportInitialize)(this.radTextBox_host)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radLabel1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radButton1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radGroupBox1)).BeginInit();
            this.radGroupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.radTextBox_DB)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radTextBox_Pass)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radTextBox_charset)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radTextox_User)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radLabel7)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radLabel6)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radLabel4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radLabel3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radLabel2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radLabel5)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radTextBox_userMPS)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.radTextBox_port)).BeginInit();
            this.SuspendLayout();
            // 
            // radTextBox_host
            // 
            this.radTextBox_host.Location = new System.Drawing.Point(72, 39);
            this.radTextBox_host.Name = "radTextBox_host";
            this.radTextBox_host.Size = new System.Drawing.Size(220, 20);
            this.radTextBox_host.TabIndex = 0;
            // 
            // radLabel1
            // 
            this.radLabel1.Location = new System.Drawing.Point(36, 40);
            this.radLabel1.Name = "radLabel1";
            this.radLabel1.Size = new System.Drawing.Size(32, 18);
            this.radLabel1.TabIndex = 1;
            this.radLabel1.Text = "Host:";
            // 
            // radButton1
            // 
            this.radButton1.Location = new System.Drawing.Point(110, 275);
            this.radButton1.Name = "radButton1";
            this.radButton1.Size = new System.Drawing.Size(110, 24);
            this.radButton1.TabIndex = 7;
            this.radButton1.Text = "Save";
            this.radButton1.Click += new System.EventHandler(this.radButton1_Click);
            // 
            // radGroupBox1
            // 
            this.radGroupBox1.AccessibleRole = System.Windows.Forms.AccessibleRole.Grouping;
            this.radGroupBox1.Controls.Add(this.radTextBox_port);
            this.radGroupBox1.Controls.Add(this.radTextBox_DB);
            this.radGroupBox1.Controls.Add(this.radTextBox_Pass);
            this.radGroupBox1.Controls.Add(this.radTextBox_charset);
            this.radGroupBox1.Controls.Add(this.radTextox_User);
            this.radGroupBox1.Controls.Add(this.radLabel7);
            this.radGroupBox1.Controls.Add(this.radLabel6);
            this.radGroupBox1.Controls.Add(this.radLabel4);
            this.radGroupBox1.Controls.Add(this.radLabel3);
            this.radGroupBox1.Controls.Add(this.radLabel2);
            this.radGroupBox1.Controls.Add(this.radLabel1);
            this.radGroupBox1.Controls.Add(this.radTextBox_host);
            this.radGroupBox1.HeaderText = "MySQL connections";
            this.radGroupBox1.Location = new System.Drawing.Point(12, 12);
            this.radGroupBox1.Name = "radGroupBox1";
            this.radGroupBox1.Size = new System.Drawing.Size(298, 215);
            this.radGroupBox1.TabIndex = 3;
            this.radGroupBox1.Text = "MySQL connections";
            // 
            // radTextBox_DB
            // 
            this.radTextBox_DB.Location = new System.Drawing.Point(72, 141);
            this.radTextBox_DB.Name = "radTextBox_DB";
            this.radTextBox_DB.Size = new System.Drawing.Size(220, 20);
            this.radTextBox_DB.TabIndex = 4;
            // 
            // radTextBox_Pass
            // 
            this.radTextBox_Pass.Location = new System.Drawing.Point(72, 116);
            this.radTextBox_Pass.Name = "radTextBox_Pass";
            this.radTextBox_Pass.PasswordChar = '*';
            this.radTextBox_Pass.Size = new System.Drawing.Size(220, 20);
            this.radTextBox_Pass.TabIndex = 3;
            // 
            // radTextBox_charset
            // 
            this.radTextBox_charset.Location = new System.Drawing.Point(73, 167);
            this.radTextBox_charset.Name = "radTextBox_charset";
            this.radTextBox_charset.NullText = "utf8";
            this.radTextBox_charset.Size = new System.Drawing.Size(220, 20);
            this.radTextBox_charset.TabIndex = 5;
            this.radTextBox_charset.Text = "utf8";
            // 
            // radTextox_User
            // 
            this.radTextox_User.Location = new System.Drawing.Point(72, 91);
            this.radTextox_User.Name = "radTextox_User";
            this.radTextox_User.Size = new System.Drawing.Size(220, 20);
            this.radTextox_User.TabIndex = 2;
            // 
            // radLabel7
            // 
            this.radLabel7.Location = new System.Drawing.Point(23, 168);
            this.radLabel7.Name = "radLabel7";
            this.radLabel7.Size = new System.Drawing.Size(46, 18);
            this.radLabel7.TabIndex = 5;
            this.radLabel7.Text = "Charset:";
            // 
            // radLabel6
            // 
            this.radLabel6.Location = new System.Drawing.Point(13, 142);
            this.radLabel6.Name = "radLabel6";
            this.radLabel6.Size = new System.Drawing.Size(55, 18);
            this.radLabel6.TabIndex = 4;
            this.radLabel6.Text = "Database:";
            // 
            // radLabel4
            // 
            this.radLabel4.Location = new System.Drawing.Point(13, 117);
            this.radLabel4.Name = "radLabel4";
            this.radLabel4.Size = new System.Drawing.Size(56, 18);
            this.radLabel4.TabIndex = 4;
            this.radLabel4.Text = "Password:";
            // 
            // radLabel3
            // 
            this.radLabel3.Location = new System.Drawing.Point(37, 93);
            this.radLabel3.Name = "radLabel3";
            this.radLabel3.Size = new System.Drawing.Size(31, 18);
            this.radLabel3.TabIndex = 3;
            this.radLabel3.Text = "User:";
            // 
            // radLabel2
            // 
            this.radLabel2.Location = new System.Drawing.Point(39, 66);
            this.radLabel2.Name = "radLabel2";
            this.radLabel2.Size = new System.Drawing.Size(29, 18);
            this.radLabel2.TabIndex = 2;
            this.radLabel2.Text = "Port:";
            // 
            // radLabel5
            // 
            this.radLabel5.Location = new System.Drawing.Point(22, 234);
            this.radLabel5.Name = "radLabel5";
            this.radLabel5.Size = new System.Drawing.Size(57, 18);
            this.radLabel5.TabIndex = 5;
            this.radLabel5.Text = "User MPS:";
            // 
            // radTextBox_userMPS
            // 
            this.radTextBox_userMPS.Location = new System.Drawing.Point(85, 233);
            this.radTextBox_userMPS.Name = "radTextBox_userMPS";
            this.radTextBox_userMPS.Size = new System.Drawing.Size(220, 20);
            this.radTextBox_userMPS.TabIndex = 6;
            // 
            // radTextBox_port
            // 
            this.radTextBox_port.Location = new System.Drawing.Point(72, 64);
            this.radTextBox_port.Maximum = new decimal(new int[] {
            99999,
            0,
            0,
            0});
            this.radTextBox_port.Name = "radTextBox_port";
            this.radTextBox_port.Size = new System.Drawing.Size(220, 20);
            this.radTextBox_port.TabIndex = 1;
            // 
            // Config
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(322, 317);
            this.Controls.Add(this.radTextBox_userMPS);
            this.Controls.Add(this.radLabel5);
            this.Controls.Add(this.radGroupBox1);
            this.Controls.Add(this.radButton1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "Config";
            this.SizeGripStyle = System.Windows.Forms.SizeGripStyle.Hide;
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Configurations";
            this.Load += new System.EventHandler(this.Config_Load);
            ((System.ComponentModel.ISupportInitialize)(this.radTextBox_host)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radLabel1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radButton1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radGroupBox1)).EndInit();
            this.radGroupBox1.ResumeLayout(false);
            this.radGroupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.radTextBox_DB)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radTextBox_Pass)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radTextBox_charset)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radTextox_User)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radLabel7)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radLabel6)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radLabel4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radLabel3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radLabel2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radLabel5)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radTextBox_userMPS)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.radTextBox_port)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private Telerik.WinControls.UI.RadTextBox radTextBox_host;
        private Telerik.WinControls.UI.RadLabel radLabel1;
        private Telerik.WinControls.UI.RadButton radButton1;
        private Telerik.WinControls.UI.RadGroupBox radGroupBox1;
        private Telerik.WinControls.UI.RadLabel radLabel4;
        private Telerik.WinControls.UI.RadLabel radLabel3;
        private Telerik.WinControls.UI.RadLabel radLabel2;
        private Telerik.WinControls.UI.RadLabel radLabel5;
        private Telerik.WinControls.UI.RadLabel radLabel7;
        private Telerik.WinControls.UI.RadLabel radLabel6;
        private Telerik.WinControls.UI.RadTextBox radTextBox_DB;
        private Telerik.WinControls.UI.RadTextBox radTextBox_Pass;
        private Telerik.WinControls.UI.RadTextBox radTextBox_charset;
        private Telerik.WinControls.UI.RadTextBox radTextox_User;
        private Telerik.WinControls.UI.RadTextBox radTextBox_userMPS;
        private System.Windows.Forms.NumericUpDown radTextBox_port;
    }
}