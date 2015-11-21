using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using DAL;

namespace Logic
{
    public class CommentMgr
    {
        CommentDacMgr commentDac = new CommentDacMgr();

        public bool Add(Feedback feedback)
        {
            if (feedback.Description.Length > 200)
                feedback.Description = feedback.Description.Substring(0, 196) + " ...";
                    
            return commentDac.InsertComment(feedback);
        }

        public bool AddFeedback(Feedback feedback)
        {
            return commentDac.InsertFeedback(feedback);
        }


        public List<Feedback> GetByUrl(Feedback feedback)
        {
            return commentDac.SelectByUrl(feedback);
        }



        public SiteStat GetSiteStat(string url)
        {
            if (!string.IsNullOrEmpty(url) && url == "http://apiexpert.net/")
                url = "http://apiexpert.net/Default.aspx";

            return commentDac.SelectSiteStatByUrl(url);
        }
    }
}
