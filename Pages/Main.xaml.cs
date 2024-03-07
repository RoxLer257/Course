using CourseProject.Classes;
using Microsoft.Xaml.Behaviors.Core;
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
using System.Data.Entity;
using System.Runtime.Remoting.Contexts;
using System.Windows.Markup;
using System.ComponentModel;
using Microsoft.Win32;
using static System.Net.Mime.MediaTypeNames;
using System.Collections.ObjectModel;
using System.Runtime.CompilerServices;
using Windows.UI;


namespace CourseProject.Pages
{
    /// <summary>
    /// Логика взаимодействия для Main.xaml
    /// </summary>
    public partial class Main : Page, INotifyPropertyChanged
    {
        private CourseEntities _context;

        private string _notificationText;

        public event PropertyChangedEventHandler PropertyChanged;

        public string NotificationText
        {
            get { return _notificationText; }
            set
            {
                _notificationText = value;
                OnPropertyChanged();
            }
        }

        public Main()
        {
            InitializeComponent();
            ListViewDishes.ItemsSource = CourseEntities.GetContext().Dishes.ToList();
            _context = CourseEntities.GetContext();
            DataContext = this;
            CheckUserRole();
        }

        public void UpdateListView()
        {
            ListViewDishes.ItemsSource = CourseEntities.GetContext().Dishes.ToList();
        }

        private void CheckUserRole()
        {
            if (Classes.ClassFrame.ID_Role == 1)
            {
                AddDish.Visibility = Visibility.Visible;
                DelDish.Visibility= Visibility.Visible;
                EditDish.Visibility=Visibility.Visible;
            }
            else
            {
                AddDish.Visibility = Visibility.Collapsed;
                DelDish.Visibility = Visibility.Collapsed;
                EditDish.Visibility = Visibility.Collapsed;
            }
        }

        private void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        private void txtSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            string search = txtSearch.Text;
            ListViewDishes.ItemsSource = CourseEntities.GetContext().Dishes.
                Where(x => x.Name.Contains(search)).ToList();
        }

        private void maindish_Click(object sender, RoutedEventArgs e)
        {

            try
            {
                string selectedGroupName = "Горячие блюда";

                var dishes = _context.Dishes.Include("Group")
                                            .Where(d => d.Group.Name_Group == selectedGroupName)
                                            .ToList();

                ListViewDishes.ItemsSource = dishes;
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Ошибка при загрузке блюд: {ex.Message}");
            }

        }

        private void soups_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                string selectedGroupName = "Супы";

                var dishes = _context.Dishes.Include("Group")
                                            .Where(d => d.Group.Name_Group == selectedGroupName)
                                            .ToList();

                ListViewDishes.ItemsSource = dishes;
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Ошибка при загрузке блюд: {ex.Message}");
            }
        }

        private void hotdrinks_Click(object sender, RoutedEventArgs e)  
        {
            try
            {
                string selectedGroupName = "Горячие напитки";

                var dishes = _context.Dishes.Include("Group")
                                            .Where(d => d.Group.Name_Group == selectedGroupName)
                                            .ToList();

                ListViewDishes.ItemsSource = dishes;
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Ошибка при загрузке блюд: {ex.Message}");
            }
        }

        private void colddrinks_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                string selectedGroupName = "Холодные напитки";

                var dishes = _context.Dishes.Include("Group")
                                            .Where(d => d.Group.Name_Group == selectedGroupName)
                                            .ToList();

                ListViewDishes.ItemsSource = dishes;
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Ошибка при загрузке блюд: {ex.Message}");
            }
        }

        private void salads_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                string selectedGroupName = "Салаты";

                var dishes = _context.Dishes.Include("Group")
                                            .Where(d => d.Group.Name_Group == selectedGroupName)
                                            .ToList();

                ListViewDishes.ItemsSource = dishes;
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Ошибка при загрузке блюд: {ex.Message}");
            }
        }

        private void sidesauces_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                string selectedGroupName = "Гарниры и соусы";

                var dishes = _context.Dishes.Include("Group")
                                            .Where(d => d.Group.Name_Group == selectedGroupName)
                                            .ToList();

                ListViewDishes.ItemsSource = dishes;
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Ошибка при загрузке блюд: {ex.Message}");
            }
        }

        private void desserts_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                string selectedGroupName = "Десерты";

                var dishes = _context.Dishes.Include("Group")
                                            .Where(d => d.Group.Name_Group == selectedGroupName)
                                            .ToList();

                ListViewDishes.ItemsSource = dishes;
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Ошибка при загрузке блюд: {ex.Message}");
            }
        }

        private void fastfood_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                string selectedGroupName = "Фаст-фуд"; 

                var dishes = _context.Dishes.Include("Group")
                                            .Where(d => d.Group.Name_Group == selectedGroupName)
                                            .ToList();

                ListViewDishes.ItemsSource = dishes;
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Ошибка при загрузке блюд: {ex.Message}");
            }
        }

        private void pizza_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                string selectedGroupName = "Пицца"; 

                var dishes = _context.Dishes.Include("Group")
                                            .Where(d => d.Group.Name_Group == selectedGroupName)
                                            .ToList();

                ListViewDishes.ItemsSource = dishes;
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Ошибка при загрузке блюд: {ex.Message}");
            }
        }

        private void steaks_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                string selectedGroupName = "Стейки"; 

                var dishes = _context.Dishes.Include("Group")
                                            .Where(d => d.Group.Name_Group == selectedGroupName)
                                            .ToList();

                ListViewDishes.ItemsSource = dishes;
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Ошибка при загрузке блюд: {ex.Message}");
            }
        }

        private void drop_Click(object sender, RoutedEventArgs e)
        {
            ListViewDishes.ItemsSource = CourseEntities.GetContext().Dishes.ToList();
            txtSearch.Text = "";
        }

        private void Cart_Click(object sender, RoutedEventArgs e)
        {
            Button button = sender as Button;
            if (button != null)
            {
                Dishes dish = (button.DataContext as Dishes);

                using (var dbContext = new CourseEntities())
                {
                    Order existingOrder = dbContext.Order.FirstOrDefault(o => o.ID_Dishes == dish.ID_Dishes && o.id_Users == ClassFrame.ID_Role);

                    if (existingOrder != null)
                    {
                        existingOrder.Quantity++;
                        existingOrder.Summa = existingOrder.Quantity * (float)dish.Price;
                    }
                    else
                    {
                        Order newOrder = new Order
                        {
                            ID_Dishes = dish.ID_Dishes,
                            id_Users = ClassFrame.ID_Role,
                            Quantity = 1,
                            Summa = (float)dish.Price,
                            Order_Date = DateTime.Now
                        };
                        dbContext.Order.Add(newOrder);
                    }

                    dbContext.SaveChanges();

                    NotificationText = "Блюдо добавлено в корзину";
                    NotificationBorder.Visibility = Visibility.Visible;

                    var timer = new System.Windows.Threading.DispatcherTimer();
                    timer.Tick += (s, args) =>
                    {
                        NotificationBorder.Visibility = Visibility.Collapsed;
                        timer.Stop();
                    };
                    timer.Interval = TimeSpan.FromSeconds(2);
                    timer.Start();
                }
            }
        }

        private void Basket_Click(object sender, RoutedEventArgs e)
        {
            ClassFrame.frmObj.Navigate(new basket());
        }

        private void AddDish_Click(object sender, RoutedEventArgs e)
        {
            ClassFrame.frmObj.Navigate(new AddDishes(this,null));
        }

        private void DelDish_Click(object sender, RoutedEventArgs e)
        {
            var DishesForRemoving = ListViewDishes.SelectedItems.Cast<Dishes>().ToList();

            if (DishesForRemoving.Count == 0)
            {
                MessageBox.Show("Пожалуйста, выберите блюда для удаления.", "Предупреждение", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }

            if (MessageBox.Show($"Удалить {DishesForRemoving.Count()} " +
                $"блюда?", "Внимание", MessageBoxButton.YesNo, MessageBoxImage.Question)
                == MessageBoxResult.Yes)
            {
                try
                {
                    CourseEntities.GetContext().Dishes.RemoveRange(DishesForRemoving);
                    CourseEntities.GetContext().SaveChanges();

                    MessageBox.Show("Данные удалены");
                    ListViewDishes.ItemsSource = CourseEntities.GetContext().Dishes.ToList();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message.ToString());
                }
            }
        }

        private void EditDish_Click(object sender, RoutedEventArgs e)
        {
            var selectedDish = ListViewDishes.SelectedItem as Dishes;

            if (selectedDish != null)
            {
                EditDishes editDishesPage = new EditDishes(this, selectedDish);

                ClassFrame.frmObj.Navigate(editDishesPage);
            }
            else
            {
                MessageBox.Show("Пожалуйста, выберите блюдо для редактирования.");
            }
        }
    }
}
