using Kong.ApiExpert.Logic.Accounts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Kong.ApiExpert.Logic.AccountDemo
{
    public abstract class AccountCreator
    {
        public abstract Account CreateAccount();
    }

    public class BankAccountCreator : AccountCreator
    {
        public override Account CreateAccount()
        {
            return new BankAccount();
        }
    }

    public class CableAccountCreator : AccountCreator
    {
        public override Account CreateAccount()
        {
            return new CableAccount();
        }
    }
}
