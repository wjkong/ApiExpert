using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Web.Script.Services;
using System.Net;
using System.IO;
using System.Text;

namespace Kong.ApiExpert.Web.Member
{
    public partial class MyPhoto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static string GetMyPhotos(int pageIndex, int pageSize)
        {
            string result = string.Empty;

            try
            {
                string uri = @"https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=444944a3544fd05499d50adaaa0d5188&user_id=135358381%40N04&&per_page={0}&page={1}&format=json&nojsoncallback=1";

                uri = string.Format(uri, pageSize, pageIndex);

                var uriBuilder = new UriBuilder(uri);

                var request = WebRequest.Create(uriBuilder.ToString());
                request.Method = "GET";

                //request.SignRequest(
                //    new Tokens
                //    {
                //        ConsumerKey = "e3NrQ4Lh6j3aVLBv-_hukg",
                //        ConsumerSecret = "f7xptWlZpbUcym_Q-DU2CRxRd78",
                //        AccessToken = "9kUT1RaLmU8xl4h348n7FSqgP2oDJUDG",
                //        AccessTokenSecret = "KdmD20ewtRFrX5EpE0UrUajMB_4"
                //    }
                //).WithEncryption(EncryptionMethod.HMACSHA1).InHeader();

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