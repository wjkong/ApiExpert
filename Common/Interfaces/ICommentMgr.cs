using Kong.ApiExpert.Model;
using System.Collections.Generic;

namespace Common.Interfaces
{
    public interface ICommentMgr
    {
        bool Add(Feedback feedback);

        bool AddFeedback(Feedback feedback);

        List<Feedback> GetByUrl(Feedback feedback);

        SiteStat GetSiteStat(string url);
    }

    public interface ICommentDacMgr
    {
        bool InsertComment(Feedback feedback);

        bool InsertFeedback(Feedback feedback);

        List<Feedback> SelectByUrl(Feedback comment);

        SiteStat SelectSiteStatByUrl(string url);
    }
}
