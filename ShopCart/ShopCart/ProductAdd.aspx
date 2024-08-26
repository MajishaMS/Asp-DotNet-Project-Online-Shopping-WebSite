<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="ProductAdd.aspx.cs" Inherits="ShopCart.ProductAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
   
        <%--<link rel="stylesheet" href= "style1.css"/>--%>
   
       <link rel="stylesheet" href= "StyleSheet1.css"/>
       
        <style type="text/css">
            .auto-style1 {
               /* height: 400px;*/
                width: 20%;
            }
            </style>
        <script type="text/javascript">
            function fun() {
                alert("Inserted");
            }
        </script>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
   
    <div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->
    <h2 class="active"> Add Product </h2>
    <a href="ProductEdit.aspx">  <h2 class="inactive underlineHover">Edit Product</h2>
        </a>
    <!-- Icon -->
    <div class="fadeIn first">
      <img src="images/ShopeCartLogo1.jpg" id="icon" alt="User Icon" class="auto-style1" />
    </div>

    <!-- Login Form -->
      <br />
      <%--<input type="text" id="login" class="fadeIn second" name="login" placeholder="login">--%>
      <%--<input type="text" id="password" class="fadeIn third" name="login" placeholder="password">
      <input type="submit" class="fadeIn fourth" value="Log In"> --%>
      <br />
      <h6>Category Name:</h6><asp:DropDownList ID="DropDownList1" runat="server" Height="34px" Width="255px" CssClass="fadeIn third textbox">
                    </asp:DropDownList>
      <br />
   
    <!-- Remind Passowrd -->
   <%-- <div id="formFooter">
      <a class="underlineHover" href="#">Forgot Password?</a>
    </div>--%>
      
    <asp:TextBox ID="TextBox1" runat="server" Width="198px" placeholder="Product Name" CssClass="fadeIn second"></asp:TextBox>
      <asp:TextBox ID="TextBox2" runat="server" Width="191px" placeholder="Discription" CssClass="fadeIn third"></asp:TextBox>
      
      <br />
    <h6>Image:</h6>   <asp:FileUpload ID="FileUpload1" runat="server" Height="43px" Width="171px" CssClass="mt-0" />
      <br />
      <br />
      <asp:TextBox ID="TextBox4" runat="server" Width="191px" placeholder="Stock" CssClass="fadeIn third"></asp:TextBox>

      <asp:TextBox ID="TextBox3" runat="server" Width="198px" placeholder="Price" CssClass="fadeIn second" ></asp:TextBox>
      <br />
      <asp:Button ID="Button1" runat="server" Text="Add" class="fadeIn fourth"  OnClick="Button1_Click" OnClientClick="fun();"/>

  </div>
</div>
</asp:Content>
