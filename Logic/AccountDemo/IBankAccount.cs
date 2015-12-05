using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Kong.ApiExpert.Logic.Accounts
{
    public interface IBankAccount 
    {
        decimal Deposit(decimal amount);
        decimal Withdraw(decimal amount);
    }
}
