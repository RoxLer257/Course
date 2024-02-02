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

namespace CourseProject.Pages
{
    /// <summary>
    /// Логика взаимодействия для Fastfood.xaml
    /// </summary>
    public partial class Fastfood : Page
    {
        public Fastfood()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            ClassFrame.frmObj.Navigate(new basket());
        }

        private void account_Click(object sender, RoutedEventArgs e)
        {
            ClassFrame.frmObj.Navigate(new Account());
        }

        private void maindish_Click(object sender, RoutedEventArgs e)
        {
            ClassFrame.frmObj.Navigate(new MainDish());
        }

        private void soups_Click(object sender, RoutedEventArgs e)
        {
            ClassFrame.frmObj.Navigate(new Soups());
        }

        private void hotdrinks_Click(object sender, RoutedEventArgs e)
        {
            ClassFrame.frmObj.Navigate(new Hotdrinks());
        }

        private void colddrinks_Click(object sender, RoutedEventArgs e)
        {
            ClassFrame.frmObj.Navigate(new Colddrinks());
        }

        private void salads_Click(object sender, RoutedEventArgs e)
        {
            ClassFrame.frmObj.Navigate(new Salads());
        }

        private void sidesauces_Click(object sender, RoutedEventArgs e)
        {
            ClassFrame.frmObj.Navigate(new Sidesauces());
        }

        private void desserts_Click(object sender, RoutedEventArgs e)
        {
            ClassFrame.frmObj.Navigate(new Desserts());
        }

        private void fastfood_Click(object sender, RoutedEventArgs e)
        {
            ClassFrame.frmObj.Navigate(new Fastfood());
        }

        private void pizza_Click(object sender, RoutedEventArgs e)
        {
            ClassFrame.frmObj.Navigate(new Pizza());
        }

        private void steaks_Click(object sender, RoutedEventArgs e)
        {
            ClassFrame.frmObj.Navigate(new Steaks());
        }

        private void txtSearch_TextChanged(object sender, TextChangedEventArgs e)
        {

        }
    }
}
