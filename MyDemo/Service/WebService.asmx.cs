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
    }
}
