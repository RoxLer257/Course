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
            UpdateDataGrid(BasketLtV);
            Loaded += totalsum_Loaded;
            DataContext = this;
        }

        private void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        private void UpdateDataGrid(DataGrid dataGrid)
        {
            dataGrid.ItemsSource = null;
            using (var dbContext = new CourseEntities())
            {
                dataGrid.ItemsSource = dbContext.Dishes.ToList();
                dataGrid.ItemsSource = dbContext.Order.ToList();
            }
        }

        private void account_Click(object sender, RoutedEventArgs e)
        {
            ClassFrame.frmObj.Navigate(new Account());
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
            var payWindow = new Pay(BasketLtV);
            if (payWindow.ShowDialog() == true)
            {
                using (var dbContext = new CourseEntities())
                {

                    // Удалить все записи из таблицы Order
                    var orders = dbContext.Order.ToList();
                    dbContext.Order.RemoveRange(orders);

                    // Сохранить изменения в базе данных
                    dbContext.SaveChanges();
                }
            }

            UpdateDataGrid(BasketLtV);
        }

        private void totalsum_Loaded(object sender, RoutedEventArgs e)
        {
            // Инициализируем переменную для хранения общей суммы заказа
            double totalPrice = 0;

            // Вычисляем общую сумму заказа на основе данных в BasketLtV
            foreach (var item in BasketLtV.Items)
            {
                if (item is Order order)
                {
                    totalPrice += order.Summa;
                }
            }

            // Устанавливаем общую сумму заказа в TextBlock
            totalsum.Text = totalPrice.ToString();
        }

        private void BtnDel_Click(object sender, RoutedEventArgs e)
        {
            var selectedOrder = (Order)BasketLtV.SelectedItem;

            if (selectedOrder != null)
            {
                using (var dbContext = new CourseEntities())
                {
                    // Находим объект Order в контексте базы данных
                    var orderToDelete = dbContext.Order.Find(selectedOrder.ID_Order);

                    if (orderToDelete != null)
                    {
                        dbContext.Order.Remove(orderToDelete);
                        dbContext.SaveChanges();

                        // Обновляем DataGrid и общую сумму заказа
                        UpdateDataGrid(BasketLtV);
                        totalsum_Loaded(sender,e);
                    }
                }
            }

            NotificationText = "Блюдо удалено из корзины";
            NotificationBorder.Visibility = Visibility.Visible;

            // Запускаем таймер для скрытия уведомления через 2 секунды
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
