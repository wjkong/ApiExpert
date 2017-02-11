using Common.Interfaces;
using Kong.ApiExpert.Model;
using Microsoft.Practices.ServiceLocation;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Net;
using System.Text;
using System.Web.Script.Services;
using System.Web.Security;
using System.Web.Services;

namespace Kong.ApiExpert.Web
{
    public partial class Login : System.Web.UI.Page
    {
        public class RecaptchaApiResponse
        {
            public bool Success { get; set; }
            public List<string> ErrorCodes { get; set; }
        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static string LoginUser(string username, string password, string response)
        {
            var result = string.Empty;

            try
            {
                if (!IsRobot(response))
                {
                    var accountMgr = ServiceLocator.Current.GetInstance<IAccountMgr>();

                    var account = new Account
                    {
                        UserName = username,
                        Password = password
                    };

                    accountMgr.SetClone(account);

                    if (accountMgr.Login())
                    {
                        FormsAuthentication.SetAuthCookie(username, false);

                        result = "OK";
                    }
                }
            }
            catch
            {
                throw;
            }

            return result;
        }

        private static bool IsRobot(string response)
        {
            var result = true;
            return !result;

            var secret = @"6Lfi5QoTAAAAACkJ1jBQveoORsrsUsHl2Op8pHUt";
            var uri = "https://www.google.com/recaptcha/api/siteverify?secret={0}&response={1}";
            uri = string.Format(uri, secret, response);

            using (WebClient client = new WebClient())
            {
                client.Encoding = Encoding.UTF8;
                client.Headers.Add(HttpRequestHeader.ContentType, "application/json");

                var googleResponse = client.DownloadString(uri);

                var apiResponse = JsonConvert.DeserializeObject<RecaptchaApiResponse>(googleResponse);

                result = !apiResponse.Success;
            }

            return result;
        }

        //private string GetUserIp()
        //{
        //    var visitorsIpAddr = string.Empty;

        //    if (Request.ServerVariables["HTTP_X_FORWARDED_FOR"] != null)
        //    {
        //        visitorsIpAddr = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
        //    }
        //    else if (!string.IsNullOrEmpty(Request.UserHostAddress))
        //    {
        //        visitorsIpAddr = Request.UserHostAddress;
        //    }

        //    return visitorsIpAddr;
        //}
    }
}