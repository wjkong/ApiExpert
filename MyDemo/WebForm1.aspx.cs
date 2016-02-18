using Kong.ApiExpert.Logic;
using Kong.ApiExpert.Logic.Accounts;
using Kong.ApiExpert.Logic.Users;
using System;

namespace Kong.ApiExpert.Web
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Account objAccount = new CheckingAccount();

            //objAccount = new SavingAccount();

            //IBankAccount objBankAccount = new CheckingAccount();

            //objBankAccount.Withdraw(1000.00m);

            //objBankAccount = new SavingAccount();

            //objBankAccount.Deposit(200.00m);

            var user = UserFactory.CreateInstance(NUserType.AdminUser);

            var user2 = UserFactory.CreateInstance(NUserType.StoreUser);

        }
    }
}