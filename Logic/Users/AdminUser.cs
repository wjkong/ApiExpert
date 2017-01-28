namespace Kong.ApiExpert.Logic.Users
{
    public class AdminUser : UserBase
    {
        public override UserBase CreateInstance()
        {
            return new AdminUser();
        }
    }
}
