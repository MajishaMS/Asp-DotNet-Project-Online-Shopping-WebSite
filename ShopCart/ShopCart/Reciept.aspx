<%@ Page Title="" Language="C#" MasterPageFile="~/MasterHome.Master" AutoEventWireup="true" CodeBehind="Reciept.aspx.cs" Inherits="ShopCart.Reciept" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="styleSheet4.css"/>
   
    
   
    <style type="text/css">
        .auto-style1 {
            width: 338px;
        }
        .auto-style2 {
            width: 202px;
        }
    </style>
   
    
   
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center class="auto-style13">

 <div style="margin-top: 20px;">
  <div class="row">
    <div class="col-sm-8 col-sm-offset-2">
      <div class="tab"></div>
    </div>
  </div>
   <div class="row">
    <div class="col-sm-6 col-sm-offset-3 container-fluid">
      <div class="panel panel-dark panel-default pseudo">
        <div class="panel-body">
          <div class="row">

             
                        
                       
                      
                  
          
              <center> <div> <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" CellSpacing="2" Width="500px" >
                    <Columns>
                     
                
                        <asp:BoundField DataField="Product_Name" HeaderText="Product name" />
                         
                      <asp:BoundField DataField="Product_Price" HeaderText="MRP" />
                        
                        <asp:BoundField DataField="Product_Quantity" HeaderText="Quantity" />
                        
                       <asp:BoundField DataField="Sub_Total" HeaderText="Total Price" /> 
                         

                        </Columns>
                </asp:GridView>
                   </div></center>
              <br />
              
             
                         <hr class="auto-style11"/>
        <center><table>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
 <asp:Label ID="Label4" runat="server" Text="Bill Number           :  "></asp:Label>
                </td>
                <td class="auto-style9">
                     <asp:TextBox ID="TextBox4" runat="server" BackColor="Transparent" Width="422px" BorderColor="Transparent" Height="35px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
<asp:Label ID="Label5" runat="server" Text="Bill Date                  : "></asp:Label>
                </td>
                <td class="auto-style9">
                     <asp:TextBox ID="TextBox5" runat="server" BackColor="Transparent" BorderColor="Transparent" Width="447px" CssClass="auto-style5" Height="33px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Text="Payable amount         :  "></asp:Label>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox7" runat="server" BackColor="Transparent" BorderColor="Transparent" Width="394px" CssClass="auto-style7" Height="36px"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td class="auto-style2">

                    &nbsp;</td>
                <td class="auto-style1">

                </td>
                <td class="auto-style9">
 <asp:Button ID="Button1" runat="server" Text="Proceed To Pay" class="btn btn-success" style="width: 32%; height: 38px" BackColor="#6699FF" OnClick="Button1_Click"/>
                </td>
                <td>

                </td>
            </tr>
        </table></center>
            
               
                   
               
                        
                        

                       

       
                
                      
             
         
            
                
                      
               
        
         
        </div>
         
        </div>
           
      </div>
          
    </div>
  </div>

</div>
   </center> 
</asp:Content>
