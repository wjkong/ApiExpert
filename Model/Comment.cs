using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Kong.ApiExpert.Model
{
    public class Feedback
    {
        private string _url;

        public int Id { set; get; }
        public string FullText { set; get; }
        public string Description { set; get; }
        public int ParentId { set; get; }
        public int CustID { set; get; }
        public DateTime TimeCreated { set; get; }
        public DateTime TimeUpdated { set; get; }
        public string Type { set; get; }


        public string Url 
        { 
            set
            {
                _url = value;

                if (!string.IsNullOrEmpty(_url) && _url == "http://apiexpert.net/")
                    _url = "http://apiexpert.net/Default.aspx";
            }
            
            get
            {
                return _url;
            }
        }
    }

    public class SiteStat
    {
        public int TotalLike { get; set; }
        public int TotalDislike { get; set; }
        public int TotalComment { get; set; }
        public string ErrorMeg { get; set; }
    }
}
