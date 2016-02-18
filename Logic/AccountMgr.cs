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
        protected IAccountDacMgr dacMgr;  

        public AccountMgr(IAccountDacMgr dacMgr)
        {
            this.dacMgr = dacMgr;
           
        }

        public bool Login()
        {
            this.dacMgr.SetClone(this);

            return dacMgr.LoginDAC();
        }
    }
}
