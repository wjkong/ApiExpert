using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Script.Services;
using System.Net;
using System.Text;
using SimpleOAuth;
using System.IO;
using Newtonsoft.Json;
using System.Xml.Linq;
using System.Xml.XPath;
using Logic;
using Model;

namespace MyDemo.Service
{
    /// <summary>
    /// Summary description for WebService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class WebService : System.Web.Services.WebService
    {
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public string GetCommentByUrl(string url)
        {
            string result = string.Empty;

            try
            {
                var commentMgr = new CommentMgr();

                var feedback = new Feedback();
                           
                feedback.Url = url;

                var listOfComment = commentMgr.GetByUrl(feedback);

                JsonSerializer _jsonWriter = new JsonSerializer
                {
                    NullValueHandling = NullValueHandling.Ignore
                };

                result = JsonConvert.SerializeObject(listOfComment, new JsonSerializerSettings { DefaultValueHandling = DefaultValueHandling.Ignore });
             
                return result;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }


        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public string AddComment(string content, string url, int parentId)
        {

            string result = string.Empty;

            try
            {
                var commentMgr = new CommentMgr();

                var feedback = new Feedback();

                feedback.FullText = content;
                feedback.Description = content;
                feedback.Url = url;
                feedback.Type = "COMMENT";
                feedback.ParentId = parentId;

                commentMgr.Add(feedback);
                           

                return result;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public string GetStat(string url)
        {
            string result = string.Empty;

            try
            {
                var commentMgr = new CommentMgr();

                SiteStat siteStat = commentMgr.GetSiteStat(url);

                result = JsonConvert.SerializeObject(siteStat);

                return result;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public string AddFeedback(string url, string type)
        {
            string result = string.Empty;
          
            try
            {
                var commentMgr = new CommentMgr();

                var feedback = new Feedback();

                feedback.Url = url;
                feedback.Type = type;

                commentMgr.AddFeedback(feedback);

                result = JsonConvert.SerializeObject(feedback);
            }
            catch
            {
            }

            return result;
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public string AddDislike()
        {
            string result = string.Empty;

            try
            {
            

                return result;
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public string GetCurrencyHistory()
        {

            string result = string.Empty;

            try
            {
                string uri = "http://currencies.apps.grandtrunk.net/getrange/2015-07-01/2015-08-01/usd/cad";

                using (WebClient client = new WebClient())
                {
                    client.Encoding = Encoding.UTF8;
                    //client.Headers.Add(HttpRequestHeader.ContentType, "application/json");

                    result = client.DownloadString(uri);
                }


                string newStr = result;

                string k = newStr.Substring(0, 30);

                return result;
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public string GetPhotos()
        {
            string result = string.Empty;

            try
            {
                string uri = @"https://api.flickr.com/services/rest/?method=flickr.photos.getRecent&api_key=bfdeefe7452c792a9f466a17858baf01&per_page=20&page=1&format=json&nojsoncallback=1";

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
