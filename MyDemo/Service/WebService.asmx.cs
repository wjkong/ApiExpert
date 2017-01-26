using Kong.ApiExpert.Logic;
using Kong.ApiExpert.Model;
using Newtonsoft.Json;
using System;
using System.Net;
using System.Text;
using System.Web.Script.Services;
using System.Web.Services;

namespace Kong.ApiExpert.Web.Service
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
        public static string GetCommentByUrl(string url)
        {
            var result = string.Empty;

            try
            {
                var commentMgr = new CommentMgr();

                var feedback = new Feedback
                {
                    Url = url
                };

               
                var listOfComment = commentMgr.GetByUrl(feedback);

                var _jsonWriter = new JsonSerializer
                {
                    NullValueHandling = NullValueHandling.Ignore
                };

                result = JsonConvert.SerializeObject(listOfComment, new JsonSerializerSettings { DefaultValueHandling = DefaultValueHandling.Ignore });

                return result;
            }
            catch
            {
                throw;
            }
        }


        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static string AddComment(string content, string url, int parentId)
        {

            var result = string.Empty;

            try
            {
                var commentMgr = new CommentMgr();

                var feedback = new Feedback
                {
                    FullText = content,
                    Description = content,
                    Url = url,
                    Type = "COMMENT",
                    ParentId = parentId
                };              

                commentMgr.Add(feedback);


                return result;
            }
            catch
            {
                throw;
            }
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static string GetStat(string url)
        {
            var result = string.Empty;

            try
            {
                var commentMgr = new CommentMgr();

                var siteStat = commentMgr.GetSiteStat(url);

                result = JsonConvert.SerializeObject(siteStat);

                return result;
            }
            catch
            {
                throw;
            }
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static string AddFeedback(string url, string type)
        {
            var result = string.Empty;

            try
            {
                var commentMgr = new CommentMgr();

                var feedback = new Feedback
                {
                    Url = url,
                    Type = type
                };

                commentMgr.AddFeedback(feedback);

                result = JsonConvert.SerializeObject(feedback);
            }
            catch
            {
                throw;
            }

            return result;
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static string AddDislike()
        {
            var result = string.Empty;

            try
            {


                return result;
            }
            catch
            {
                throw;
            }

        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static string GetCurrencyHistory()
        {

            var result = string.Empty;

            try
            {
                var uri = "http://currencies.apps.grandtrunk.net/getrange/2015-07-01/2015-08-01/usd/cad";

                using (WebClient client = new WebClient())
                {
                    client.Encoding = Encoding.UTF8;
                    //client.Headers.Add(HttpRequestHeader.ContentType, "application/json");

                    result = client.DownloadString(uri);
                }


                var newStr = result;

                var k = newStr.Substring(0, 30);

                return result;
            }
            catch
            {
                throw;
            }

        }
    }
}
