using Common.Interfaces;
using Microsoft.Practices.Unity;

namespace Kong.ApiExpert.Logic.Initialization
{
    public class Initialize
    {
        public static void RegisterTypes(IUnityContainer container)
        {
            container.RegisterType<IAccountMgr, AccountMgr>();
        }
    }
}
