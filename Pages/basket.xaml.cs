using CourseProject.Classes;
using Microsoft.Win32;
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
using System.IO;
using System.Data.Entity;
using System.ComponentModel;
using System.Globalization;
using System.Runtime.CompilerServices;

namespace CourseProject.Pages
{
    /// <summary>
    /// Логика взаимодействия для basket.xaml
    /// </summary>
    public partial class basket : Page, INotifyPropertyChanged
    {
        private string _notificationText;

        private int _id_Role;

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

        public basket()
        {
            InitializeComponent();
            _id_Role = ClassFrame.ID_Role;
            UpdateDataGrid(BasketLtV);
            Loaded += totalsum_Loaded;
            Loaded += Basket_Loaded;
            DataContext = this;
        }

        private void Basket_Loaded(object sender, RoutedEventArgs e)
        {
            UpdateDataGrid(BasketLtV);
        }

        private void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        private void UpdateDataGrid(DataGrid dataGrid)
        {
            using (var dbContext = new CourseEntities())
            {
                var dishes = dbContext.Dishes.ToList();

                var userOrders = dbContext.Order.Where(o => o.id_Users == ClassFrame.ID_Role).ToList();
                dataGrid.ItemsSource = userOrders;
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            ClassFrame.frmObj.Navigate(new basket());
        }

        private void Back_Click(object sender, RoutedEventArgs e)
        {
            ClassFrame.frmObj.Navigate(new Main());
        }

        private void Pay_Click(object sender, RoutedEventArgs e)
        {
            if (BasketLtV.Items.Count == 1)
            {
                MessageBox.Show("Корзина пуста. Пожалуйста, добавьте товары перед оплатой.", "Предупреждение", MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }
            var payWindow = new Pay(BasketLtV);
            if (payWindow.ShowDialog() == true)
            {
                using (var dbContext = new CourseEntities())
                {
                    var orders = dbContext.Order.ToList();
                    dbContext.Order.RemoveRange(orders);

                    dbContext.SaveChanges();
                }
            }

            UpdateDataGrid(BasketLtV);
        }

        private void totalsum_Loaded(object sender, RoutedEventArgs e)
        {
            double totalPrice = 0;

            foreach (var item in BasketLtV.Items)
            {
                if (item is Order order)
                {
                    totalPrice += order.Summa;
                }
            }

            totalsum.Text = totalPrice.ToString();
        }

        private void BtnDel_Click(object sender, RoutedEventArgs e)
        {
            var selectedOrder = (Order)BasketLtV.SelectedItem;

            if (selectedOrder != null)
            {
                using (var dbContext = new CourseEntities ())
                {
                    var orderToDelete = dbContext.Order.Find(selectedOrder.ID_Order);

                    if (orderToDelete != null)
                    {
                        dbContext.Order.Remove(orderToDelete);
                        dbContext.SaveChanges();

                        UpdateDataGrid(BasketLtV);
                        UpdateTotalSum();
                    }
                }
            }

            ShowNotification();
        }

        private void UpdateTotalSum()
        {
            double totalPrice = 0;

            if (BasketLtV.Items.Count == 0)
            {
                totalsum.Text = "0";
                return; 
            }

            foreach (var item in BasketLtV.Items)
            {
                if (item is Order order)
                {
                    totalPrice += order.Summa;
                }
            }

            totalsum.Text = totalPrice.ToString();
        }

        private void ShowNotification()
        {
            NotificationText = "Блюдо удалено из корзины";
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
