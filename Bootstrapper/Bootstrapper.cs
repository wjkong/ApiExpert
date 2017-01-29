using Microsoft.Practices.ServiceLocation;
using Microsoft.Practices.Unity;
using Microsoft.Practices.Unity.Mvc;
using System.Web.Mvc;

namespace Bootstrapper
{
    public class Bootstrapper
    {
        public static IUnityContainer Initialise()
        {
            var container = BuildUnityContainer();

            DependencyResolver.SetResolver(new UnityDependencyResolver(container));

            var locator = new UnityServiceLocator(container);

            ServiceLocator.SetLocatorProvider(() => locator);

            return container;
        }

        private static IUnityContainer BuildUnityContainer()
        {
            var container = new UnityContainer();


            RegisterType(container);

            return container;

        }


        private static void RegisterType(IUnityContainer container)
        {
            Kong.ApiExpert.Logic.Initialization.Initialize.RegisterTypes(container);
            Kong.ApiExpert.DAL.Initialization.Initialize.RegisterTypes(container);

        }
    }
}
