using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopCart
{
    public partial class BankPage : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str= "select User_RegId from UserTB where Name='"+ TextBox1.Text + "'";
            string n = ob.FunScalar(str);
            int id = Convert.ToInt32(n);
            string str1 = "insert into Account_TB values(" + n + "," + TextBox2.Text + ",'" + TextBox3.Text + "'," + TextBox4.Text + ")";
            int i = ob.FunNonQuery(str1);
            if (i == 1)
            {
                Response.Redirect("BankRegSuccess.aspx");
            }
        }
    }
}