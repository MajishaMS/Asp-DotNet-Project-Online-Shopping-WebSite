using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace ShopCart
{
    public partial class Reciept : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

            if(!IsPostBack)
            {

           
            int id = Convert.ToInt32(Session["uid"].ToString());
                string billid =Session["Bid"].ToString();
            //string str1 = "select Bill_Id, TotalAmount, Bill_Date from BillTB where Reg_Id=" + id + "";
            string bstr = "select Product_TB.Product_Name, Product_TB.Product_Price,Order_TB.Product_Quantity, Order_TB.Sub_Total,BillTB.Bill_Id, BillTB.TotalAmount, BillTB.Bill_Date from Product_TB inner join Order_TB on Product_TB.Product_Id = Order_TB.Product_Id inner join BillTB on Order_TB.Reg_Id = BillTB.Reg_Id where Order_TB.Reg_Id= " + id + " and Order_TB.Order_Status='Ordered' and BillTB.Bill_Id='"+ billid + "'";
            
            DataSet ds = ob.FunDataAdapterDataSet(bstr);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            SqlDataReader dr = ob.FunReader(bstr);
            while (dr.Read())
            {
                TextBox4.Text = dr["Bill_Id"].ToString();
                TextBox5.Text = dr["Bill_Date"].ToString();
                TextBox7.Text = dr["TotalAmount"].ToString();
                Session["subtotal"] = dr["TotalAmount"].ToString();
                Session["qty"] = dr["Product_Quantity"].ToString();
            }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("PaymentPage.aspx");
           

        }
    }
}