<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdminHome.Master"  AutoEventWireup="true" CodeBehind="AdminReg.aspx.cs" Inherits="ShopCart.AdminReg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
   <a href="LoginPage.aspx"> <h2 class="inactive underlineHover"> Sign In   </h2> 
       </a>
    <h2 class="active">Sign Up </h2>

    <!-- Icon -->
    <div class="fadeIn first">
      <img src="images/ShopeCartLogo1.jpg" id="icon" alt="User Icon" class="auto-style1" />
    </div>

    <!-- Login Form -->
     
      
      <br />
    <asp:TextBox ID="TextBox1" runat="server" Width="151px" placeholder="Name" class="fadeIn second" Height="16px"></asp:TextBox>
     
      
      <asp:TextBox ID="TextBox2" runat="server" Width="151px" placeholder="Address" CssClass="fadeIn third textbox" Height="16px"></asp:TextBox>
      
      <br />
      <br />
      
      <asp:TextBox ID="TextBox3" runat="server" Width="151px" placeholder="Phone" CssClass="fadeIn third textbox" Height="16px"></asp:TextBox>
      <asp:TextBox ID="TextBox4" runat="server" Width="151px" placeholder="Email" CssClass="fadeIn third textbox" Height="16px"></asp:TextBox>
      <br />
      <br />
      <asp:TextBox ID="TextBox5" runat="server" Width="151px" placeholder="Username" CssClass="fadeIn third textbox" Height="16px"></asp:TextBox>
      <asp:TextBox ID="TextBox6" runat="server" Width="151px" placeholder="Password" CssClass="fadeIn third textbox" Height="16px"></asp:TextBox>

      <br />
      <asp:TextBox ID="TextBox7" runat="server" Width="219px" placeholder="Confirm Password" CssClass="fadeIn third textbox" style="margin-top: 0px" Height="16px"></asp:TextBox>
      
      <br />
      
      <asp:Button ID="Button1" runat="server" Text="Register" CssClass="fadeIn fourth" OnClick="Button1_Click" style="margin-top: 20px; margin-bottom: 1px; margin-left: 19px; margin-right: 3px;" Height="61px"/>

      <br />

  </div>
</div>
</asp:Content>
