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
    public partial class CategoryDetailsPage : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //string cn = "select Cat_Id from CategoryTb where Cat_Name='" + Session["cna"] + "'";
                //SqlDataReader dr = ob.FunReader(cn);
                //while (dr.Read())
                //{
                //    String cid = dr["Cat_Id"].ToString();
                //    Session["cid"] = cid;
                //}
                string str = "select Product_Id, Product_Name,Product_Discription,Product_Image,Product_Price,Product_Status from Product_TB where Cat_Id='" + Session["cid"] + "'";
                DataTable ds = ob.FunDataAdapterDataTable(str);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            string id = e.CommandArgument.ToString();
            Session["pid"] = id;
            //Response.Redirect("ProductDetailsPage.aspx");
            Response.Redirect("ProductDetails.aspx");
            //Response.Redirect("CartAddPage.aspx");
        }
    }
}