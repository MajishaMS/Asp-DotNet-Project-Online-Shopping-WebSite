<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BankPage.aspx.cs" Inherits="ShopCart.BankPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="styleSheet5.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
        <div class="title">
            <p>Bank Account Registration Form</p>
        </div>

        
            <div class="user_details">
                <div class="input_box">
                    <asp:Label ID="Label1" runat="server" Text="Account holder Name"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter your name"></asp:TextBox> 
                </div>
                <div class="input_box">
                    <asp:Label ID="Label2" runat="server" Text="Account Number"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter the account number"></asp:TextBox> 
                </div>
                <div class="input_box">
                     <asp:Label ID="Label3" runat="server" Text="Account Type"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter the account type"></asp:TextBox> 
                </div>
                <div class="input_box">
                   <asp:Label ID="Label4" runat="server" Text="Account Balance"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter the account balance"></asp:TextBox> 
                </div>
              
            <div class="reg_btn">
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />  
            </div>
       
    </div>
        </div>
    </form>
</body>
</html>
