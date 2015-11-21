using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using Model;

namespace DAL
{
    public abstract class SQLHelper
    {
        // Methods
        protected SQLHelper()
        {
        }

        public static SqlCommand CreateCommand(string comText)
        {
            SqlCommand command = new SqlCommand();
            command.CommandText = comText;
            command.CommandType = CommandType.StoredProcedure;
            command.Connection = GetConnection();
            return command;
        }

        public static void CreateCommand(SqlCommand com, string comText)
        {
            com.CommandText = comText;
            com.CommandType = CommandType.StoredProcedure;
            com.Connection = GetConnection();
        }

        public static void CreateQuery(SqlCommand com, string comText)
        {
            com.CommandText = comText;
            com.CommandType = CommandType.Text;
            com.Connection = GetConnection();
        }

        private static SqlConnection GetConnection()
        {
            return new SqlConnection(ConfigurationManager.ConnectionStrings["MyDemo"].ToString());
        }

        public static SqlParameter PrepareOutputParam(SqlCommand com, string param)
        {
            SqlParameter parameter = new SqlParameter(param, SqlDbType.Int);
            parameter.Direction = ParameterDirection.Output;
            parameter.Value = 0;
            com.Parameters.Add(parameter);
            return parameter;
        }

        public static DataSet PrepareTables(string[] comText)
        {
            DataSet dataSet = new DataSet();
            SqlDataAdapter adapter = new SqlDataAdapter();
            SqlCommand com = new SqlCommand();
            for (int i = 0; i < comText.Length; i++)
            {
                if (i == Utility.FIRST_TIME)
                {
                    CreateCommand(com, comText[i]);
                    com.Connection.Open();
                }
                else
                {
                    com.CommandText = comText[i];
                }
                adapter.SelectCommand = com;
                adapter.Fill(dataSet, comText[i]);
            }
            com.Connection.Close();
            return dataSet;
        }
    }
}
