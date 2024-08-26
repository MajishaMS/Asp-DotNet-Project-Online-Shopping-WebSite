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
    public partial class ProductDetails : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //string n = Session["pid"].ToString();
                string str = "select Product_Name,Product_Image,Product_Discription,Product_Price,Product_Status,Stock from Product_TB where Product_Id='" + Session["pid"] + "'";

                DataTable dt = ob.FunDataAdapterDataTable(str);

                DataList1.DataSource = dt;

                DataList1.DataBind();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "select max(Cart_Id) from Cart_TB";
            string id = ob.FunScalar(str);


            int newrid = 0;
            if (id == "")
            {
                newrid = 1;
            }
            else
            {
                //string c = id.Substring(2);
                int rid = Convert.ToInt32(id);
                newrid = rid + 1;
            }
            //string p = "~/PHS/" + FileUpload1.FileName;
            //FileUpload1.SaveAs(MapPath(p));
            //string cid = "CO" + newrid;
            string total = "";
            string st = "";
            //string subt = "";
            String p = "select Product_Price,Stock from Product_TB where Product_Id='" + Session["pid"] + "'";
            SqlDataReader dr = ob.FunReader(p);
            while (dr.Read())
            {
                total = dr["Product_Price"].ToString();
                Session["price"] = total;
                st = dr["Stock"].ToString();
                Session["stock"] = st;
            }
            //String sub = "select sum(Sub_Total) from Cart_TB";
            //SqlDataReader dr1 = ob.FunReader(sub);
            //while (dr1.Read())
            //{
            //    subt = dr["Sub_Total"].ToString();

            //}

            //int carttotal= Convert.ToInt32(subt);
            //carttotal += subtotal;

            //int qt = Convert.ToInt32(st);

            //int t = Convert.ToInt32(total);
            //int qty = 1;


            ListItem li = new ListItem();
            li.Text = "1";
            li.Value = "1";
            DropDownList1.Items.Insert(0, li);

            int qty = Convert.ToInt32(DropDownList1.SelectedItem.Text);
            Session["quantity"] = qty;
            int stk = Convert.ToInt32(st.ToString());
            int t = Convert.ToInt32(total.ToString());
            if (qty <= stk)
            {
                int sub = t * qty;

                //string str3 = "update Cart_TB set Product_Quantity= " + qty + ",  Sub_Total= " + sub + " where Cart_Id=" + Session["qid"] + "";

                //int i = ob.FunNonQuery(str3);
                ////string str1 = "select sum(Sub_Total) from Cart_TB";
                ////string subt = ob.FunScalar(str1);
                //Label12.Text = sub.ToString();



                string str1 = "insert into Cart_TB values(" + newrid + ", '" + Session["uid"] + "','" + Session["pid"] + "'," + qty + "," + sub + ")";
                int i = ob.FunNonQuery(str1);
                if (i == 1)
                {
                    Session["qid"] = newrid;
                    //Response.Redirect("CartDetails.aspx");
                    Response.Redirect("CartPage.aspx");
                }
                else
                {
                    Response.Redirect("ProductDetails.aspx");
                }

            }
            else
            {
                Label7.Visible = true;
                Label7.Text = "select a valid Quantity";
            }








        }


    }
}
