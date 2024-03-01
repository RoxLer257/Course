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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace CourseProject.Pages
{
    /// <summary>
    /// Логика взаимодействия для AddDishes.xaml
    /// </summary>
    public partial class AddDishes : Page
    {
        Dishes Dishes = new Dishes();

        Main mainPage;
        private List<Dishes> selectedDishes;

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
                Dishes = new Dishes(); // Инициализация нового объекта, если dishes равен null
            }

            CmbGroup.ItemsSource = CourseEntities.GetContext().Group.ToList();
            CmbGroup.SelectedValuePath = "ID_Group";
            CmbGroup.DisplayMemberPath = "Name_Group";

            if (dishes != null)
                Dishes = dishes;

            DataContext = Dishes;
        }

        private void AddImage_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.Filter = "Image files (*.png;*.jpeg;*.jpg)|*.png;*.jpeg;*.jpg|All files (*.*)|*.*";
            if (openFileDialog.ShowDialog() == true)
            {
                string imagePath = openFileDialog.FileName;

                // Проверяем, что путь к изображению не является пустым
                if (!string.IsNullOrEmpty(imagePath))
                {
                    // Отображаем выбранное изображение
                    MyImage.Source = new BitmapImage(new Uri(imagePath));

                    // Сохраняем путь к выбранному изображению в TextBox (это предполагается в вашем XAML)
                    TxtImagePath.Text = imagePath;
                }
                else
                {
                    // Обработка случая, если путь к изображению пустой
                    MessageBox.Show("Выбранный файл изображения не найден.");
                }
            }
        }



        private void Back_Click(object sender, RoutedEventArgs e)
        {
            Classes.ClassFrame.frmObj.Navigate(new Main());
        }

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

                // Добавляем новое блюдо в базу данных
                context.Dishes.Add(newDish);
                context.SaveChanges();
            }

            // После сохранения нового блюда, обновляем ListView
            mainPage.UpdateListView();
            ClassFrame.frmObj.Navigate(new Main()); // Метод, который загружает данные в ListView
        }
    }
}
