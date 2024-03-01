using CourseProject.Classes;
using System;
using System.Collections.Generic;
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
using System.Net;
using Microsoft.SqlServer.Management.Smo;
using System.Data.Entity;

namespace CourseProject.Pages
{
    /// <summary>
    /// Логика взаимодействия для Registration.xaml
    /// </summary>
    public partial class Registration : Page
    {
        public Registration()
        {
            InitializeComponent();
        }

        private void PsbConfPassword_PasswordChanged(object sender, RoutedEventArgs e)
        {
            if (txtpass2.Password != txtpass.Text)
            {
                BtnCreate.IsEnabled = false;
                txtpass2.Background = Brushes.LightCoral;
                txtpass2.BorderBrush = Brushes.Red;
            }
            else
            {
                BtnCreate.IsEnabled = true;
                txtpass2.Background = Brushes.LightGreen;
                txtpass2.BorderBrush = Brushes.Green;
            }
        }

        private void BtnCreate_Click(object sender, RoutedEventArgs e)
        {
            using (var context = new CourseEntities())
            {
                if (context.Users.Any(u => u.Login == txtLogin.Text))
                {
                    txtLogin.ToolTip = "Пользователь с таким логином уже существует";
                    txtLogin.Background = Brushes.Red;
                    MessageBox.Show("Пользователь с таким логином уже существует", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }

                try
                {
                    Users newUser = new Users()
                    {
                        Login = txtLogin.Text,
                        Password = txtpass.Text,
                    };
                    context.Users.Add(newUser);
                    context.SaveChanges();

                    MessageBox.Show("Регистрация прошла успешно!", "Успех", MessageBoxButton.OK, MessageBoxImage.Information);
                    ClassFrame.frmObj.Navigate(new Main());
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Ошибка при регистрации: " + ex.Message, "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
        }

        private void BtnBack_Click(object sender, RoutedEventArgs e)
        {
            ClassFrame.frmObj.Navigate(new Authorization());
        }
    }
}
