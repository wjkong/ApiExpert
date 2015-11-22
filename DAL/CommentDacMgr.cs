using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using Kong.ApiExpert.Model;

namespace Kong.ApiExpert.DAL
{
    public class CommentDacMgr : DataAccessBase
    {
        private SqlDataReader dr;

        public bool InsertFeedback(Feedback feedback)
        {
            bool success = false;
            SqlCommand cmd = null;

            try
            {
                using (var connection = new SqlConnection(ConnectionString))
                {
                    cmd = new SqlCommand();

                    cmd.CommandText = @"INSERT INTO [dbo].[Feedback] ([Type] ,[Url]) VALUES (@Type, @Url)";
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = connection;
                    cmd.Parameters.AddWithValue("@Type", feedback.Type);
                    cmd.Parameters.AddWithValue("@Url", feedback.Url);

                    cmd.Connection.Open();
                    cmd.ExecuteNonQuery();
                }

                success = true;
            }
            catch
            {
                throw;
            }
            finally
            {
                cmd.Connection.Close();
            }

            return success;
        }

        public bool InsertComment(Feedback feedback)
        {
            bool success = false;
            SqlCommand cmd = null;

            try
            {
                using (var connection = new SqlConnection(ConnectionString))
                {
                    cmd = new SqlCommand();

                    cmd.CommandText = @"INSERT INTO [dbo].[Feedback] ([FullText], [Description], [Url], Type, parentId) VALUES (@FullText, @Description, @Url, @Type, @ParentId)";
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = connection;
                    cmd.Parameters.AddWithValue("@FullText", feedback.FullText);
                    cmd.Parameters.AddWithValue("@Description", feedback.Description);
                    cmd.Parameters.AddWithValue("@Url", feedback.Url);
                    cmd.Parameters.AddWithValue("@Type", feedback.Type);
                    cmd.Parameters.AddWithValue("@ParentId", feedback.ParentId);

                    cmd.Connection.Open();
                    cmd.ExecuteNonQuery();
                }

                success = true;
            }
            catch
            {
                throw;
            }
            finally
            {
                cmd.Connection.Close();
            }

            return success;
        }

        public List<Feedback> SelectByUrl(Feedback comment)
        {
            var listOfComment = new List<Feedback>();

             SqlCommand cmd = null;

            try
            {
                using (var connection = new SqlConnection(ConnectionString))
                {
                    cmd = new SqlCommand();

                    cmd.CommandText = @"SELECT Id, Description, CreatedDate, ParentId FROM [Feedback] WHERE URL = @Url AND TYPE = 'COMMENT'";
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = connection;

                    cmd.Parameters.AddWithValue("@Url", comment.Url);

                    cmd.Connection.Open();

                    dr = cmd.ExecuteReader();

                    while (this.dr.Read())
                    {
                        var comm = new Feedback();
                        comm.Id = Convert.ToInt32(dr["Id"]);
                        comm.Description = dr["Description"].ToString();
                        comm.TimeCreated = Convert.ToDateTime(dr["CreatedDate"]);
                        comm.ParentId = Convert.ToInt32(dr["ParentId"]);

                        listOfComment.Add(comm);
                    }
                }
            }
            catch
            {
                throw;
            }
            finally
            {
                if (this.dr != null)
                {
                    this.dr.Close();
                }

                cmd.Connection.Close();
            }

            return listOfComment;
        }

        public SiteStat SelectSiteStatByUrl(string url)
        {
            var listOfComment = new List<Feedback>();
            
            SiteStat siteStat = new SiteStat();

            SqlCommand cmd = null;

            try
            {
                using (var connection = new SqlConnection(ConnectionString))
                {
                    cmd = new SqlCommand();

                    cmd.CommandText = @"DECLARE @totalLike int, @totalDislike int, @totalComment int
                                        SELECT @totalLike = count([Id])
                                        FROM [dbo].[Feedback]
                                        WHERE TYPE = 'LIKE' AND URL = @URL
                                        SELECT @totalDislike = count([Id])
                                        FROM [dbo].[Feedback]
                                        WHERE TYPE = 'DISLIKE' AND URL = @URL
                                        SELECT @totalComment = count([Id])
                                        FROM [dbo].[Feedback]
                                        WHERE TYPE = 'COMMENT' AND URL = @URL

                                        select @totalLike AS totalLike, @totalDislike AS totalDislike, @totalComment AS totalComment
                                    ";
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = connection;

                    cmd.Parameters.AddWithValue("@Url", url);

                    cmd.Connection.Open();

                    dr = cmd.ExecuteReader(CommandBehavior.SingleRow);

                    if (dr.Read())
                    {
                        siteStat.TotalLike = Convert.ToInt32(dr["TotalLike"]);
                        siteStat.TotalDislike = Convert.ToInt32(dr["TotalDislike"]);
                        siteStat.TotalComment = Convert.ToInt32(dr["TotalComment"]);
                    }
                }
            }
            catch
            {
                throw;
            }
            finally
            {
                if (this.dr != null)
                {
                    this.dr.Close();
                }

                cmd.Connection.Close();
            }

            return siteStat;
        }
    }
   
}
