﻿using System.Net;
using System.Text;
using System.Web.Script.Services;
using System.Web.Services;

namespace Kong.ApiExpert.Web.Tool
{
    public partial class currency_history : System.Web.UI.Page
    {
   
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