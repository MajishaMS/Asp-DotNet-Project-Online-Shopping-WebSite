using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace ShopCart
{
    public class ConnectionClass
    {
        SqlConnection Con;
        SqlCommand cmd;
        public ConnectionClass()
        {
            Con = new SqlConnection(@"server=LAPTOP-7EKU67CU\SQLEXPRESS; database=Shopping_DB; Integrated Security=true");
        }
        public int FunNonQuery(string str)
        {
            if (Con.State == ConnectionState.Open)
            {
                Con.Close();
            }
            cmd = new SqlCommand(str, Con);
            Con.Open();
            int i = cmd.ExecuteNonQuery();
            Con.Close();
            return i;
        }
        public string FunScalar(string str)
        {
            if (Con.State == ConnectionState.Open)
            {
                Con.Close();
            }
            cmd = new SqlCommand(str, Con);
            Con.Open();
            string d = cmd.ExecuteScalar().ToString();
            Con.Close();
            return d;
        }
        public SqlDataReader FunReader(string str)
        {
            if (Con.State == ConnectionState.Open)
            {
                Con.Close();
            }
            cmd = new SqlCommand(str, Con);
            Con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;
        }
        public DataSet FunDataAdapterDataSet(string str)
        {
            if (Con.State == ConnectionState.Open)
            {
                Con.Close();
            }
            SqlDataAdapter da = new SqlDataAdapter(str, Con);
            DataSet ds = new DataSet();
            da.Fill(ds);

            return ds;
        }
        public DataTable FunDataAdapterDataTable(string str)
        {
            if (Con.State == ConnectionState.Open)
            {
                Con.Close();
            }
            SqlDataAdapter da = new SqlDataAdapter(str, Con);
            DataTable ds = new DataTable();
            da.Fill(ds);
            return ds;

        }

    }
}