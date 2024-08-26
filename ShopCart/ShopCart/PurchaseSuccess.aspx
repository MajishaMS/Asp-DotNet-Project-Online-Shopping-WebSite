<%@ Page Title="" Language="C#" MasterPageFile="~/MasterHome.Master" AutoEventWireup="true" CodeBehind="PurchaseSuccess.aspx.cs" Inherits="ShopCart.PurchaseSuccess" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
   
        <%--<link rel="stylesheet" href= "style1.css"/>--%>
   
       <link rel="stylesheet" href= "StyleSheet1.css"/>
       
        <style type="text/css">
            .auto-style1 {
                height: 394px;
                width: 48%;
            }
        </style>
       
        </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
   
    <div class="wrapper fadeInDown">
  <div id="formContent" class="auto-style3">
     <br />
       <br />
       <center><h2> Your Order has successfully placed!</h2></center>
    <!-- Tabs Titles -->
   <%-- <h2 class="active"> Sign In </h2>
    <a href="RegisterUser.aspx">  <h2 class="inactive underlineHover">Sign Up </h2>
        </a>--%>
    <!-- Icon -->
    <%--<div class="auto-style5">--%>
      <img src="images/ShopeCartLogo.jpg" id="icon" alt="User Icon" class="auto-style1"/>
       
        <br />

    <!-- Login Form -->
      <%--<input type="text" id="login" class="fadeIn second" name="login" placeholder="login">--%>
      <%--<input type="text" id="password" class="fadeIn third" name="login" placeholder="password">
      <input type="submit" class="fadeIn fourth" value="Log In">
    --%>
      <%--<asp:Button class="fadeIn fourth" ID="Button3" runat="server" OnClick="Button3_Click" Text="Login" BackColor="#3399FF" BorderColor="White" Font-Bold="True" ForeColor="White" Height="36px" Width="82px" />--%>
                            
    <!-- Remind Passowrd -->
   <%-- <div id="formFooter">
      <a class="underlineHover" href="#">Forgot Password?</a>
    </div>--%>

     <%-- <h1 class="auto-style4" style="font-size: 40px; display: table-row; background-color: Transparent;">Get Start!</h1>
      <h1 class="auto-style4" style="font-size: 40px; display: table-row; background-color: Transparent;">With your favorite shopping!</h1>
      <p class="auto-style4" style="font-size: 40px; display: table-row; background-color: Transparent;">--%>

         <%--<asp:Label ID="Label1" runat="server" Text="Label" Font-Names="Eras Medium ITC" Font-Size="30pt" ForeColor="#990000" Width="158px" Font-Bold="True" Height="51px"></asp:Label>--%>
        <%-- </p>

      <br />--%>
      <center> <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Height="62px" Width="322px" placeholder="Enter your feedback here"></asp:TextBox> 
       <asp:Button ID="Button2" runat="server" Height="52px" Text="Send FeedBack" Style="margin:2px;" OnClick="Button2_Click" /></center>
         <br />
       <br />
                                    <asp:Button ID="Button1" runat="server" Height="53px" OnClick="Button1_Click" Text="Back To Shopping" Width="289px" />
         </div>
        <br />
</div>
     <table >
                
                <tr>
                    
                    <td class="auto-style37" >
                        &nbsp;</td>
                </tr>
                
                        </table>
            </table>
        </div>
</asp:Content>
