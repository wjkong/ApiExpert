using Kong.ApiExpert.Model;
using SimpleOAuth;
using System;
using System.IO;
using System.Net;
using System.Text;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;

namespace Kong.ApiExpert.Web.Search
{
    public partial class Local_Business_Search : System.Web.UI.Page
    {
     
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        //public static string RetrieveLocalInfo(string term, string location, int startIndex, int pageSize, int radius)
        public static string RetrieveLocalInfo(ParamBusiness business)
        {
            var result = string.Empty;

            try
            {
                var uri = @"http://api.yelp.com/v2/search/?term={0}&location={1}&limit={2}&offset={3}&radius_filter={4}&sort=2";

                uri = string.Format(uri, HttpUtility.UrlEncode(business.Term), HttpUtility.UrlEncode(business.Location), business.PageSize, business.StartIndex, business.Radius);

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

                var response = (HttpWebResponse)request.GetResponse();
                using (var stream = new StreamReader(response.GetResponseStream(), Encoding.UTF8))
                {
                    result = stream.ReadToEnd();
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