<%@ Page Title="" Language="C#" MasterPageFile="~/MasterHome.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="ShopCart.ProductDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
   
        <%--<link rel="stylesheet" href= "style1.css"/>--%>
   
       <link rel="stylesheet" href= "StyleSheet1.css"/>
       
        </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
   
    <div class="wrapper fadeInDown">
  <div id="formContent" class="auto-style3">
       <center><h6> Happy Shopping!</h6></center>
    <!-- Tabs Titles -->
   <%-- <h2 class="active"> Sign In </h2>
    <a href="RegisterUser.aspx">  <h2 class="inactive underlineHover">Sign Up </h2>
        </a>--%>
    <!-- Icon -->
    <%--<div class="auto-style5">--%>
      <img src="images/ShopeCartLogo.jpg" id="icon" alt="User Icon" width="100" height="150"/>
       
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
     <table >
                
                <tr>
                    
                    <td class="auto-style37" >
                        <asp:DataList ID="DataList1" runat="server" Height="500px" RepeatDirection="Horizontal">
                            <ItemTemplate>
                                <br />
                                <table >
                                    <tr>
                                        <td >
                                            <asp:Image ID="Image1" runat="server" Height="527px" Width="378px" ImageUrl='<%# Eval("Product_Image") %>' />
                                        </td>
                                        <td class="auto-style35">
                                            
                                        </td>
                                        <td class="auto-style38" >
                                            <asp:Panel ID="Panel1" runat="server" Height="280px" Width="492px">
                                                <table >
                                                    <tr>
                                                        <td >
                                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Product_Name") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td ></td>
                                                    </tr>
                                                    <tr>
                                                        <td >
                                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Product_Discription") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <br />
                                                            <br />
                                                            <br />
                                                            <table >
                                                                <tr>
                                                                    <td >
                                                                        <asp:Label ID="Label3" runat="server" Text="MRP:"></asp:Label>
                                                                    </td>
                                                                    <td >
                                                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Product_Price") %>'></asp:Label>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td>&nbsp;</td>
                                                                    <td>&nbsp;</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Product_Status") %>'></asp:Label>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Stock") %>'></asp:Label>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                            <br />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </asp:Panel>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                                <br />
                            </ItemTemplate>
                        </asp:DataList>
                    </td>
                    <td class="auto-style36"></td>
                </tr>
                
                        <table>
                            <tr>
                                <td class="auto-style46"></td>
                                <td class="auto-style47"></td>
                                <td class="auto-style48">
                                    <asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label>
                                </td>
                                <td class="auto-style46">
                                </td>
                                <td class="auto-style49">
                                    </td>
                                </tr>
                            <tr>
                                <td class="auto-style39">&nbsp;</td>
                                <td class="auto-style44">Qty:</td>
                                <td class="auto-style42">
                                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style41">
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
                                        <asp:ListItem>6</asp:ListItem>
                                        <asp:ListItem>7</asp:ListItem>
                                        <asp:ListItem>8</asp:ListItem>
                                        <asp:ListItem>9</asp:ListItem>
                                        <asp:ListItem>10</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td class="auto-style39">
                                    <asp:Button ID="Button1" runat="server" Height="53px" OnClick="Button1_Click" Text="Add To Cart" Width="289px" />
                                </td>
                                <td class="auto-style40">
                                    &nbsp;</td>
                                </tr>
                            <tr>
                                <td class="auto-style34">&nbsp;</td>
                                <td class="auto-style45">&nbsp;</td>
                                <td class="auto-style43">&nbsp;</td>
                                <td class="auto-style34">
                                    <asp:Button ID="Button2" runat="server" Height="58px" Text="Proceed to Buy" Width="291px" />
                                </td>
                                <td class="auto-style33">
                                    &nbsp;</td>
                                </tr>
                            <tr>
                                <td class="auto-style34">
                                    &nbsp;</td>
                                <td class="auto-style45">
                                    &nbsp;</td>
                                <td class="auto-style43">
                                    &nbsp;</td>
                                <td class="auto-style34">
                                    &nbsp;</td>
                            </tr>
                           
                    </table>
            </table>
        </div>
</asp:Content>
