using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopCart
{
    using System.Data.SqlClient;
    using System.Data;
    public partial class CategoryEdit : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridFun();
        }
        public void GridFun()
        {
            string str = "select * from Category_TB";
            DataSet ds = ob.FunDataAdapterDataSet(str);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string p = "";
            string cid = Session["uid"].ToString();
            if ((FileUpload1.PostedFile != null) && (FileUpload1.PostedFile.ContentLength > 0))
            {
                p = "~/PHS/" + FileUpload1.FileName;
                FileUpload1.SaveAs(MapPath(p));

                Image1.ImageUrl = p;
            }
            else
            {
                string f = "select Cat_Image from Category_TB  where Cat_Id = '" + cid + "'";
                SqlDataReader dr1 = ob.FunReader(f);
                while (dr1.Read())
                {
                    p = dr1["Cat_image"].ToString();
                }
            }
            string str2 = "update Category_TB set Cat_Name='" + TextBox1.Text + "', Cat_Image='" + p + "',Cat_Discription= '" + TextBox2.Text + "',Cat_Status='" + TextBox3.Text + "' where Cat_Id = '" + cid + "'";
            int i = ob.FunNonQuery(str2);
            if (i == 1)
            {
                GridFun();


            }

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            GridFun();
        }

        protected void LinkButton1_Command1(object sender, CommandEventArgs e)
        {

            //int id = Convert.ToInt32(e.CommandArgument);
            string id = e.CommandArgument.ToString();
            Session["uid"] = id;
            //FileUpload1.Visible = true;
            DListfun();
        }
        public void DListfun()
        {
            Panel3.Visible = true;
            string cid = Session["uid"].ToString();
            string str1 = "select * from Category_TB where Cat_Id = '" + cid + "'";
            SqlDataReader dr = ob.FunReader(str1);
            while (dr.Read())
            {
                TextBox1.Text = dr["Cat_Name"].ToString();
                Image1.ImageUrl = dr["Cat_Image"].ToString();
                TextBox2.Text = dr["Cat_Discription"].ToString();
                TextBox3.Text = dr["Cat_Status"].ToString();
            }

        }
    }
}