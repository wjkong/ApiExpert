using System.Net;
using System.Text;
using System.Web.Script.Services;
using System.Web.Services;

namespace Kong.ApiExpert.Web.App
{
    public partial class place_finder : System.Web.UI.Page
    {
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static string RetrievePlaceDetail(string placeId)
        {
            var result = string.Empty;

            try
            {
                var uri = "https://maps.googleapis.com/maps/api/place/details/json?placeid={0}&key=AIzaSyBn29JtdRi1q9yt7HV2DCBl_zvtxiBpnaE";

                uri = string.Format(uri, placeId);

                using (WebClient client = new WebClient())
                {
                    client.Encoding = Encoding.UTF8;
                    client.Headers.Add(HttpRequestHeader.ContentType, "application/json");

                    result = client.DownloadString(uri);
                }

                return result;
            }
            catch
            {
                throw;
            }
        }
    }
}