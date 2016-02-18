using Kong.ApiExpert.Model;
using System.Data;
using System.Data.SqlClient;

namespace Kong.ApiExpert.DAL
{
    public class AccountDacMgr : Account, IAccountDacMgr
    {
        protected SqlDataReader dreader;

        public void SetClone(Account account)
        {
            base.Clone(account);
        }

        public bool InsertUser()
        {
            bool success = false;
            SqlCommand cmd = null;

            try
            {
                using (var connection = SQLHelper.GetConnection())
                {
                    cmd = new SqlCommand();

                    cmd.CommandText = @"INSERT INTO [User] (UserName, Password) VALUES (@UserName, @Password)";
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = connection;
                    cmd.Parameters.AddWithValue("@UserName", UserName);
                    cmd.Parameters.AddWithValue("@Password", Password);

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

        public bool LoginDAC()
        {
            bool flag = false;


            SqlCommand cmd = null;

            try
            {
                using (var connection = SQLHelper.GetConnection())
                {
                    cmd = new SqlCommand();

                    cmd.CommandText = @"SELECT * FROM [User] WHERE UserName = @UserName AND Password = @Password";
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = connection;
                    cmd.Parameters.AddWithValue("@Password", Password);
                    cmd.Parameters.AddWithValue("@UserName", UserName);


                    if (cmd.Connection.State == ConnectionState.Closed)
                    {
                        cmd.Connection.Open();
                    }

                    this.dreader = cmd.ExecuteReader();

                    if (this.dreader.Read())
                    {
                        flag = true;
                    }
                }

            }
            catch
            {
                throw;
            }
            finally
            {
                if (this.dreader != null)
                {
                    this.dreader.Close();
                }

                cmd.Connection.Close();
            }

            return flag;
        }

    }
}
