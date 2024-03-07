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
            BasketLtV.Items.Refresh();
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
                double totalSum = 0;

                using (var dbContext = new CourseEntities())
                {
                    List<int> orderIDsToDelete = new List<int>();

                    foreach (var item in BasketLtV.Items)
                    {
                        if (item is Order order)
                        {
                            message.AppendLine($"Название блюда: {order.Dishes.Name}");
                            message.AppendLine($"Количество: {order.Quantity}");
                            message.AppendLine($"Цена: {order.Summa} рублей");
                            message.AppendLine();

                            totalSum += order.Summa;

                            orderIDsToDelete.Add(order.ID_Order);
                        }
                    }

                    message.AppendLine($"Общая цена заказа: {totalSum} рублей");
                    message.AppendLine($"Дата заказа: {DateTime.Now}");

                    MessageBox.Show(message.ToString(), "Информация о заказах", MessageBoxButton.OK, MessageBoxImage.Information);

                    var ordersToDelete = dbContext.Order.Where(o => orderIDsToDelete.Contains(o.ID_Order)).ToList();
                    dbContext.Order.RemoveRange(ordersToDelete);

                    dbContext.SaveChanges();
                }

                Close();
            }
        }
    }
}
