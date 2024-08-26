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
    public partial class CartPage : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                Funselect();
            }
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CategoryDetailsPage.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Session["uid"]);
            //string str1 = "select Count(Reg_Id) from Cart_TB where Reg_Id = " + id + "";
            //string count = ob.FunScalar(str1);
            //int c = Convert.ToInt32(count);
            string ct = "select count(Reg_Id) from Cart_TB where Reg_Id=" + id + "";
            string cn = ob.FunScalar(ct);
            int c = Convert.ToInt32(cn);
            for (int k = 1; k <= c; k++)
            {

                //string st2 = "select * from Cart_TB where Reg_Id=" + id + "";
                //SqlDataReader dr1 = ob.FunReader(st2);
                string st = "select * from Cart_TB where Reg_Id= " + id + "";
                SqlDataReader dr1 = ob.FunReader(st);
                string cartid = "";
                string registid = "";
                string productid = "";
                string productquantity = "";
                string subtotal = "";
                while (dr1.Read())
                {
                    cartid = dr1["Cart_Id"].ToString();
                    registid = dr1["Reg_Id"].ToString();
                    productid = dr1["product_Id"].ToString();
                    productquantity = dr1["product_Quantity"].ToString();
                    subtotal = dr1["Sub_Total"].ToString();
                }
                string dt = DateTime.Now.ToString("HH:mm:ss");

                string str3 = "insert into Order_TB values(" + registid + ", '" + productid + "'," + productquantity + "," + subtotal + ",'Ordered','" + dt + "')";
                int i = ob.FunNonQuery(str3);
                if (i == 1)
                {
                    string del = "delete from Cart_TB where Cart_Id=" + cartid + "";
                    int j = ob.FunNonQuery(del);
                }

            }
            string st1 = "select sum(Sub_Total) from Order_TB where Order_Status='Ordered'";
            string sub = ob.FunScalar(st1);

            int subt = Convert.ToInt32(sub);
            string str5 = "select * from Order_TB where Order_Status='Ordered'";
            SqlDataReader dr2 = ob.FunReader(str5);

            //string registrationid = "";
            int registrationid = 0;

            string d = DateTime.Now.ToString("HH:mm:ss");
            while (dr2.Read())
            {

                registrationid = Convert.ToInt32(dr2["Reg_Id"]);

                //d = Convert.ToDateTime(dr["Bill_Date"]).ToString();
            }
            string str6 = "select max(Bill_Id) from BillTB";
            string idb = ob.FunScalar(str6);

            int newrid = 0;
            if (idb == "")
            {
                newrid = 1;
            }
            else
            {
                string a = idb.Substring(2);
                int r = Convert.ToInt32(a);
                newrid = r + 1;
            }

            string bid = "BO" + newrid;
            Session["Bid"] = bid;

            string str4 = "insert into BillTB values('" + bid + "'," + registrationid + "," + subt + ",'" + d + "')";
            int h = ob.FunNonQuery(str4);
            if (h == 1)
            {
                Response.Redirect("Reciept.aspx");
               
            }



        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            //int q = Convert.ToInt32(Session["quantity"].ToString());
            //int qty = q + 1;
            //int stk = Convert.ToInt32(Session["stock"].ToString());
            ////Label9.Text = qty.ToString();
            //int t = Convert.ToInt32(Session["price"].ToString());
            //if (qty <= stk)
            //{
            //    int sub = t * qty;
            //    string str3 = "update Cart_TB set Product_Quantity= " + qty + ",  Sub_Total= " + sub + " where Cart_Id=" + Session["qid"] + "";
            //    int i = ob.FunNonQuery(str3);
            //    if (i == 1)
            //    {

            //        Funselect();
            //    }
            //}



        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            //int q = Convert.ToInt32(Session["quantity"].ToString());
            //int qty = q - 1;
            //int stk = Convert.ToInt32(Session["stock"].ToString());
            ////Label9.Text = qty.ToString();
            //int t = Convert.ToInt32(Session["price"].ToString());
            //if (qty <= stk)
            //{
            //    int sub = t * qty;
            //    string str3 = "update Cart_TB set Product_Quantity= " + qty + ",  Sub_Total= " + sub + " where Cart_Id=" + Session["qid"] + "";


            //    int i = ob.FunNonQuery(str3);
            //    if (i == 1)
            //    {

            //        Funselect();
            //    }
            //}
        }
        public void Funselect()
        {
            string str = "select Product_TB.Product_Name, Product_TB.Product_Image, Product_TB.Product_Discription,Product_TB.Product_Price,Cart_TB.Cart_Id,Cart_TB.Product_Quantity, Cart_TB.Sub_Total from Product_TB inner join Cart_TB on Product_TB.Product_Id = Cart_TB.Product_Id where Cart_TB.Reg_Id= " + Session["uid"] + "";
            SqlDataReader dr = ob.FunReader(str);
            //int sum = 0;
            string q = "";
            while (dr.Read())
            {
                //int s = Convert.ToInt32(dr["Sub_Total"].ToString());
                q = dr["product_Quantity"].ToString();
                Session["quantity"] = q;
                string p = dr["product_Price"].ToString();
                Session["price"] = p;


            }
            string str1 = "select sum(Sub_Total) from Cart_TB where Reg_Id= " + Session["uid"] + " ";
            string subt = ob.FunScalar(str1);


            Session["sumtotal"] = subt;

            DataSet ds = ob.FunDataAdapterDataSet(str);
            DataList1.DataSource = ds;
            DataList1.DataBind();

            //DataList1.DataSource = ds;
            //DataList1.DataBind();
            Label5.Text = Session["sumtotal"].ToString();


        }

        protected void Button3_Command(object sender, CommandEventArgs e)
        {
            string id = e.CommandArgument.ToString();
            Session["cartid"] = id;
            int idc = Convert.ToInt32(Session["cartid"].ToString());

            string str = "delete from Cart_TB where Cart_Id=" + idc + "";
            int i = ob.FunNonQuery(str);
            if (i == 1)
            {

                Funselect();
            }
        }

        protected void Button4_Command(object sender, CommandEventArgs e)
        {
            string id = e.CommandArgument.ToString();
            //Session["cartid"] = id;
            //int idc = Convert.ToInt32(Session["cartid"].ToString());
            int idc = Convert.ToInt32(id.ToString());
            string qstr = "select Product_Quantity from Cart_TB where Cart_Id=" + idc + "";

            SqlDataReader dr = ob.FunReader(qstr);

            string pq = "";
            while (dr.Read())
            {
                //int s = Convert.ToInt32(dr["Sub_Total"].ToString());
                pq = dr["product_Quantity"].ToString();


            }
            int q = Convert.ToInt32(pq);
            int qty = q + 1;
            int stk = Convert.ToInt32(Session["stock"].ToString());
            //Label9.Text = qty.ToString();
            int t = Convert.ToInt32(Session["price"].ToString());
            if (qty <= stk)
            {
                int sub = t * qty;
                string str3 = "update Cart_TB set Product_Quantity= " + qty + ",  Sub_Total= " + sub + " where Cart_Id=" + idc + "";


                int i = ob.FunNonQuery(str3);
                if (i == 1)
                {

                    Funselect();
                }
            }

        }

        protected void Button5_Command(object sender, CommandEventArgs e)
        {
            string id = e.CommandArgument.ToString();
            //Session["cartid"] = id;
            //int idc = Convert.ToInt32(Session["cartid"].ToString());
            int idc = Convert.ToInt32(id.ToString());
            string qstr = "select Product_Quantity from Cart_TB where Cart_Id=" + idc + "";

            SqlDataReader dr = ob.FunReader(qstr);

            string pq = "";
            while (dr.Read())
            {
                //int s = Convert.ToInt32(dr["Sub_Total"].ToString());
                pq = dr["product_Quantity"].ToString();


            }
            int q = Convert.ToInt32(pq);
            int qty = q - 1;
            int stk = Convert.ToInt32(Session["stock"].ToString());
            //Label9.Text = qty.ToString();
            int t = Convert.ToInt32(Session["price"].ToString());
            if (qty <= stk)
            {
                int sub = t * qty;
                string str3 = "update Cart_TB set Product_Quantity= " + qty + ",  Sub_Total= " + sub + " where Cart_Id=" + idc + "";


                int i = ob.FunNonQuery(str3);
                if (i == 1)
                {
                    Funselect();
                }

            }
        }   
    }
}
