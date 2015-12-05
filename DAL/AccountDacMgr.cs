using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using Kong.ApiExpert.Model;

namespace Kong.ApiExpert.DAL
{
    public class AccountDacMgr : Account
    {
        protected SqlDataReader dreader;
        
        public AccountDacMgr(Account info) : base(info)
        {
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

                    cmd.CommandText = @"SELECT * FROM [User] WHERE UserName = @UserName AND Password = @Password AND (Status = 'C' or Status = 'A')";
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
