namespace Kong.ApiExpert.Logic.AccountDemo
{
    public enum NAccountType
    {
        CheckingAccount,
        SavingAccount,
        Visa
    }
    public abstract class Account
    {
        public decimal Balance { get; set; }
        public string AccountNumber { get; set; }

        public virtual string GetClassName()
        {
            return "Account";
        }
    }
}
