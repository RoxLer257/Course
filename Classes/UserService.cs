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
            var user = dbContext.Users.FirstOrDefault(u => u.Login == login);

            return user != null ? user.id_Users : -1;
        }
    }
}
