using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Kong.ApiExpert.Web
{
    public partial class LogOut : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            this.Session.Clear();
            this.Session.Abandon();
            base.Response.Redirect("~/Default.aspx") ;
        }
    }
}