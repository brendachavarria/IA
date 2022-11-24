using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Led_2
{
    public partial class Form1 : Form
    {
        System.IO.Ports.SerialPort ArduinoPort;
        Boolean Bandera;

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
        }

        private void FrmMain_FormClosing(object sender, FormClosingEventArgs e)
        {
            //cerrar puerto
            if (ArduinoPort.IsOpen) ArduinoPort.Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (Bandera == true)
            {
                ArduinoPort.Write("a");
                button1.Text = "Encender";
                Bandera = false;
            }
            else
            {
                ArduinoPort.Write("b");
                button1.Text = "Apagar";
                Bandera = true;
            }
        }
    }
}