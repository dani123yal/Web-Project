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
        private SqlConnection con1;
        private SqlConnection con2;
        private SqlDataAdapter da;
        private SqlCommand cmd;

        public DataHandler()
        {
            //con = new SqlConnection("Data Source=DESKTOP-C6MPVHD;Initial Catalog=BataShoeStore;User ID=sa;Password=12345");
            //con1 = new SqlConnection("workstation id=TestDatabase1.mssql.somee.com;packet size=4096;user id=dani123_SQLLogin_1;pwd=56b4sfiebb;data source=TestDatabase1.mssql.somee.com;persist security info=False;initial catalog=TestDatabase1");
            con2 = new SqlConnection("workstation id=BataShoeStore.mssql.somee.com;packet size=4096;user id=dani123yal_SQLLogin_1;pwd=l83zjnxtcf;data source=BataShoeStore.mssql.somee.com;persist security info=False;initial catalog=BataShoeStore");
        }

        public DataTable getData(string query)
        {
            DataTable dt = new DataTable();
            try
            {
                con2.Open();

                SqlCommand cmd = new SqlCommand(query, con2);

                da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                con2.Close();
                return dt;
            }
            catch (Exception e)
            {

                return null;


                throw new Exception("connection error");

            }

        }

        public void iud(string query)
        {
            try
            {
                con2.Open();
                cmd = new SqlCommand(query, con2);
                cmd.ExecuteNonQuery();

                con2.Close();
            }
            catch (Exception e)
            {
                throw new Exception("error" + e.InnerException);
            }

        }

        public User checkCred(string query)
        {
            con2.Open();
            User user = new User();
            cmd = new SqlCommand(query, con2);
            da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con2.Close();
            if (dt.Rows.Count>0)
            {
                user.id = dt.Rows[0].Field<int>("userId");
                user.username = dt.Rows[0].Field<string>("username");
                user.email = dt.Rows[0].Field<string>("email");
                user.password = dt.Rows[0].Field<string>("userPassword");

                return user;
            }

            return null;
        }
    }
}