using System.Configuration;

namespace Kong.ApiExpert.DAL
{
    public abstract class DataAccessBase
    {
        private readonly ConnectionStringSettings _connStrSetting = ConfigurationManager.ConnectionStrings["ApiExpertConn"];
        protected readonly string ConnectionString = ConfigurationManager.ConnectionStrings["ApiExpertConn"].ToString();


        //protected DbConnection CreateConnection()
        //{
        //    return CreateConnection(_connStrSetting);
        //}

        //private DbConnection CreateConnection(ConnectionStringSettings connStrSetting)
        //{
        //    DbConnection conn = null;

        //    if (connStrSetting.ProviderName.Eq("System.Data.SqlClient"))
        //    {
        //        conn = new SqlConnection();
        //    }
        //    //else if (connStrSetting.ProviderName.Eq("Oracle.ManagedDataAccess.Client"))
        //    //{
        //    //    conn = new OracleConnection();
        //    //}
        //    else
        //    {
        //        var factory = DbProviderFactories.GetFactory(connStrSetting.ProviderName);

        //        conn = factory.CreateConnection();
        //    }

        //    conn.ConnectionString = connStrSetting.ConnectionString;

        //    return conn;

        //}
    }
}
