namespace Kong.ApiExpert.Logic.Users
{
    public abstract class UserBase
    {
        public string UserName { get; set; }
        public string Password { get; set; }

        public abstract UserBase CreateInstance();
    }
}
