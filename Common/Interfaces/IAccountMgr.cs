using Kong.ApiExpert.Model;

namespace Common.Interfaces
{
    public interface IAccountMgr
    {
        //bool InsertUser();
        bool Login();
        void SetClone(Account account);
    }

    public interface IAccountDacMgr
    {
        //bool InsertUser();
        bool LoginDAC();
        void SetClone(Account account);
    }
}
