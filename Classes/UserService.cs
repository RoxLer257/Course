using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CourseProject.Classes
{
    public class UserService
    {
        private CourseEntities dbContext;

        public UserService()
        {
            dbContext = new CourseEntities();
        }

        public int GetUserId(string login)
        {
            // Находим пользователя по логину
            var user = dbContext.Users.FirstOrDefault(u => u.Login == login);

            // Если пользователь найден, возвращаем его идентификатор, иначе возвращаем -1 или другое значение по умолчанию
            return user != null ? user.id_Users : -1;
        }
    }
}
