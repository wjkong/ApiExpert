using Common.Interfaces;
using Kong.ApiExpert.Model;
using Microsoft.Practices.ServiceLocation;

namespace Kong.ApiExpert.Logic
{
    public class AccountMgr : Account, IAccountMgr
    {
        public bool Login()
        {
            var dacMgr = ServiceLocator.Current.GetInstance<IAccountDacMgr>();
            
            return dacMgr.LoginDAC();
        }

  
        public void SetClone(Account account)
        {
            var dacMgr = ServiceLocator.Current.GetInstance<IAccountDacMgr>();

            dacMgr.SetClone(account);
        }
    }
}
