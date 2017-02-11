using System;
using System.Web.UI;

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
