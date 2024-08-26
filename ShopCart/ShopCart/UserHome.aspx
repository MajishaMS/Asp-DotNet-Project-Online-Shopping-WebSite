<%@ Page Title="" Language="C#" MasterPageFile="~/MasterHome.Master" AutoEventWireup="true" CodeBehind="UserHome.aspx.cs" Inherits="ShopCart.UserHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
   
        <%--<link rel="stylesheet" href= "style1.css"/>--%>
   
       <link rel="stylesheet" href= "StyleSheet1.css"/>
       
        <style type="text/css">
            .auto-style2 {
                left: 0px;
                top: 0px;
                width: 73%;
                height: 147px;
            }
            .auto-style3 {
                left: 0px;
                top: 6px;
                width: 91%;
                height: 213px;
            }
            .auto-style7 {
                height: 26px;
            }
            .auto-style8 {
                width: 299px;
            }
            .auto-style9 {
                height: 26px;
                width: 299px;
            }
            .auto-style10 {
                width: 33%;
                height: 188px;
            }
        </style>
       
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
   
    <div class="wrapper fadeInDown">
  <div id="formContent" class="auto-style3">
      <img src="images/ShopeCartLogo.jpg" id="icon" alt="User Icon" class="auto-style10"/> 
    <!-- Tabs Titles -->
   <%-- <h2 class="active"> Sign In </h2>
    <a href="RegisterUser.aspx">  <h2 class="inactive underlineHover">Sign Up </h2>
        </a>--%>
    <!-- Icon -->
    <%--<div class="auto-style5">--%>
      <center><h5> Happy Shopping with ShopeCart!</h5></center>
       
        <br />
   <%-- </div>--%>

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

     <%-- <p class="auto-style4" style="font-size: 40px; display: table-row; background-color: Transparent;">--%>

         <%--<asp:Label ID="Label1" runat="server" Text="Label" Font-Names="Eras Medium ITC" Font-Size="30pt" ForeColor="#990000" Width="158px" Font-Bold="True" Height="51px"></asp:Label>--%>
        <%-- </p>--%>

      <br />

      
      <br />
     <%--<center>
         <br />
 <br />
         </center>--%>
         </div>
    <br />
</div>
    <table style="border-width: thin; border-color: white; background-color: #FFFFFF" >
                         <h1>Top Categories to choose from</h1>
        <%-- <a href="UserHomepage.aspx">UserHomepage.aspx</a>--%>
                        <tr style="border-color: white; background-color: #FFFFFF">
                            <td>
                                <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" Height="374px" BackColor="#E4E4E4" CellSpacing="2" EditItemIndex="1" SelectedIndex="1" BorderColor="White" BorderStyle="Groove" CellPadding="2">
                                    <ItemTemplate>
                                        <table style="border: thin groove #FFFFFF; background-color: Transparent" border="1">
                                            <tr>
                                                <td rowspan="1" style="border-style: solid; border-width: medium; border-color: #FFFFFF; background-color: #FFFFFF;" class="auto-style8">
                                                    <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("Cat_Id") %>' Height="379px" ImageUrl='<%# Eval("Cat_Image") %>' OnClick="ImageButton1_Click" OnCommand="ImageButton1_Command" Width="297px" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="border-style: solid; border-width: medium; border-color: #FFFFFF; background-color: #FFFFFF;" rowspan="1" class="auto-style8">
                                                   <center> <asp:Label ID="Label1" runat="server" CssClass="align-content-center" Font-Bold="True" Height="24px" Text='<%# Eval("Cat_Name") %>' Width="226px"></asp:Label>
                                                </center></td>
                                            </tr>
                                            <tr>
                                                <td rowspan="1" style="border-style: solid; border-width: medium; border-color: #FFFFFF; background-color: #FFFFFF;" class="auto-style9">
                                                   <center> <asp:Label ID="Label2" runat="server" Height="24px" Text='<%# Eval("Cat_Discription") %>' Width="224px"></asp:Label>
                                               </center> </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:DataList>
                            </td>
                            <td>&nbsp;</td>
                         
                            <td class="auto-style2">&nbsp;</td>
                            <td class="auto-style7">
                                <%--<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>--%>
                            </td>
                        </tr>
                    </table>
                    <br />
                
</asp:Content>
