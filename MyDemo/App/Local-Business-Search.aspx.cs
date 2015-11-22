using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Web.Services;
using System.Web.Script.Services;
using System.Net;
using SimpleOAuth;
using System.IO;
using System.Text;

namespace Kong.ApiExpert.Web.Search
{
    public partial class Local_Business_Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static string RetrieveLocalInfo(string term, string location, int startIndex, int pageSize, int radius)
        {
            string result = string.Empty;

            try
            {
                string uri = @"http://api.yelp.com/v2/search/?term={0}&location={1}&limit={2}&offset={3}&radius_filter={4}&sort=2";

                uri = string.Format(uri, HttpUtility.UrlEncode(term), HttpUtility.UrlEncode(location), pageSize, startIndex, radius);

                var uriBuilder = new UriBuilder(uri);

                var request = WebRequest.Create(uriBuilder.ToString());
                request.Method = "GET";

                request.SignRequest(
                    new Tokens
                    {
                        ConsumerKey = "e3NrQ4Lh6j3aVLBv-_hukg",
                        ConsumerSecret = "f7xptWlZpbUcym_Q-DU2CRxRd78",
                        AccessToken = "9kUT1RaLmU8xl4h348n7FSqgP2oDJUDG",
                        AccessTokenSecret = "KdmD20ewtRFrX5EpE0UrUajMB_4"
                    }
                ).WithEncryption(EncryptionMethod.HMACSHA1).InHeader();

                HttpWebResponse response = (HttpWebResponse)request.GetResponse();
                var stream = new StreamReader(response.GetResponseStream(), Encoding.UTF8);

                result = stream.ReadToEnd();

                return result;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

    }
}