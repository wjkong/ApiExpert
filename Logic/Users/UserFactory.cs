using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Kong.ApiExpert.Logic.Users
{
    public enum NUserType
    {
        AdminUser,
        StoreUser,
    }

    public static class UserFactory
    {
        private static Dictionary<NUserType, UserBase> dicAllUser = new Dictionary<NUserType, UserBase>(); 

        private static void RegisterUser(NUserType userType, UserBase user)
        {
            dicAllUser.Add(userType, user);
        }

        public static void RegisterAllUser()
        {
            RegisterUser(NUserType.AdminUser, new AdminUser());
            RegisterUser(NUserType.StoreUser, new StoreUser());
        }

        public static UserBase CreateInstance(NUserType userType)
        {
            UserBase user = null;

            if (dicAllUser.TryGetValue(userType, out user))
            {
                return user.CreateInstance();
            }

            return user;
        }
    }
}
