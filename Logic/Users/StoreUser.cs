namespace Kong.ApiExpert.Logic.Users
{
    public class StoreUser : UserBase
    {
        public override UserBase CreateInstance()
        {
            return new StoreUser();
        }
    }
}
