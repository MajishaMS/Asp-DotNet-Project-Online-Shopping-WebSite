<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.Master" AutoEventWireup="true" CodeBehind="CategoryEdit.aspx.cs" Inherits="ShopCart.CategoryEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
   
        <%--<link rel="stylesheet" href= "style1.css"/>--%>
   
       <link rel="stylesheet" href= "StyleSheet1.css"/>
       
        <style type="text/css">
            .auto-style1 {
               /* height: 400px;*/
                width: 20%;
            }
            .auto-style2 {
                width: 236px;
            }
            .auto-style3 {
                width: 198px;
            }
            .auto-style4 {
                width: 266px;
            }
            .auto-style5 {
                width: 224px;
            }
            </style>
        <script type="text/javascript">
            function fun() {
                alert("Updated");
            }
        </script>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
   
    <div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->
     <a href="CategoryAdd.aspx"> <h2 class="inactive underlineHover"> Add Category </h2>
    <h2 class="active">Edit Category</h2>
        </a>
    <!-- Icon -->
    <div class="fadeIn first">
      <img src="images/ShopeCartLogo1.jpg" id="icon" alt="User Icon" class="auto-style1" />
    </div>

    <!-- Login Form -->
      
      <%--<input type="text" id="login" class="fadeIn second" name="login" placeholder="login">--%>
      <%--<input type="text" id="password" class="fadeIn third" name="login" placeholder="password">
      <input type="submit" class="fadeIn fourth" value="Log In"> --%>
         
      <br />
   
      </div>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Category Details"></asp:Label>
      <br />
           <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CssClass="fadeIn third textbox1" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="2" Width="910px" Height="158px" style="margin-left: 0px" AutoGenerateColumns="False">
                                                  <Columns>
                                                      <asp:TemplateField HeaderText="Edit">
                                                          <ItemTemplate>
                                                              <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Cat_Id") %>' OnCommand="LinkButton1_Command1" ForeColor="#0066FF">Click here</asp:LinkButton>
                                                          </ItemTemplate>
                                                      </asp:TemplateField>
                                                      <asp:BoundField DataField="Cat_Id" HeaderText="Category Id" />
                                                      <asp:BoundField DataField="Cat_Name" HeaderText="Category Name"/>
                                                      <asp:BoundField DataField="Cat_Image" HeaderText="Image"/>
                                                      <asp:BoundField DataField="Cat_Discription" HeaderText="Discription"/>
                                                      <asp:BoundField DataField="Cat_Status" HeaderText="Status"/>
                                                  </Columns>
                                                  <EditRowStyle BackColor="#99CCFF" BorderColor="#003366" BorderStyle="Solid" />
                                              </asp:GridView>
        
      <br />
      <br />
       <asp:Panel ID="Panel3" runat="server" Visible="False" Width="872px" CssClass="fadeIn third textbox">
                                                  <table border="1" class="w-100" style="border-color: #FFFFFF">
                                                      <tr>
                                                          <td style="border-color: #000000" class="auto-style2"><a href="#">
                                                              <asp:Label ID="Label2" runat="server" Text="Category Name"></asp:Label>
                                                              </a></td>
                                                          <td style="border-color: #000000" class="auto-style3"><a href="#">
                                                              <asp:Label ID="Label3" runat="server" Text="Photo"></asp:Label>
                                                              </a></td>
                                                          <td style="border-color: #000000" class="auto-style4"><a href="#">
                                                              <asp:Label ID="Label4" runat="server" Text="Category Discription"></asp:Label>
                                                              </a></td>
                                                          <td style="border-color: #000000" class="auto-style5"><a href="#">
                                                              <asp:Label ID="Label5" runat="server" Text="Status"></asp:Label>
                                                              </a></td>
                                                      </tr>
                                                      <tr>
                                                          <td style="border-color: #000000" class="auto-style2"><a href="#">
                                                              <asp:TextBox ID="TextBox1" runat="server" BackColor="Transparent" Height="28px" Width="125px"></asp:TextBox>
                                                              </a></td>
                                                          <td  style="border-color: #000000" class="auto-style3"><a href="#">
                                                              <asp:Image ID="Image1" runat="server" Height="123px" Width="120px" />
                                                              </a></td>
                                                          <td style="border-color: #000000" class="auto-style4"><a href="#">
                                                              <asp:TextBox ID="TextBox2" runat="server" BackColor="Transparent" Height="29px" Width="141px"></asp:TextBox>
                                                              </a></td>
                                                          <td style="border-color: #000000" class="auto-style5"><a href="#">
                                                              <asp:TextBox ID="TextBox3" runat="server" BackColor="Transparent" Height="29px" Width="155px"></asp:TextBox>
                                                              </a></td>
                                                      </tr>
                                                      <tr>
                                                          <td class="auto-style2" ></td>
                                                          <td class="auto-style3" ><a href="#">
                                                              <asp:FileUpload ID="FileUpload1" runat="server" BackColor="Transparent" Height="28px" Width="143px" />
                                                              </a></td>
                                                          <td class="auto-style4">
                                                              <asp:Button ID="Button1" runat="server" class="fadeIn fourth" OnClick="Button1_Click" OnClientClick="fun();" Text="Edit" />
                                                          </td>
                                                          <td class="auto-style5"></td>
                                                      </tr>
                                                  </table>
                                              </asp:Panel>
      <br />
     

  </div>
</div>
</asp:Content>
