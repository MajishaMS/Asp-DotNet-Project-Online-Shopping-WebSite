<%@ Page Title="" Language="C#" MasterPageFile="~/MasterHome.Master" AutoEventWireup="true" CodeBehind="CategoryDetailsPage.aspx.cs" Inherits="ShopCart.CategoryDetailsPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
   
        <%--<link rel="stylesheet" href= "style1.css"/>--%>
   
       <link rel="stylesheet" href= "StyleSheet1.css"/>
       
        <style type="text/css">
            .auto-style3 {
                height: 149px;
            }
            .auto-style4 {
                height: 117px;
            }
            .auto-style5 {
                height: 46px;
                width: 274px;
            }
            .auto-style6 {
                width: 274px;
            }
        </style>
       
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
   
    <div class="wrapper fadeInDown">
  <div id="formContent" class="auto-style3">
       <center>
           <div>

           </div>
            <img src="images/ShopeCartLogo.jpg" id="icon" alt="User Icon" width="100" class="auto-style4"/>
       
         
    <!-- Tabs Titles -->
   <%-- <h2 class="active"> Sign In </h2>
    <a href="RegisterUser.aspx">  <h2 class="inactive underlineHover">Sign Up </h2>
        </a>--%>
    <!-- Icon -->
    <%--<div class="auto-style5">--%>
       <h5> 
           Happy Shopping with ShopeCart!</h5></center>
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
      <br />
     <%--<center>
         <br />
 <br />
         </center>--%>
         </div>
        <br />
</div>
    <table class="auto-style6" style="border-width: thin">
       
                        <h1>Products For You...</h1>
        <%-- <a href="UserHomepage.aspx">UserHomepage.aspx</a>--%>
                        <tr>
                            <td style="border-color: gainsboro; background-color: white">
                                <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" Height="374px" BackColor="White" CellSpacing="1" CellPadding="8">
                                    <ItemTemplate>
                                        <table style="border: thin groove #D0D0D0; background-color: Transparent">
                                            <tr>
                                                <td class="auto-style6" style="border-color: #FF0000">
                                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="381px" ImageUrl='<%# Eval("Product_Image") %>' Width="272px" OnCommand="ImageButton1_Command" CommandArgument='<%# Eval("Product_Id") %>' />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style6">
                                                    <center><asp:Label ID="Label1" runat="server" Height="24px" Text='<%# Eval("Product_Name") %>' Width="226px" CssClass="align-content-center" Font-Bold="True"></asp:Label>
                                                </center></td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style6">
                                                    <center><asp:Label ID="Label2" runat="server" Height="24px" Text='<%# Eval("Product_Discription") %>' Width="224px"></asp:Label>
                                               </center> </td>
                                            </tr>
                                             <tr>
                                                <td class="auto-style6">
                                                    <center><asp:Label ID="Label3" runat="server" Height="24px" Text='<%# Eval("Product_Price") %>' Width="226px"></asp:Label>
                                               </center> </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style5">
                                                  <center>  <asp:Label ID="Label4" runat="server" Height="24px" Text='<%# Eval("Product_Status") %>' Width="224px"></asp:Label>
                                               </center> </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:DataList>
                            </td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <br />
</asp:Content>
