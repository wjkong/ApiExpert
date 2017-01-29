using Common.Interfaces;
using Kong.ApiExpert.Model;
using Microsoft.Practices.ServiceLocation;
using System.Collections.Generic;

namespace Kong.ApiExpert.Logic
{
    public class CommentMgr : ICommentMgr
    {
        public bool Add(Feedback feedback)
        {
            var dacMgr = ServiceLocator.Current.GetInstance<ICommentDacMgr>();

            if (feedback.Description.Length > 200)
                feedback.Description = feedback.Description.Substring(0, 196) + " ...";
                    
            return  dacMgr.InsertComment(feedback);
        }

        public bool AddFeedback(Feedback feedback)
        {
            var dacMgr = ServiceLocator.Current.GetInstance<ICommentDacMgr>();

            return dacMgr.InsertFeedback(feedback);
        }


        public List<Feedback> GetByUrl(Feedback feedback)
        {
            var dacMgr = ServiceLocator.Current.GetInstance<ICommentDacMgr>();

            return dacMgr.SelectByUrl(feedback);
        }



        public SiteStat GetSiteStat(string url)
        {
            var dacMgr = ServiceLocator.Current.GetInstance<ICommentDacMgr>();

            if (!string.IsNullOrEmpty(url) && url == "http://apiexpert.net/")
                url = "http://apiexpert.net/Default.aspx";

            return dacMgr.SelectSiteStatByUrl(url);
        }
    }
}
