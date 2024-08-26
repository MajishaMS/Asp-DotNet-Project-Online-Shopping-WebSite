using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace ShopCart
{
    public partial class ProductEdit : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridFun();
        }
        public void GridFun()
        {
            string str = "select * from Product_TB";
            DataSet ds = ob.FunDataAdapterDataSet(str);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridFun();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string pid = Session["uid"].ToString();
            string p = "";
            if ((FileUpload1.PostedFile != null) && (FileUpload1.PostedFile.ContentLength > 0))
            {
                p = "~/PHS/" + FileUpload1.FileName;
                FileUpload1.SaveAs(MapPath(p));

                Image1.ImageUrl = p;
            }
            else
            {
                string f = "select Product_Image from Product_TB  where Product_Id = '" + pid + "'";
                SqlDataReader dr1 = ob.FunReader(f);
                while (dr1.Read())
                {
                    p = dr1["Product_image"].ToString();
                }
            }

            string str2 = "update Product_TB set Product_Name='" + TextBox1.Text + "', Product_Image='" + p + "',Product_Discription= '" + TextBox2.Text + "',Product_Price= " + TextBox3.Text + ",Product_Status='" + TextBox4.Text + "',Stock=" + TextBox5.Text + " where Product_Id = '" + pid + "'";
            int i = ob.FunNonQuery(str2);
            if (i == 1)
            {
                GridFun();


            }
        }

        protected void LinkButton1_Command1(object sender, CommandEventArgs e)
        {
            string id = e.CommandArgument.ToString();
            Session["uid"] = id;
            //FileUpload1.Visible = true;
            DListfun();
        }
        public void DListfun()
        {
            Panel3.Visible = true;
            string pid = Session["uid"].ToString();
            string str1 = "select * from Product_TB where Product_Id = '" + pid + "'";
            SqlDataReader dr = ob.FunReader(str1);
            while (dr.Read())
            {
                TextBox1.Text = dr["Product_Name"].ToString();
                Image1.ImageUrl = dr["Product_Image"].ToString();
                TextBox2.Text = dr["Product_Discription"].ToString();
                TextBox3.Text = dr["Product_Price"].ToString();
                TextBox4.Text = dr["Product_Status"].ToString();
                TextBox5.Text = dr["Stock"].ToString();

            }

        }

    }
}
