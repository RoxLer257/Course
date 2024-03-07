using CourseProject.Classes;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
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

namespace CourseProject.Pages
{
    /// <summary>
    /// Логика взаимодействия для Authorization.xaml
    /// </summary>
    public partial class Authorization : Page
    {

        public Authorization()
        {
            InitializeComponent();
        }

        private void BtnEnter_Click(object sender, RoutedEventArgs e)
        {
            string login = txtLogin.Text;
            string password = txtpass.Password;

            try
            {
                var user = AppConnect.CourseEntities.Users.FirstOrDefault(u => u.Login == login && u.Password == password);

                if (user == null)
                {
                    txtLogin.ToolTip = "Такого пользователя нет";
                    txtLogin.Background = Brushes.Red;
                    MessageBox.Show("Такого пользователя нет", "Ошибка при авторизации",
                        MessageBoxButton.OK, MessageBoxImage.Error);
                }
                else
                {
                    Classes.ClassFrame.ID_Role = user.id_Users;
                    Classes.ClassFrame.frmObj.Navigate(new Pages.Main());

                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Произошла ошибка: {ex.Message}", "Ошибка при авторизации",
                    MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void BtnReg_Click(object sender, RoutedEventArgs e)
        {
            ClassFrame.frmObj.Navigate(new Registration());
        }
    }
}
