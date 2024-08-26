<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="ShopCart.LoginPage" %>
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
    <h2 class="active"> Sign In </h2>
    <a href="RegisterUser.aspx">  <h2 class="inactive underlineHover">Sign Up </h2>
        </a>
    <!-- Icon -->
    <div class="fadeIn first">
      <img src="images/ShopeCartLogo1.jpg" id="icon" alt="User Icon" class="auto-style1" />
    </div>

    <!-- Login Form -->
    <asp:TextBox ID="TextBox1" runat="server" Width="154px" placeholder="Username" class="fadeIn second"></asp:TextBox>
      <%--<input type="text" id="login" class="fadeIn second" name="login" placeholder="login">--%>
      <asp:TextBox ID="TextBox2" runat="server" Width="155px" placeholder="Password" class="fadeIn third"></asp:TextBox>
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
      <asp:Button ID="Button1" runat="server" Text="Login" class="fadeIn fourth" OnClick="Button1_Click"/>

  </div>
</div>
</asp:Content>
