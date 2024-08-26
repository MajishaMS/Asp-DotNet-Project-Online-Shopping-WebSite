<%@ Page Title="" Language="C#" MasterPageFile="~/MasterHome.Master" AutoEventWireup="true" CodeBehind="CartDetails.aspx.cs" Inherits="ShopCart.CartDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
   
        <%--<link rel="stylesheet" href= "style1.css"/>--%>
   
       <link rel="stylesheet" href= "StyleSheet1.css"/>
       
        <style type="text/css">
            .auto-style1 {
                width: 31%;
                height: 442px;
            }
            .auto-style2 {
                width: 14%;
                height: 7px;
            }
            .auto-style3 {
                width: 271px;
            }
            .auto-style6 {
                width: 208px;
            }
            .auto-style7 {
                width: 207px;
            }
            .auto-style8 {
                width: 180px;
            }
            .auto-style9 {
                width: 272px;
            }
            .auto-style10 {
                width: 440px;
            }
            .auto-style11 {
                height: 48px;
            }
            .auto-style12 {
                width: 180px;
                height: 48px;
            }
            .auto-style13 {
                height: 7px;
            }
            .auto-style14 {
                width: 180px;
                height: 42px;
            }
            .auto-style15 {
                height: 50px;
            }
            .auto-style16 {
                width: 180px;
                height: 50px;
            }
            .auto-style17 {
                height: 51px;
            }
            .auto-style20 {
                margin-left: 10px;
            }
            .auto-style21 {
                height: 60px;
            }
            .auto-style22 {
                width: 180px;
                height: 60px;
            }
            .auto-style23 {
                height: 8px;
            }
            .auto-style24 {
                width: 14%;
                height: 8px;
            }
            .auto-style25 {
                height: 9px;
            }
            .auto-style26 {
                width: 14%;
                height: 42px;
            }
            .auto-style27 {
                height: 11px;
            }
            .auto-style28 {
                height: 42px;
            }
            .auto-style29 {
                margin-left: 108px;
            }
            .auto-style30 {
                margin-top: 0px;
            }
            .auto-style31 {
                height: 49px;
            }
            .auto-style34 {
                height: 6px;
            }
            .auto-style35 {
                height: 5px;
            }
            .auto-style37 {
                height: 48px;
                width: 14%;
            }
            .auto-style38 {
                width: 14%;
            }
            .auto-style39 {
                width: 13%;
                height: 7px;
            }
            </style>
       
        </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
   
    <div class="wrapper fadeInDown">
  <div id="formContent" class="auto-style3">
       <center><h6> Happy Shopping with ShopCart!</h6></center>
    <!-- Tabs Titles -->
   <%-- <h2 class="active"> Sign In </h2>
    <a href="RegisterUser.aspx">  <h2 class="inactive underlineHover">Sign Up </h2>
        </a>--%>
    <!-- Icon -->
    <%--<div class="auto-style5">--%>
      <img src="images/CartLogo2.jpg" id="icon" alt="User Icon" width="20" height="100">
       
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
    
    
    <table class="auto-style39">
    <tr>
        <td class="auto-style31">&nbsp;</td>
        <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Back" />
        </td>
        <td class="auto-style10">
            <asp:Label ID="Label7" runat="server" Text="Cart SubTotal:"></asp:Label>
        </td>
        <td class="auto-style15">
            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        </td>
        <td class="auto-style16">
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Procedd to CheckOut" />
        </td>
        <td class="auto-style17">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style30">&nbsp;</td>
        <td class="auto-style1">
            <asp:DataList ID="DataList1" runat="server" CssClass="auto-style9" Width="651px">
                <ItemTemplate>
                    <table class="auto-style20">
                        <tr>
                            <td></td>
                            <td class="auto-style8"></td>
                        </tr>
                        <tr>
                            <td class="auto-style24" style="border-style: solid; border-color: #FFFFFF; background-color: #CCCCFF">
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="149px" ImageUrl='<%# Eval("Product_Image") %>' Width="124px" />
                            </td>
                            <td class="auto-style12" style="border-style: solid; border-color: #FFFFFF; background-color: #CCCCFF">
                                <table class="auto-style23">
                                    <tr>
                                        <td class="auto-style25">
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Product_Name") %>'></asp:Label>
                                        </td>
                                        <td class="auto-style8">
                                            &nbsp;</td>
                                        <td class="auto-style13">&nbsp;</td>
                                        <td class="auto-style2">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style28">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MRP:</td>
                                        <td class="auto-style14">
                                            <br />
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Product_Price") %>'></asp:Label>
                                        </td>
                                        <td class="auto-style28">&nbsp;</td>
                                        <td class="auto-style26">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style21">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                        <td class="auto-style22">
                                            <br />
                                            <br />
                                            <br />
                                        </td>
                                        <td class="auto-style21">
                                            <br />
                                        </td>
                                        <td class="auto-style21">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style11">
                                            &nbsp;&nbsp;<asp:Label ID="Label8" runat="server" Text='<%# Eval("Product_Discription") %>'></asp:Label>
                                        </td>
                                        <td class="auto-style12">
                                            <br />
                                        </td>
                                        <td class="auto-style11"></td>
                                        <td class="auto-style11">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style27">&nbsp;</td>
                                        <td class="auto-style8">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style27">
                                            <asp:Button ID="Button5" runat="server" CssClass="auto-style30" Height="17px" OnClick="Button5_Click" Text="-" Width="24px" />
                                        </td>
                                        <td class="auto-style8">
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Product_Quantity") %>'></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Button ID="Button6" runat="server" CssClass="auto-style20" Height="18px" OnClick="Button6_Click" Text="+" Width="29px" />
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style27">&nbsp;&nbsp;&nbsp; SubTotal:</td>
                                        <td class="auto-style8">
                                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Sub_Total") %>'></asp:Label>
                                        </td>
                                        <td>&nbsp;</td>
                                        <td>
                                            <asp:Button ID="Button4" runat="server" CommandArgument='<%# Eval("Cart_Id") %>' CssClass="auto-style29" OnCommand="Button4_Command" Text="Delete" Width="229px" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                       
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </td>
        <td class="auto-style10">
            &nbsp;</td>
        <td class="auto-style6">
            &nbsp;</td>
        <td class="auto-style7">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style30">&nbsp;</td>
        <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style30">&nbsp;</td>
        <td class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;
            &nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        <td class="auto-style10">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style31"></td>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style10">
        </td>
        <td class="auto-style15">
        </td>
        <td class="auto-style16">
        </td>
        <td class="auto-style17"></td>
    </tr>
    <tr>
        <td class="auto-style30">&nbsp;</td>
        <td class="auto-style1">
            &nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style30">&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style30">&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style30">&nbsp;</td>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style10">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style34"></td>
        <td class="auto-style35"></td>
        <td class="auto-style10"></td>
        <td class="auto-style37"></td>
        <td class="auto-style38"></td>
        <td class="auto-style2"></td>
    </tr>
</table>
</asp:Content>
