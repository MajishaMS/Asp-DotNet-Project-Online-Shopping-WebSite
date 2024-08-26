using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopCart
{
    public partial class PaymentPage1 : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CheckOption();
                TextBox5.Text = Session["subtotal"].ToString();
            }
        }
        public void CheckOption()
        {
            string r = DropDownList1.SelectedItem.Value;

            if (r == "1")
            {
                Image1.ImageUrl = "images/VisaLogo.png";

            }
            else if(r=="2")
            {
                Image1.ImageUrl = "images/MasterCardlogo.png";
            }
            else
            {
                Image1.ImageUrl = "images/Rupaycardlogo.png";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            AccbalService.ServiceClient ob = new AccbalService.ServiceClient();
            string accbal = ob.checkbal(TextBox1.Text);
            int balance = Convert.ToInt32(accbal);
            int total = Convert.ToInt32(Session["subtotal"].ToString());
            if (balance>total)
            {
                int bal = balance - total;
                int accno = Convert.ToInt32(TextBox1.Text);
                int i=ob.updatebal(accno,bal);
                if(i==1)
                {
                    Response.Redirect("PurchaseSuccess.aspx");
                }
                
            }
            else
            {
                
                Response.Redirect("PaymentPage.aspx");
                Label1.Visible = true;
                Label1.Text = "Account Don't have enough balance, try with another card!";
            }
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }
    }
}