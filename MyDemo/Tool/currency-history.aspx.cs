﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Web.Script.Services;
using System.Net;
using System.Text;

namespace MyDemo.Tool
{
    public partial class currency_history : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static string GetCurrencyHistory()
        {

            string result = string.Empty;

            try
            {
                string uri = "http://currencies.apps.grandtrunk.net/getrange/2015-07-01/2015-08-01/usd/cad";

                using (WebClient client = new WebClient())
                {
                    client.Encoding = Encoding.UTF8;
                    client.Headers.Add(HttpRequestHeader.ContentType, "application/json");

                    result = client.DownloadString(uri);
                }
                        
                return result;
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
    }
}