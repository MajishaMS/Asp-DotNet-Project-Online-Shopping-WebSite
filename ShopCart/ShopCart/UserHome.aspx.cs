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
    public partial class UserHome : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Label1.Text = Session["una"].ToString().ToUpperInvariant();
                string str = "select Cat_Id, Cat_Name,Cat_Discription,Cat_Image,Cat_Status from Category_TB";
                DataTable ds = ob.FunDataAdapterDataTable(str);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }

           
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            string id = e.CommandArgument.ToString();
            Session["cid"] = id;
            //Label3.Text = "id";
            Response.Redirect("CategoryDetailsPage.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}