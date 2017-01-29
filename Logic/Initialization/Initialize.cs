using Microsoft.Practices.Unity;
using Common.Interfaces;

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
