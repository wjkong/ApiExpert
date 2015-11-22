using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using Kong.ApiExpert.Logic;
using Kong.ApiExpert.Model;
using System.Web.Services;
using System.Web.Script.Services;
using System.Net;
using System.Text;
using Newtonsoft.Json;

namespace Kong.ApiExpert.Web
{
    public partial class Login : System.Web.UI.Page
    {
        public class RecaptchaApiResponse
        {
            public bool Success { get; set; }
            public List<string> ErrorCodes { get; set; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static string LoginUser(string username, string password, string response)
        {
            string result = string.Empty;

            try
            {
                if (!IsRobot(response))
                {
                    Kong.ApiExpert.Logic.AccountMgr accountMgr = new AccountMgr();
                    Account account = new Account();
                    account.UserName = username;
                    account.Password = password;

                    if (accountMgr.Login(account))
                    {
                        FormsAuthentication.SetAuthCookie(account.UserName, false);

                        result = "OK";
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return result;
        }

        private static bool IsRobot(string response)
        {
            bool result = true;

            var secret = @"6Lfi5QoTAAAAACkJ1jBQveoORsrsUsHl2Op8pHUt";
            string uri = "https://www.google.com/recaptcha/api/siteverify?secret={0}&response={1}";
            uri = string.Format(uri, secret, response);

            using (WebClient client = new WebClient())
            {
                client.Encoding = Encoding.UTF8;
                client.Headers.Add(HttpRequestHeader.ContentType, "application/json");

                var googleResponse = client.DownloadString(uri);

                RecaptchaApiResponse apiResponse = JsonConvert.DeserializeObject<RecaptchaApiResponse>(googleResponse);

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