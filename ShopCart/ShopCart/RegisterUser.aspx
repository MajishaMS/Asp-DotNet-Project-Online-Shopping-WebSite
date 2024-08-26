<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageUser.Master" AutoEventWireup="true" CodeBehind="RegisterUser.aspx.cs" Inherits="ShopCart.RegisterUser" %>
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
    <asp:TextBox ID="TextBox1" runat="server" Width="151px" placeholder="Name" class="fadeIn second" Height="16px"></asp:TextBox>
     
      <asp:TextBox ID="TextBox2" runat="server" Width="151px" placeholder="Age" CssClass="fadeIn third textbox" Height="16px" style="margin-top: 0px"></asp:TextBox>
     
      <br />

      <asp:Label ID="Label1" runat="server" Text="Gender:"></asp:Label>
      <br />

      <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="fadeIn third textbox" Width="197px" RepeatDirection="Horizontal">
          <asp:ListItem Value="1" Selected="True">Male</asp:ListItem>
          <asp:ListItem Value="2">Female</asp:ListItem>
      </asp:RadioButtonList>
      <br />
      <asp:TextBox ID="TextBox3" runat="server" Width="151px" placeholder="Address" CssClass="fadeIn third textbox" Height="16px"></asp:TextBox>
      <asp:TextBox ID="TextBox4" runat="server" Width="151px" placeholder="pincode" CssClass="fadeIn third textbox" Height="16px"></asp:TextBox>
      <br />
      <asp:TextBox ID="TextBox5" runat="server" Width="151px" placeholder="Phone" CssClass="fadeIn third textbox" Height="16px"></asp:TextBox>
      <asp:TextBox ID="TextBox6" runat="server" Width="151px" placeholder="Email" CssClass="fadeIn third textbox" Height="16px"></asp:TextBox>
      <br />
      <asp:Label ID="Label2" runat="server" Text="Photo:"></asp:Label>
      <br />
      <asp:FileUpload ID="FileUpload1" runat="server" Height="43px" Width="171px" CssClass="mt-0" />
      <br />
      <asp:TextBox ID="TextBox7" runat="server" Width="151px" placeholder="Username" CssClass="fadeIn third textbox" Height="16px"></asp:TextBox>
      <asp:TextBox ID="TextBox8" runat="server" Width="151px" placeholder="Password" CssClass="fadeIn third textbox" Height="16px"></asp:TextBox>
      <br />
      <asp:TextBox ID="TextBox9" runat="server" Width="194px" placeholder="Confirm Password" CssClass="fadeIn third textbox" style="margin-top: 0px" Height="16px"></asp:TextBox>
      <br />
      <asp:Button ID="Button1" runat="server" Text="Register" CssClass="fadeIn fourth" OnClick="Button1_Click"/>

      <br />
      <br />

  </div>
</div>
</asp:Content>
