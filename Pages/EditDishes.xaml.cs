using CourseProject.Classes;
using Microsoft.Win32;
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
    /// Логика взаимодействия для EditDishes.xaml
    /// </summary>
    public partial class EditDishes : Page
    {
        Dishes Dishes = new Dishes();
        Dishes selectedDish;
        Main mainPage;

        public EditDishes(Main mainPage, Dishes selectedDish)
        {
            InitializeComponent();
            this.mainPage = mainPage;
            this.selectedDish = selectedDish;

            DataContext = this;
            this.mainPage = mainPage;

            if (selectedDish != null)
            {
                Dishes = selectedDish;
            }
            else
            {
                Dishes = new Dishes();
            }

            CmbGroup.ItemsSource = CourseEntities.GetContext().Group.ToList();
            CmbGroup.SelectedValuePath = "ID_Group";
            CmbGroup.DisplayMemberPath = "Name_Group";

            if (selectedDish != null)
                Dishes = selectedDish;

            DataContext = Dishes;

            if (selectedDish != null)
            {
                TxtName.Text = selectedDish.Name;
                CmbGroup.SelectedValue = selectedDish.ID_Group;
                txtPrice.Text = selectedDish.Price.ToString();
                TxtImagePath.Text = selectedDish.ImagePath;
            }
        }

        private void Save_Click(object sender, RoutedEventArgs e)
        {
            if (selectedDish != null)
            {
                using (var context = new CourseEntities())
                {
                    var existingDish = context.Dishes.Find(selectedDish.ID_Dishes);

                    if (existingDish != null)
                    {
                        existingDish.Name = TxtName.Text;
                        existingDish.ID_Group = (int)CmbGroup.SelectedValue;
                        existingDish.Price = double.Parse(txtPrice.Text);
                        existingDish.ImagePath = TxtImagePath.Text;

                        context.SaveChanges();

                        selectedDish.Name = existingDish.Name;
                        selectedDish.ID_Group = existingDish.ID_Group;
                        selectedDish.Price = existingDish.Price;
                        selectedDish.ImagePath = existingDish.ImagePath;
                    }
                }

                mainPage.UpdateListView();
            }

            ClassFrame.frmObj.Navigate(mainPage);
        }

        private void AddImage_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.Filter = "Image files (*.png;*.jpeg;*.jpg)|*.png;*.jpeg;*.jpg|All files (*.*)|*.*";
            if (openFileDialog.ShowDialog() == true)
            {
                string imagePath = openFileDialog.FileName;

                if (!string.IsNullOrEmpty(imagePath))
                {
                    MyImage.Source = new BitmapImage(new Uri(imagePath));

                    TxtImagePath.Text = imagePath;
                }
                else
                {
                    MessageBox.Show("Выбранный файл изображения не найден.");
                }
            }
        }

        private void Back_Click(object sender, RoutedEventArgs e)
        {
            Classes.ClassFrame.frmObj.Navigate(new Main());
        }
    }

}
