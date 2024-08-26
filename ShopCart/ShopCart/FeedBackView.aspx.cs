using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopCart
{
    public partial class FeedBackView : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string str = "select * from FeedBack_TB";
                DataSet ds = ob.FunDataAdapterDataSet(str);

                GridView1.DataSource = ds;

                GridView1.DataBind();
            }
        }
    }
}