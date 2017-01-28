namespace Kong.ApiExpert.Logic.AccountDemo
{
    public interface IBankAccount 
    {
        decimal Deposit(decimal amount);
        decimal Withdraw(decimal amount);
    }
}
