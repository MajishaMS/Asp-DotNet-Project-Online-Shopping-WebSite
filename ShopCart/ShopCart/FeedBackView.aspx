<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="FeedBackView.aspx.cs" Inherits="ShopCart.FeedBackView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href= "StyleSheet1.css"/>
       
        <style type="text/css">
            .auto-style1 {
               /* height: 400px;*/
                width: 20%;
            }
            .auto-style3 {
                left: 0px;
                top: 0px;
                width: 75%;
            }
            .auto-style4 {
                width: 445px;
            }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="wrapper fadeInDown">
  <div id="formContent" class="auto-style3">
    <!-- Tabs Titles -->
    <h2 class="active"> View Feedback </h2>
    <a href="FeedBackAdmin.aspx">  <h2 class="inactive underlineHover">Replay Feedback </h2>
        </a>
    <!-- Icon -->
    <div class="fadeIn first">
      <img src="images/ShopeCartLogo1.jpg" id="icon" alt="User Icon" class="auto-style1" />
    </div>
      <br />
      <br />
     <center><h1 class="auto-style4" style="font-size: 40px; display: table-row; background-color: Transparent;">Welcome Back!</h1>

         <br />
         <br />
         <br />
         <br />
 <br />
         </center>
         </div>
         <br />
         <br />
        <center><asp:GridView ID="GridView1" runat="server" CellPadding="4" CellSpacing="4" Width="796px">
         </asp:GridView></center> 
</div>
</asp:Content>
