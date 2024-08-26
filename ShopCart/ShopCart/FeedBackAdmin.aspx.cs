using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Net;
using System.IO;
using System.Text;
namespace ShopCart
{
    public partial class FeedBackAdmin : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string str = "select * from FeedBack_TB where Replay='Not Replayed'";
                DataSet ds = ob.FunDataAdapterDataSet(str);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }

        }

        protected void Button1_Command(object sender, CommandEventArgs e)
        {
            string id = e.CommandArgument.ToString();
            int regid = Convert.ToInt32(id);
           
            Session["uid"] = regid;
            Panel1.Visible = true;
            
            

            //string str1 = "select Email from UserTB where User_RegId=" + regid + "";
            //string em = ob.FunScalar(str1);
            //string msg = DataList1.TextBox1.Text;

            //Button BuyNowButton = (Button)sender;
            //DataListItem item = (DataListItem)BuyNowButton.Naming2ontainer;
            //TextBox Nametext = (TextBox)item.FindControl("TextBox11");
            //string s = Nametext.Text;
            //Label2.Text = Nametext.Text;

            //TextBox txtBox = (TextBox)sender;
            //Button txtBox = (Button)sender;
            //DataListItem listItem = (DataListItem)txtBox.BindingContainer;
            //TextBox replytext = (TextBox)listItem.FindControl("TextBox11");
            //Label2.Text = replytext.Text;

            //SendEmail2("ShopecartAdmin", "shopecart2024@gmail.com", "gsxu rfxz kxqz nvsr", "Shopecart", "em", "hii", "test");
            //SendEmail2("Maji", "majishamithun@gmail.com", "programaji123", "sam", "sam@gmail.com", "Haiii", "test");
            //SendEmail2("Name", "Application mail id", "password", "username", "user mail id", "Haiii", "test");
        }
       


        protected void Button2_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Session["uid"]);
            string str1 = "select Email from UserTB where User_RegId=" + id + "";
            string em = ob.FunScalar(str1);
            string msg =TextBox1.Text;
           int i= SendEmail2("ShopecartAdmin", "shopecart2024@gmail.com", "gsxu rfxz kxqz nvsr", "Shopecart", em, "Replay from shopecard", msg);
           if(i==1)
            {
                string str2= "update FeedBack_TB set Replay='Replayed',FeedBack_Status='Viewed' where Reg_Id=" + id + "";
                int r = ob.FunNonQuery(str2);
                if(r==1)
                {
                    Response.Redirect("FeedBackAdmin.aspx");
                        
                }
            }
        }
        public static int SendEmail2(string yourName, string yourGmailUserName, string yourGmailPassword, string toName, string toEmail, string subject, string body)
        {
            string to = toEmail; //To address    
            string from = yourGmailUserName; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = body;
            message.Subject = subject;
            //message.Subject = "test";
            message.Body = mailbody;
            //message.Body = "Test Content";
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential(yourGmailUserName, yourGmailPassword);
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = basicCredential1;
            //client.Host = "smtp.gmail.com";
            //client.Port = 587;
            //client.DeliveryMethod = SmtpDeliveryMethod.Network;

            try
            {
                client.Send(message);
                return 1;
            }

            catch (Exception ex)
            {
                throw ex;
            }
           
        }
    }
}