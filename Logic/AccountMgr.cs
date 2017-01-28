using Kong.ApiExpert.Model;

namespace Kong.ApiExpert.Logic
{
    public class AccountMgr : Account
    {
        protected IAccountDacMgr DacMgr;  

        public AccountMgr(IAccountDacMgr dacMgr)
        {
            DacMgr = dacMgr;
           
        }

        public bool Login()
        {
            DacMgr.SetClone(this);

            return DacMgr.LoginDAC();
        }
    }
}
