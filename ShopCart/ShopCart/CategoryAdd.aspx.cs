using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopCart
{
    public partial class CategoryAdd : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "select max(Cat_Id) from Category_TB";
            string id = ob.FunScalar(str);


            int newrid = 0;
            if (id == "")
            {
                newrid = 1;
            }
            else
            {
                string c = id.Substring(2);
                int rid = Convert.ToInt32(c);
                newrid = rid + 1;
            }
            string p = "~/PHS/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));
            string cid = "CO" + newrid;
            string str1 = "insert into Category_TB values('" + cid + "', '" + TextBox1.Text + "','" + p + "','" + TextBox2.Text + "','Available')";
            int i = ob.FunNonQuery(str1);
            if (i == 1)
            {
                

                Label1.Visible = true;
                Label1.Text = "Inserted";
                TextBox1.Text = "";
                TextBox2.Text = "";
                


            }
            else
            {
                Response.Redirect("CategoryAdd.aspx");
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            
            
                Label1.Visible = false;
            
        }
    }
}