using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kong.ApiExpert.Web
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.Title = "Api Expert - " + Page.Title;
            hypLogOut.Visible = Request.IsAuthenticated;
            hypLogin.Visible = !hypLogOut.Visible;
            MyAccountMenu.Visible = hypLogOut.Visible;
        }
    }
}
