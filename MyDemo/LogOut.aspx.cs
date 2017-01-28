using System;
using System.Web.Security;

namespace Kong.ApiExpert.Web
{
    public partial class LogOut : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/Default.aspx") ;
        }
    }
}