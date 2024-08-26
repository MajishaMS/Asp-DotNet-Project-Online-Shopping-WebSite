using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopCart
{
    public partial class LoginPage : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "select count(Reg_Id) from Login_TB where Username='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'";
            string cid = ob.FunScalar(str);
            int id = Convert.ToInt32(cid);
            if (id == 1)
            {
                string str1 = "select Reg_Id from Login_TB where Username='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'";
                string rid = ob.FunScalar(str1);
                Session["uid"] = rid;
                Session["una"] = TextBox1.Text;
                string str2 = "select Log_Type from Login_TB where Username='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "'";
                string logtype = ob.FunScalar(str2);
                if (logtype == "Admin")
                {



                    Response.Redirect("AdminHome.aspx");
                }
                else if (logtype == "User")
                {
                    Response.Redirect("UserHome.aspx");
                }

            }
            else
            {
                //Label15.Visible = true;
                //Label15.Text = "Invalid username and password";
            }

        }
    }
}