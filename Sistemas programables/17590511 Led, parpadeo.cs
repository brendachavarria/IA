using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Arduido_Timer
{
    public partial class Form1 : Form
    {
        System.IO.Ports.SerialPort ArduinoPort;
        Boolean Bandera, B;

        public Form1()
        {
            InitializeComponent();
            ArduinoPort = new System.IO.Ports.SerialPort();
            ArduinoPort.PortName = "COM4";  //sustituir por vuestro 
            ArduinoPort.BaudRate = 9600;
            ArduinoPort.Open();
            //vincular eventos
            this.FormClosing += FrmMain_FormClosing;
            //this.button1.Click += button1_Click;
            Bandera = false;
            B = false;
        }

        private void FrmMain_FormClosing(object sender, FormClosingEventArgs e)
        {
            //cerrar puerto
            if (ArduinoPort.IsOpen) ArduinoPort.Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (B == true)
            {
                button1.Text = "Encender";
                ArduinoPort.Write("a");
                B = false;
            }
            else
            {
                button1.Text = "Apagar";
                B = true;   
            }
            timer1.Enabled = B;
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            if (Bandera == true)
            {
                ArduinoPort.Write("a");
                Bandera = false;
            }
            else
            {
                ArduinoPort.Write("b");
                Bandera = true;
            }
        }
    }
}
