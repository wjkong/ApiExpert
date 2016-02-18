using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Kong.ApiExpert.Logic.Users
{
    public class StoreUser : UserBase
    {
        public override UserBase CreateInstance()
        {
            return new StoreUser();
        }
    }
}
