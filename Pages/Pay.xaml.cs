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
using System.Windows.Shapes;

namespace CourseProject.Pages
{
    /// <summary>
    /// Логика взаимодействия для Pay.xaml
    /// </summary>
    public partial class Pay : Window
    {

        private DataGrid BasketLtV;

        public Pay(DataGrid basketListView)
        {

            InitializeComponent();
            BasketLtV = basketListView;
        }

        private void BackBasket_Click(object sender, RoutedEventArgs e)
        {
            DialogResult = false;
            Close();
        }

        private void Pay_Click(object sender, RoutedEventArgs e)
        {
                ProcessPay();
        }

        private void ProcessPay()
        {
            if (BasketLtV.Items.Count == 1)
            {
                MessageBox.Show("Корзина пуста. Пожалуйста, добавьте товары перед оплатой.", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                Close();
            }
            else
            {
                StringBuilder message = new StringBuilder();
                double totalsum = 0;

                foreach (var item in BasketLtV.Items)
                {
                    if (item is Order order)
                    {
                        // Добавить информацию о заказе в строку сообщения
                        message.AppendLine($"Название блюда: {order.Dishes.Name}");
                        message.AppendLine($"Количество: {order.Quantity}");
                        message.AppendLine($"Цена: {order.Summa} рублей");
                        message.AppendLine($"Дата заказа: {order.Order_Date}");
                        message.AppendLine(); // Добавляем пустую строку для разделения заказов

                        totalsum += order.Summa;
                    }
                }

                message.AppendLine($"Общая цена заказа: {totalsum} рублей");

                // Вывести сообщение с информацией о заказах
                MessageBox.Show(message.ToString(), "Информация о заказах", MessageBoxButton.OK, MessageBoxImage.Information);

                Close();

                using (var dbContext = new CourseEntities())
                {

                    // Удалить все записи из таблицы Order
                    var orders = dbContext.Order.ToList();
                    dbContext.Order.RemoveRange(orders);

                    // Сохранить изменения в базе данных
                    dbContext.SaveChanges();
                }
            }
        }
    }
}
