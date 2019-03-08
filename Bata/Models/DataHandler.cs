using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Bata.Models
{
    public class DataHandler
    {
        private SqlConnection con;



        public DataHandler()
        {
            con = new SqlConnection("Data Source=DESKTOP-C6MPVHD;Initial Catalog=Rough;User ID=sa;Password=12345");
        }
    }
}