using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Web.Services;
using System.Web.Script.Services;
using System.Text;

namespace Kong.ApiExpert.Web.App
{
    public partial class place_finder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static string RetrievePlaceDetail(string placeId)
        {
            string result = string.Empty;

            try
            {
                string uri = "https://maps.googleapis.com/maps/api/place/details/json?placeid={0}&key=AIzaSyBn29JtdRi1q9yt7HV2DCBl_zvtxiBpnaE";

                uri = string.Format(uri, placeId);

                using (WebClient client = new WebClient())
                {
                    client.Encoding = Encoding.UTF8;
                    client.Headers.Add(HttpRequestHeader.ContentType, "application/json");

                    result = client.DownloadString(uri);
                }

                return result;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}