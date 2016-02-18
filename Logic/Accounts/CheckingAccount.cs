using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MicNets.BizLogic.Accounts
{
    public class CheckingAccount : BankAccount
    {
        public override string GetClassName()
        {
            return "CheckingAccount";
        }
    }
}
