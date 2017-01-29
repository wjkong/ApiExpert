using Common.Interfaces;
using Microsoft.Practices.Unity;

namespace Kong.ApiExpert.DAL.Initialization
{
    public class Initialize
    {
        public static void RegisterTypes(IUnityContainer container)
        {
            container.RegisterType<IAccountDacMgr, AccountDacMgr>();
        }
    }
}
