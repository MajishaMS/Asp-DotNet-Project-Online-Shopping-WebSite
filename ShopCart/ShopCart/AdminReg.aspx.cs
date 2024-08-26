using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopCart
{
    public partial class AdminReg : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "select max(Reg_Id) from Login_TB";
            string id = ob.FunScalar(str);

            int newrid = 0;
            if (id == "")
            {
                newrid = 1;
            }
            else
            {
                int rid = Convert.ToInt32(id);
                newrid = rid + 1;
            }
            string str1 = "insert into Admin_TB values(" + newrid + ", '" + TextBox1.Text + "','" + TextBox2.Text + "'," + TextBox3.Text + ",'" + TextBox4.Text + "','Active')";
            int i = ob.FunNonQuery(str1);
            if (i == 1)
            {
                if (i == 1)
                {
                    string str2 = "insert into Login_TB values(" + newrid + ", '" + TextBox5.Text + "','" + TextBox6.Text + "','Admin')";
                    int j = ob.FunNonQuery(str2);
                    if (j == 1)
                    {
                        Response.Redirect("LoginPage.aspx");

                    }
                    else
                    {
                        Response.Redirect("AdminReg.aspx");
                    }


                }


            }

        }
    }
}