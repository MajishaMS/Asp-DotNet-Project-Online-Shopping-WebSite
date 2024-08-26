<%@ Page Title="" Language="C#" MasterPageFile="~/MasterHome.Master" AutoEventWireup="true" CodeBehind="PaymentPage.aspx.cs" Inherits="ShopCart.PaymentPage1" %>
 <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="styleSheet3.css"/>
     <style type="text/css">
         .auto-style1 {
             height: 517px;
             width: 166%;
             color: #eee;
             -webkit-box-pack: center;
             -webkit-justify-content: center;
             -ms-flex-pack: center;
             justify-content: center;
             font-size: .9rem;
             display: flex;
             box-sizing: border-box;
             border-top-right-radius: 30px;
             border-bottom-right-radius: 30px;
             position: relative;
             border-radius: 0px;
             left: 5px;
             top: 0px;
             padding-left: 25px;
             padding-right: 25px;
             padding-bottom: 100px;
             background: #4488dd;
         }
         .auto-style2 {
             border-style: none;
             border-color: inherit;
             border-width: medium;
             margin-bottom: 10px;
             margin-top: 3px;
             line-height: 1.5em;
             font-size: 20px;
             font-size: 1.3rem;
             padding: 5px 10px 5px 10px;
             color: #fff;
             box-sizing: border-box;
             width: 98%;
             margin-left: auto;
             margin-right: auto;
         }
         .auto-style3 {
             width: 33%;
             max-width: 1140px;
             min-width: 992px;
             height: 477px;
             -webkit-box-pack: center;
             -webkit-justify-content: center;
             -ms-flex-pack: center;
             justify-content: center;
             -webkit-box-align: center;
             -webkit-align-items: center;
             -ms-flex-align: center;
             align-items: center;
             display: flex;
             margin-left: auto;
             margin-right: auto;
             padding-left: 15px;
             padding-right: 15px;
         }
         .auto-style4 {
             height: 100%;
             width: 433px;
             display: block;
             box-shadow: 0px 15px 50px 10px rgba(0, 0, 0, 0.2);
             border-radius: 0px;
             z-index: 10;
             background: #fff;
         }
         .auto-style5 {
             display: block;
             max-height: 80px;
             margin-left: auto;
             margin-right: auto;
             margin-top: 35px;
             margin-bottom: 15px;
             width: 303px;
         }
         .auto-style6 {
             left: 0px;
             top: 0px;
             width: 144px;
         }
         .auto-style7 {
             border-collapse: collapse;
             width: 100%;
             height: 66px;
         }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class='auto-style3'>
  <div class='auto-style4'>
    <div class='order-info'>
      <div class='order-info-content'>
      <%--  <h2>Order Summary</h2>
                <div class='line'></div>
        <table class='order-table'>--%>
          <%--<tbody>
            <tr>
              <td><img src='https://dl.dropboxusercontent.com/s/sim84r2xfedj99n/%24_32.JPG' class='full-width'></img>
              </td>
              <td>
                <br> <span class='thin'>Nike</span>
                <br> Free Run 3.0 Women<br> <span class='thin small'> Color: Grey/Orange, Size: 10.5<br><br></span>
              </td>

            </tr>
            <tr>
              <td>
                <div class='price'>$99.95</div>
              </td>
            </tr>
          </tbody>

        </table>
        <div class='line'></div>
        <table class='order-table'>
          <tbody>
            <tr>
              <td><img src='https://dl.dropboxusercontent.com/s/qbj9tsbvthqq72c/Vintage-20L-Backpack-by-Fj%C3%A4llr%C3%A4ven.jpg' class='full-width'></img>
              </td>
              <td>
                <br> <span class='thin'>Fjällräven</span>
                <br>Vintage Backpack<br> <span class='thin small'> Color: Olive, Size: 20L</span>
              </td>
            </tr>
            <tr>
              <td>
                <div class='price'>$235.95</div>
              </td>
            </tr>
          </tbody>
        </table>
        <div class='line'></div>
        <table class='order-table'>
          <tbody>
            <tr>
              <td><img src='https://dl.dropboxusercontent.com/s/nbr4koso8dpoggs/6136C1p5FjL._SL1500_.jpg' class='full-width'></img>
              </td>
              <td>
                <br> <span class='thin'>Monobento</span>
                <br>Double Lunchbox<br> <span class='thin small'> Color: Pink, Size: Medium</span>
              </td>

            </tr>
            <tr>
              <td>
                <div class='price'>$25.95</div>
              </td>
            </tr>
          </tbody>
        </table>
        <div class='line'></div>
        <div class='total'>
          <span style='float:left;'>
            <div class='thin dense'>VAT 19%</div>
            <div class='thin dense'>Delivery</div>
            TOTAL
          </span>
          <span style='float:right; text-align:right;'>
            <div class='thin dense'>$68.75</div>
            <div class='thin dense'>$4.95</div>
            $435.55
          </span>
        </div>
</div>
</div>--%>
        
                  <%--<div class='dropdown' id='card-dropdown'>
                  <div class='dropdown-btn' id='current-card'>
                  
                Visa</div>
                <div class='dropdown-select'>
                <ul>
                  <li><%--Master Card</li>
                  <li>American Express--%>
          <%-- <%-- </li>
                  </ul>--%>
         
          <div class='auto-style1'>
          <div class='credit-info-content'>
            <table class='half-input-table'>
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
              <tr><td>Please select your card: </td><td>
                   <%--<div class='dropdown' id='card-dropdown'>
                  <div class='dropdown-btn' id='current-card'>
                      <div class='dropdown-select'>--%>
                      <asp:DropDownList ID="DropDownList1" runat="server" class='dropdown dropdown-btn' BackColor="Transparent" CssClass="auto-style6" ForeColor="White" AutoPostBack="True">
                      <asp:ListItem Value="1" Selected="True">Visa</asp:ListItem>
                      <asp:ListItem Value="2">Master</asp:ListItem>
                          <asp:ListItem Value="3">Rupay</asp:ListItem>
                  </asp:DropDownList>
               <%-- </div>
                </div>---%>
               </td></tr>
            </table>
              <asp:Image ID="Image1" runat="server" Width='80' height='70' class='auto-style5' />
            <%--<img src='https://dl.dropboxusercontent.com/s/ubamyu6mzov5c80/visa_logo%20%281%29.png' height='80' class='auto-style5' id='credit-card-image'></img>--%>
            Card Number
              <asp:TextBox ID="TextBox1" runat="server" class='auto-style2' ForeColor="#003366"></asp:TextBox>
           <%-- <input class='auto-style2'></input>--%>
            Card Holder
              <asp:TextBox ID="TextBox2" runat="server" class='auto-style2' ForeColor="#003366"></asp:TextBox>
           <%-- <input class='input-field'></input>--%>
            <table class='auto-style7'>
              <tr>
                <td> Expires
                    <asp:TextBox ID="TextBox3" runat="server" class='input-field'></asp:TextBox>
                  <%--<input class='input-field'></input>--%>
                </td>
                <td>CVC
                    <asp:TextBox ID="TextBox4" runat="server" class='input-field'></asp:TextBox>
                  <%--<input class='input-field'></input>--%>
                </td>
                  <tr>
                  <td> Amount
                       <asp:TextBox ID="TextBox5" runat="server" class='input-field'></asp:TextBox>
                  </td>
                      </tr>
              </tr>
            </table>
              <asp:Button ID="Button1" runat="server" Text="Checkout" class='pay-btn' OnClick="Button1_Click"/>
            <%--<button class='pay-btn'>Checkout</button>--%>

          </div>

        </div>
      </div>
</div>






    </div>
    </div>
</asp:Content>




 