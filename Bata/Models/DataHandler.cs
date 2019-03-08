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
        private SqlDataAdapter da;
        private SqlCommand cmd;

        public DataHandler()
        {
            con = new SqlConnection("Data Source=DESKTOP-C6MPVHD;Initial Catalog=Rough;User ID=sa;Password=12345");
        }

        public DataTable getData(string query)
        {
            DataTable dt = new DataTable();
            try
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = query;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                return dt;
            }
            catch(Exception e)
            {
                return null;
            }
            
        }
    }
}