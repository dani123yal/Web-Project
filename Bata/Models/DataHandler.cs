﻿using System;
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
        private SqlDataAdapter da;
        private SqlCommand cmd;

        public DataHandler()
        {
            con = new SqlConnection("Data Source=DESKTOP-C6MPVHD;Initial Catalog=Rough;User ID=sa;Password=12345");
            con1 = new SqlConnection("workstation id=TestDatabase1.mssql.somee.com;packet size=4096;user id=dani123_SQLLogin_1;pwd=56b4sfiebb;data source=TestDatabase1.mssql.somee.com;persist security info=False;initial catalog=TestDatabase1");
        }

        public DataTable getData(string query)
        {
            DataTable dt = new DataTable();
            try
            {
                con1.Open();
                SqlCommand cmd = con1.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = query;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                con1.Close();
                return dt;
            }
            catch(Exception e)
            {
                throw new Exception("connection error");
            }
            
        }
    }
}