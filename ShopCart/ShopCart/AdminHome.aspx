<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="ShopCart.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
   
        <%--<link rel="stylesheet" href= "style1.css"/>--%>
   
       <link rel="stylesheet" href= "StyleSheet1.css"/>
       
        <style type="text/css">
            .auto-style1 {
               /* height: 400px;*/
                width: 20%;
            }
        </style>
       
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
   
    <div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->
   <%-- <h2 class="active"> Sign In </h2>
    <a href="RegisterUser.aspx">  <h2 class="inactive underlineHover">Sign Up </h2>
        </a>--%>
    <!-- Icon -->
    <div class="fadeIn first">
      <img src="images/ShopeCartLogo1.jpg" id="icon" alt="User Icon" class="auto-style1" />
    </div>

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

      <br />
      <br />
     <center><h1 class="auto-style4" style="font-size: 40px; display: table-row; background-color: Transparent;">Welcome Back!</h1>

         <asp:Label ID="Label1" runat="server" Text="Label" Font-Names="Eras Medium ITC" Font-Size="30pt" ForeColor="#990000" Width="225px" Font-Bold="True" Height="53px"></asp:Label>
         <br />
 <br />
         </center>
         </div>
</div>
</asp:Content>
