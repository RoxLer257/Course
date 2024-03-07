using CourseProject.Classes;
using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.IO;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace CourseProject.Pages
{
    /// <summary>
    /// Логика взаимодействия для AddDishes.xaml
    /// </summary>
    public partial class AddDishes : Page
    {
        private List<Dishes> selectedDishes;
        Dishes Dishes = new Dishes();

        Main mainPage;

        public AddDishes(List<Dishes> selectedDishes)
        {
            this.selectedDishes = selectedDishes;
        }

        public AddDishes(Main mainPage, Dishes dishes)
        {
            InitializeComponent();
            DataContext = this;
            this.mainPage = mainPage;

            if (dishes != null)
            {
                Dishes = dishes;
            }
            else
            {
                Dishes = new Dishes();
            }

            CmbGroup.ItemsSource = CourseEntities.GetContext().Group.ToList();
            CmbGroup.SelectedValuePath = "ID_Group";
            CmbGroup.DisplayMemberPath = "Name_Group";

            if (dishes != null)
                Dishes = dishes;

            DataContext = Dishes;
        }

        // добавление не локально(проверить)
        private void AddImage_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.Filter = "Image files (*.png;*.jpeg;*.jpg)|*.png;*.jpeg;*.jpg|All files (*.*)|*.*";
            if (openFileDialog.ShowDialog() == true)
            {
                string imagePath = openFileDialog.FileName;

                if (!string.IsNullOrEmpty(imagePath))
                {
                    string fileName = System.IO.Path.GetFileName(imagePath);

                    string projectPath = System.IO.Path.GetFullPath(@"\CourseProject\Images");

                    string targetPath = System.IO.Path.Combine(projectPath, fileName);

                    string imagesDirectory = System.IO.Path.GetDirectoryName(targetPath);
                    if (!System.IO.Directory.Exists(imagesDirectory))
                    {
                        System.IO.Directory.CreateDirectory(imagesDirectory);
                    }

                    System.IO.File.Copy(imagePath, targetPath, true);

                    MyImage.Source = new BitmapImage(new Uri(targetPath));

                    TxtImagePath.Text = targetPath;
                }
                else
                {
                    MessageBox.Show("Выбранный файл изображения не найден.");
                }
            }
        }

        // добавление локально
        //private void AddImage_Click(object sender, RoutedEventArgs e)
        //{
        //    OpenFileDialog openFileDialog = new OpenFileDialog();
        //    openFileDialog.Filter = "Image files (*.png;*.jpeg;*.jpg)|*.png;*.jpeg;*.jpg|All files (*.*)|*.*";
        //    if (openFileDialog.ShowDialog() == true)
        //    {
        //        string imagePath = openFileDialog.FileName;

        //        if (!string.IsNullOrEmpty(imagePath))
        //        {
        //            MyImage.Source = new BitmapImage(new Uri(imagePath));

        //            TxtImagePath.Text = imagePath;
        //        }
        //        else
        //        {
        //            MessageBox.Show("Выбранный файл изображения не найден.");
        //        }
        //    }
        //}

        private void Back_Click(object sender, RoutedEventArgs e)
        {
            Classes.ClassFrame.frmObj.Navigate(new Main());
        }

        //основное сохранение
        private void Save_Click(object sender, RoutedEventArgs e)
        {
            using (var context = new CourseEntities())
            {
                Dishes newDish = new Dishes
                {
                    Name = TxtName.Text,
                    ID_Group = (int)CmbGroup.SelectedValue,
                    Price = double.Parse(TxtPrice.Text),
                    ImagePath = TxtImagePath.Text
                };

                context.Dishes.Add(newDish);
                context.SaveChanges();
            }

            mainPage.UpdateListView();
            ClassFrame.frmObj.Navigate(new Main());
        }
    }
}
