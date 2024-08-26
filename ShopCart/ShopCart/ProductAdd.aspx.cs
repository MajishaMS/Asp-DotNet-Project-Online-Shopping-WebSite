using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ShopCart
{
    public partial class ProductAdd : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string str = "select Cat_Id,Cat_Name from Category_TB";


                DataSet ds = ob.FunDataAdapterDataSet(str);


                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "Cat_Name";
                DropDownList1.DataValueField = "Cat_Id";
                DropDownList1.DataBind();

            }
            DropDownList1.Items.Insert(0, "--Select--");


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "select max(Product_Id) from Product_TB";
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
            string pid = "PO" + newrid;
            //int catid = Convert.ToInt32(DropDownList1.SelectedItem.Value);
            string str1 = "insert into Product_TB values('" + pid + "','" + DropDownList1.SelectedItem.Value + "', '" + TextBox1.Text + "','" + p + "','" + TextBox2.Text + "'," + TextBox3.Text + ",'Available'," + TextBox4.Text + ")";
            int i = ob.FunNonQuery(str1);
            if (i == 1)
            {
                

                Response.Redirect("ProductAdd.aspx");
            }
            
    }
    }
}