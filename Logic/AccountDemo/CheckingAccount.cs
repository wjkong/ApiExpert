using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Kong.ApiExpert.Logic.AccountDemo
{
    public class CheckingAccount : BankAccount
    {
        public override string GetClassName()
        {
            return "CheckingAccount";
        }
    }
}
