using NLog;
using System;
using System.Web.Optimization;
using System.Web.Routing;

namespace Kong.ApiExpert.Web
{
    public class Global : System.Web.HttpApplication
    {
        private Logger logMgr = LogManager.GetCurrentClassLogger();

        protected void Application_Start(object sender, EventArgs e)
        {
            logMgr.Info("ApiExpert Application Start");

            BundleConfig.RegisterBundles(BundleTable.Bundles);
            RouteConfig.RegisterRoutes(RouteTable.Routes);

            Bootstrapper.Bootstrapper.Initialise();
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {
            Exception lastException = Server.GetLastError();

            logMgr.Error(lastException);
        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {
            logMgr.Info("ApiExpert Application End");
        }
    }
}