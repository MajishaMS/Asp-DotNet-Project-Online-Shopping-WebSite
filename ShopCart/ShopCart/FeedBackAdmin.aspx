<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="FeedBackAdmin.aspx.cs" Inherits="ShopCart.FeedBackAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
       <link rel="stylesheet" href= "StyleSheet1.css"/>
       
        <style type="text/css">
            .auto-style1 {
               /* height: 400px;*/
                width: 20%;
            }
            .auto-style2 {
                margin-left: 0px;
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
    <h2 class="active"> Replay Feedback </h2>
    <a href="FeedBackView.aspx">  <h2 class="inactive underlineHover">View Feedback </h2>
        </a>
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

         <br />
         <asp:Panel ID="Panel1" runat="server" CssClass="auto-style2" Height="111px" Visible="False" Width="325px">
             <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="296px" placeholder="Enter the replay here"></asp:TextBox>
             <br />
             <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Send Replay" />
         </asp:Panel>

         <asp:DataList ID="DataList1" runat="server" CellSpacing="-1" Width="534px">
             <ItemTemplate>
                 
              <center>  <div>
                    <h2>User FeedBack:</h2> <asp:Label ID="Label1" runat="server" Text='<%# Eval("FeedBack") %>'></asp:Label>
                    <br />
                    <br />
                 <asp:Button ID="Button1" runat="server" Text="Send Feedback" CommandArgument='<%# Eval("Reg_Id") %>' OnCommand="Button1_Command" />
           </div> </center> </ItemTemplate>
         </asp:DataList>
         <br />
         <br />
         <br />
 <br />
        
         </div>
         <br />
         <br />
</div>
</asp:Content>
