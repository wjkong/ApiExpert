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
using System.Text;

namespace Kong.ApiExpert.Web.Search
{
    public partial class Job_Search : System.Web.UI.Page
    {
        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    string culture = CultureInfo.CurrentCulture.EnglishName;
        //    string country = culture.Substring(culture.IndexOf('(') + 1, culture.LastIndexOf(')') - culture.IndexOf('(') - 1);   // You could also use a regex, of course
        //    hidCountry.Value = country;

        //}

        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static string RetrieveJobInfo(string query, string country, string state, string city, int startIndex, int pageSize, string sort, int radius, string siteType, string jobType, string fromAge, string userIp, string userAgent)
        {

            string result = string.Empty;

            try
            {
                string uri = "http://api.indeed.com/ads/apisearch?publisher=9598812143323456&format=json&q={0}&co={1}&l={2}%2C+{3}&start={4}&limit={5}&sort={6}&radius={7}&st={8}&jt={9}&fromage={10}&filter=&latlong=1&chnl=&userip={11}&useragent={12}&v=2";

                uri = string.Format(uri, query, country, state, city, startIndex, pageSize, sort, radius, siteType, jobType, fromAge, userIp, userAgent);

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