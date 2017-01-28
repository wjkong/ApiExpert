using NLog;
using System;

namespace Kong.ApiExpert.Web
{
    public partial class Default : System.Web.UI.Page
    {
        private Logger logMgr = LogManager.GetCurrentClassLogger();

        protected void Page_Load(object sender, EventArgs e)
        {
            logMgr.Info("Hello World");

          
        }
    }
}