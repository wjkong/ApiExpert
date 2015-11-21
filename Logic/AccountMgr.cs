using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using Model;

namespace Logic
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
