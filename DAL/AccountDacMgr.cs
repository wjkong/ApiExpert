using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using Kong.ApiExpert.Model;

namespace Kong.ApiExpert.DAL
{
    public class AccountDacMgr : DataAccessBase
    {
        protected SqlDataReader dreader;

        public bool InsertUser(Account info)
        {
            bool success = false;
            SqlCommand cmd = null;

            try
            {
                using (var connection = new SqlConnection(ConnectionString))
                {
                    cmd = new SqlCommand();

                    cmd.CommandText = @"INSERT INTO [User] (UserName, Password) VALUES (@UserName, @Password)";
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = connection;
                    cmd.Parameters.AddWithValue("@UserName", info.UserName);
                    cmd.Parameters.AddWithValue("@Password", info.Password);

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

        public bool LoginDAC(Account info)
        {
            bool flag = false;


            SqlCommand cmd = null;
         
            try
            {
                using (var connection = new SqlConnection(ConnectionString))
                {
                    cmd = new SqlCommand();

                    cmd.CommandText = @"SELECT * FROM [User] WHERE UserName = @UserName AND Password = @Password";
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = connection;
                    cmd.Parameters.AddWithValue("@Password", info.Password);
                    cmd.Parameters.AddWithValue("@UserName", info.UserName);


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
