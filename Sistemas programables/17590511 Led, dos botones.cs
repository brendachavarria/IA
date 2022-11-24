using System;
using System.Windows.Forms;

namespace Arduino
{
    public partial class Form1 : Form
    {

        System.IO.Ports.SerialPort ArduinoPort;

        public Form1()
        {
            InitializeComponent();

            ArduinoPort = new System.IO.Ports.SerialPort();
            ArduinoPort.PortName = "COM4";  //sustituir por vuestro 
            ArduinoPort.BaudRate = 9600;
            ArduinoPort.Open();
            //vincular eventos
            this.FormClosing += FrmMain_FormClosing;
            this.button2.Click += button2_Click;
            this.button1.Click += button1_Click;
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            
        }

        private void FrmMain_FormClosing(object sender, FormClosingEventArgs e)
        {
            //cerrar puerto
            if (ArduinoPort.IsOpen) ArduinoPort.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            ArduinoPort.Write("a");
        }

        private void button1_Click(object sender, EventArgs e)
        {
            ArduinoPort.Write("b");
        }
    }
}
