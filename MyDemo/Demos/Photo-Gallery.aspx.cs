using System;
using System.Web.UI;

namespace Kong.ApiExpert.Web.Demos
{
    public partial class PhotoGallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Page.Title = "Photo Gallery";
            }
        }


    }
}