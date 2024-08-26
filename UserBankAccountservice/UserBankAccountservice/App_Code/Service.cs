using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Data;
using System.Data.SqlClient;
// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service" in code, svc and config file together.
public class Service : IService
{

	SqlConnection Con = new SqlConnection(@"server=LAPTOP-7EKU67CU\SQLEXPRESS; database=Shopping_DB; Integrated Security=true");
	
	
	
	public string checkbal(string accno)
	{
		string bal = "";
		string str = "select Account_Balance from Account_TB where Account_Number='" + accno + "'";
		SqlCommand cmd = new SqlCommand(str, Con);
		Con.Open();
		SqlDataReader dr = cmd.ExecuteReader();
		while (dr.Read())
		{
			bal = dr["Account_Balance"].ToString();
		}
		Con.Close();
		return bal;
	}
	public int updatebal(int accno, int bal)
    {
		if (Con.State == ConnectionState.Open)
		{
			Con.Close();
		}
		string str = "update Account_TB set Account_Balance=" + bal + " where Account_Number= " + accno + "";
		SqlCommand cmd = new SqlCommand(str, Con);
		Con.Open();
		int i = cmd.ExecuteNonQuery();
		Con.Close();
		return i;
    }
   public string GetData(int value)
	{
		return string.Format("You entered: {0}", value);
	}

	public CompositeType GetDataUsingDataContract(CompositeType composite)
	{
		if (composite == null)
		{
			throw new ArgumentNullException("composite");
		}
		if (composite.BoolValue)
		{
			composite.StringValue += "Suffix";
		}
		return composite;
	}
}
