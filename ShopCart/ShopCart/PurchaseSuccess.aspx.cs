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
    public partial class PurchaseSuccess : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {

            string str = "select Order_Id,Product_Id,Order_Status from Order_TB";
            DataTable dt = ob.FunDataAdapterDataTable(str);

            ////List<int> ids = (from row in dt.AsEnumerable() select Convert.ToInt32(row["Product_Id"])).ToList();
            List<UpdatePQty> qtlist = new List<UpdatePQty>();  
            foreach (DataRow row in dt.Rows)
            {
                string oldqt = "";
                string qt = "";
                UpdatePQty qob = new UpdatePQty();
                qob.Product_Id = row["Product_Id"].ToString();
                qob.Order_Id = Convert.ToInt32(row["Order_Id"].ToString());
                qob.Order_Status= row["Order_Status"].ToString();

                //Label1.Text = qob.Product_Id.ToString();
                if (qob.Order_Status == "Ordered")
                {
                    string str1 = "select Product_Quantity from Order_TB where Product_Id='" + qob.Product_Id + "'";
                    SqlDataReader dr = ob.FunReader(str1);
                    while (dr.Read())
                    {
                        qt = dr["Product_Quantity"].ToString();
                    }
                    // string qt = ob.FunReader(str1).ToString();
                    string str2 = "select Stock from Product_TB where Product_Id='" + qob.Product_Id + "'";

                    //string oldqt = ob.FunReader(str2).ToString();
                    SqlDataReader dr1 = ob.FunReader(str2);
                    while (dr1.Read())
                    {
                        oldqt = dr1["Stock"].ToString();
                    }
                    //int newqt = Convert.ToInt32(oldqt) - Convert.ToInt32(qt);
                    int newqt = Convert.ToInt32(oldqt) - Convert.ToInt32(qt);
                    string str3 = "update Product_TB set Stock = " + newqt + " where Product_Id ='" + qob.Product_Id + "'";
                    int u = ob.FunNonQuery(str3);
                    string str4 = "update Order_TB set Order_Status ='payed' where Order_Id =" + qob.Order_Id + "";
                    int st = ob.FunNonQuery(str4);
                }
                


            }

                //int q = Convert.ToInt32(Session["qty"].ToString());
                //int s = Convert.ToInt32(Session["stock"].ToString());
                //int finalqty = s - q;
                //string str = update Prroduct_TB set Product_Quantity = " + finalqty+ " where
                //        Response.Redirect("PurchaseSuccess.aspx");

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserHome.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Session["uid"]);
            string str = "insert into FeedBack_TB values("+ id +",'" + TextBox1.Text + "','Not Replayed','Not Viewed')";
            int i = ob.FunNonQuery(str);
            if (i == 1)
            {
                Response.Redirect("UserHome.aspx");
            }
            //SendEmail2("Name", "Application mail id", "password", "username", "user mail id", "Haiii", "test");
        }
        //public static void SendEmail2(string yourName, string yourGmailUserName, string yourGmailPassword, string toName, string toEmail, string subject, string body)
        //{
        //    string to = toEmail; //To address    
        //    string from = yourGmailUserName; //From address    
        //    MailMessage message = new MailMessage(from, to);

        //    string mailbody = body;
        //    message.Subject = subject;
        //    message.Body = mailbody;
        //    message.BodyEncoding = Encoding.UTF8;
        //    message.IsBodyHtml = true;
        //    SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
        //    System.Net.NetworkCredential basicCredential1 = new
        //    System.Net.NetworkCredential(yourGmailUserName, yourGmailPassword);
        //    client.EnableSsl = true;
        //    client.UseDefaultCredentials = true;
        //    client.Credentials = basicCredential1;
        //    try
        //    {
        //        client.Send(message);
        //    }

        //    catch (Exception ex)
        //    {
        //        throw ex;
        //    }
        //}


    }
}
