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
        Dishes selectedDish; // Выбранное блюдо
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
                Dishes = new Dishes(); // Инициализация нового объекта, если dishes равен null
            }

            CmbGroup.ItemsSource = CourseEntities.GetContext().Group.ToList();
            CmbGroup.SelectedValuePath = "ID_Group";
            CmbGroup.DisplayMemberPath = "Name_Group";

            if (selectedDish != null)
                Dishes = selectedDish;

            DataContext = Dishes;

            if (selectedDish != null)
            {
                // Устанавливаем значения элементов управления в соответствии с выбранным блюдом
                TxtName.Text = selectedDish.Name;
                // Продолжите для других свойств (например, TxtPrice, CmbGroup)

                // Пример для комбо-бокса
                CmbGroup.SelectedValue = selectedDish.ID_Group;
            }
        }

        private void Save_Click(object sender, RoutedEventArgs e)
        {
            // Проверяем, выбрано ли блюдо
            if (selectedDish != null)
            {
                // Создаем новый контекст базы данных
                using (var context = new CourseEntities())
                {
                    // Отсоединяем выбранное блюдо от текущего контекста
                    var entry = context.Entry(selectedDish);
                    if (entry.State != EntityState.Detached)
                    {
                        entry.State = EntityState.Detached;
                    }

                    // Прикрепляем выбранное блюдо к текущему контексту
                    context.Dishes.Attach(selectedDish);

                    // Обновляем свойства выбранного блюда с новыми значениями
                    selectedDish.Name = TxtName.Text;
                    selectedDish.ID_Group = (int)CmbGroup.SelectedValue;
                    selectedDish.Price = double.Parse(txtPrice.Text);
                    selectedDish.ImagePath = TxtImagePath.Text;

                    // Сохраняем изменения в базе данных
                    context.SaveChanges();
                }

                // Обновляем ListView на главной странице
                mainPage.UpdateListView();
            }

            // Возвращаемся на главную страницу
            ClassFrame.frmObj.Navigate(mainPage);
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
    }

}
