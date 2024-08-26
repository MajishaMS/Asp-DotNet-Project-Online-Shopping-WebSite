<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="CategoryAdd.aspx.cs" Inherits="ShopCart.CategoryAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
   
        <%--<link rel="stylesheet" href= "style1.css"/>--%>
   
       <link rel="stylesheet" href= "StyleSheet1.css"/>
       
        <style type="text/css">
            .auto-style1 {
               /* height: 400px;*/
                width: 20%;
            }
            .auto-style2 {
                margin-top: 0px;
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
    <h2 class="active"> Add Category </h2>
    <a href="CategoryEdit.aspx">  <h2 class="inactive underlineHover">Edit Category</h2>
        </a>
    <!-- Icon -->
    <div class="fadeIn first">
      <img src="images/ShopeCartLogo1.jpg" id="icon" alt="User Icon" class="auto-style1" />
    </div>

    <!-- Login Form -->
      <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
      <br />
      <%--<input type="text" id="login" class="fadeIn second" name="login" placeholder="login">--%>
      <%--<input type="text" id="password" class="fadeIn third" name="login" placeholder="password">
      <input type="submit" class="fadeIn fourth" value="Log In"> --%>
         
    <asp:TextBox ID="TextBox1" runat="server" Width="198px" placeholder="Category Name" class="fadeIn second" CssClass="auto-style2" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
      <asp:TextBox ID="TextBox2" runat="server" Width="191px" placeholder="Discription" class="fadeIn third"></asp:TextBox>
      <br />
   
    <!-- Remind Passowrd -->
   <%-- <div id="formFooter">
      <a class="underlineHover" href="#">Forgot Password?</a>
    </div>--%>
      
      <br />
    <h6>Image:</h6>   <asp:FileUpload ID="FileUpload1" runat="server" Height="43px" Width="171px" CssClass="mt-0" />
      <br />
      <br />
      <asp:Button ID="Button1" runat="server" Text="Add" class="fadeIn fourth"  OnClick="Button1_Click" OnClientClick="fun();"/>
     

  </div>
</div>
</asp:Content>
