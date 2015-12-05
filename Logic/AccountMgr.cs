using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Kong.ApiExpert.DAL;
using Kong.ApiExpert.Model;

namespace Kong.ApiExpert.Logic
{
    public class AccountMgr : Account
    {
        protected AccountDacMgr dacMgr;  

        public AccountMgr(Account info) : base(info)
        {
        }

        public bool Login()
        {
            dacMgr = new AccountDacMgr(this);
            return dacMgr.LoginDAC();
        }
    }
}
