using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MicNets.BizLogic.Accounts
{
    interface IBankAccount 
    {
        decimal Deposit(decimal amount);
        decimal Withdraw(decimal amount);
    }
}
