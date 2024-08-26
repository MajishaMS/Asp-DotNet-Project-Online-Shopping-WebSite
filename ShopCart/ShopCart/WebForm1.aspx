<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ShopCart.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href= "StyleSheet1.css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->
    <h2 class="active"> Sign In </h2>
    <h2 class="inactive underlineHover">Sign Up </h2>

    <!-- Icon -->
    <div class="fadeIn first">
      <img src="http://danielzawadzki.com/codepen/01/icon.svg" id="icon" alt="User Icon" />
    </div>

    <!-- Login Form -->
    <asp:TextBox ID="TextBox1" runat="server" Width="130px" placeholder="Enter the username" class="fadeIn second"></asp:TextBox>
      <%--<input type="text" id="login" class="fadeIn second" name="login" placeholder="login">--%>
      <asp:TextBox ID="TextBox2" runat="server" Width="130px" placeholder="Enter the password" class="fadeIn third"></asp:TextBox>
      <%--<input type="text" id="password" class="fadeIn third" name="login" placeholder="password">
      <input type="submit" class="fadeIn fourth" value="Log In">
    --%>
      <%--<asp:Button class="fadeIn fourth" ID="Button3" runat="server" OnClick="Button3_Click" Text="Login" BackColor="#3399FF" BorderColor="White" Font-Bold="True" ForeColor="White" Height="36px" Width="82px" />--%>
                            
    <!-- Remind Passowrd -->
   <%-- <div id="formFooter">
      <a class="underlineHover" href="#">Forgot Password?</a>
    </div>--%>

  </div>
</div>



</asp:Content>









