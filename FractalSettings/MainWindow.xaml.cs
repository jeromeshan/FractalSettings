using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Xceed.Wpf.Toolkit;

namespace FractalSettings
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        Label infoLabel;
        public MainWindow()
        {
            InitializeComponent();
            Thread.CurrentThread.CurrentCulture = CultureInfo.GetCultureInfo("en-US");

            infoLabel = (Label)this.FindName("InfoLabel");
            //infoLabel.Content = "No connection";
        }

        private void ConnectButton_Click(object sender, RoutedEventArgs e)
        {
        
                Int32 port = 2200;
            TcpClient client = null;
            BinaryWriter writer = null;
            BinaryReader reader = null;
            NetworkStream stream = null;
            try
            {
                client = new TcpClient("127.0.0.1", port);
                stream = client.GetStream();
                writer = new BinaryWriter(stream);
                var color = color_picker.SelectedColor.Value;
                writer.Write((Int32)color.R);
                writer.Write((Int32)color.G);
                writer.Write((Int32)color.B);
                writer.Write(Int32.Parse(T_value.Text));
                writer.Write(Double.Parse(dt_value.Text));
                writer.Write(Double.Parse(D_value.Text));
                writer.Write(Int32.Parse(N_value.Text));
                writer.Write(Double.Parse(sigma_value.Text));
                writer.Write(Double.Parse(b_value.Text));
                writer.Write(Double.Parse(s_value.Text));
                writer.Write(  mode_value.SelectedIndex);
                writer.Write(Double.Parse(discDist_value.Text));
                writer.Write(Int32.Parse(alpha_value.Text));


                writer.Flush();

                // BinaryReader reader = new BinaryReader(new BufferedStream(stream));
                reader = new BinaryReader(stream);
                string message = reader.ReadString();
                infoLabel.Content = (message);


            }
            catch
            {
                infoLabel.Content=("Ошибка доступа! Перезапустите приложение!");
            }
            finally
            {
                if(reader!=null)
                    reader.Close();
                if (writer != null)
                    writer.Close();
                if (stream != null)
                    stream.Close();
                if (client != null)
                    client.Close();
            }
        }

        private static readonly Regex regexInt = new Regex("[^0-9-]+"); //regex that matches disallowed text
        private void IntCheck(object sender, TextCompositionEventArgs e)
        {
            e.Handled = regexInt.IsMatch(e.Text);
        }

        private void DoubleCheck(object sender, TextCompositionEventArgs e)
        {
            var ue = e.Source as TextBox;
            Regex regex;
            if (ue.Text.Contains("."))
            {
                regex = new Regex("[^0-9]+");
            }
            else
            {
                regex = new Regex("[^0-9.]+");
            }

            e.Handled = regex.IsMatch(e.Text);
        }

    }
}
