using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Kong.ApiExpert.DAL;
using Kong.ApiExpert.Model;

namespace Kong.ApiExpert.Logic
{
    public class AccountMgr
    {
        protected AccountDacMgr dacMgr = new AccountDacMgr();

        public bool Login(Account info)
        {
            return dacMgr.LoginDAC(info);
        }
    }
}
