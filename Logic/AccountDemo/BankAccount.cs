namespace Kong.ApiExpert.Logic.AccountDemo
{
    public partial class BankAccount : Account, IBankAccount
    {
        public override string GetClassName()
        {
            return "BankAccount";
        }

        public decimal Deposit(decimal amount)
        {
            return Balance + amount;
        }

        public decimal Withdraw(decimal amount)
        {
            return Balance - amount;

           
        }

        public int MyProperty { get; set; }
    
    
    
    
    
    
    
    }
}
