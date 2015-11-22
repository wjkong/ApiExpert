using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;

namespace Kong.ApiExpert.DAL
{
    public class DataAccessBase
    {
        protected string ConnectionString
        {
            get
            {
                return ConfigurationManager.ConnectionStrings["ApiExpertConn"].ConnectionString;
            }
        }


    }
}
