using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MPS
{
    static class Program
    {
        /// <summary>
        /// Главная точка входа для приложения.
        /// </summary>
        [STAThread]
        static void Main()
        {
            
                Application.EnableVisualStyles();
                Application.SetCompatibleTextRenderingDefault(false);

                //  Thread myThread = new Thread(func); //Создаем новый объект потока (Thread)
                // myThread.Start(); //запускаем поток
                Application.Run(new Form1());
          
           
        }
    }
}
