<%@ Page Title="" Language="C#" MasterPageFile="~/MasterHome.Master" AutoEventWireup="true" CodeBehind="CartPage.aspx.cs" Inherits="ShopCart.CartPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href= "StyleSheet2.css"/>
     <link rel="stylesheet" href= "StyleSheet1.css"/>
    <style type="text/css">
        .auto-style18 {
            width: 645px;
        }
        .auto-style19 {
            width: 694px;
        }
        .auto-style20 {
            width: 157px;
        }
        .auto-style21 {
            width: 147px;
        }
        .auto-style22 {
            width: 671px;
        }
        #Button4
        {
          /*background: none;
    border: none;
    outline: none;
    box-shadow: none;
    background-color: none;
    border: none;
    color: none;
    padding: 0;
    text-align: 0;
    text-decoration: none;
    display: none;
    text-transform: none;
    font-size: 0;
    -webkit-box-shadow: none;
    box-shadow: none;
    -webkit-border-radius: 0;
    border-radius: 0;
    margin: 0;
    -webkit-transition: none;
    -moz-transition: none;
    -ms-transition: none;
    -o-transition: none;
    transition: none;*/
        }
        .auto-style29 {
            width: 187px;
        }
        .auto-style31 {
          /*  width: 200px;
            -moz-transform: scale(0.85);
        -webkit-transform: scale(0.85);
        -o-transform: scale(0.85);
        -ms-transform: scale(0.85);
        transform: scale(0.85);*/
        }
        .auto-style32 {
            margin-right: 0px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="wrapper fadeInDown">
  <%--<div id="formContent" class="auto-style3">--%>
      <%-- <center><h6> Happy Shopping!</h6></center>
   
      <img src="images/ShopeCartLogo.jpg" id="icon" alt="User Icon" width="100" height="150"/>
       --%>

        






     <div class="card shadow-0 border">
          <div class="card-body">
            <div class="d-flex justify-content-between">
              <p class="auto-style20">Total price:</p>
                  <p class="auto-style21">$<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></p>
              <%--<p class="mb-2">$329.00</p>--%>
            </div>
           <%-- div class="d-flex justify-content-between">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> <p class="mb-2">Discount:</p>
              <p class="mb-2 text-success">-$60.00</p>
            </div>--%>
            <%--<div class="d-flex justify-content-between">
               <td class="auto-style27">
                                            
            </div>--%>
            <hr class="auto-style18" />
            <div class="auto-style22">
            <%--  <p class="mb-2">Total price:</p>
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
              <p class="mb-2 fw-bold">283.00</p>--%>
            </div>

            <div class="auto-style19">
                <asp:Button ID="Button1" runat="server" Text="Make Purchase" CssClass="btn btn-success w-100 shadow-0 mb-2" OnClick="Button1_Click"/> 
             <asp:Button ID="Button2" runat="server" Text=" Back to shop" CssClass="btn btn-light w-100 border mt-2" OnClick="Button2_Click"/> 
                <br />
            </div>
          </div>
        </div>

       </div>
    <br />
</div>

    <div class="col-lg-9">
        <div class="card border shadow-0">
          <div class="m-4">
            <h4 class="card-title mb-4">Your shopping cart</h4>
            <div class="row gy-3 mb-4">
              <div class="col-lg-5">
                <div class="me-lg-5">
                  <div class="d-flex">
                      <asp:DataList ID="DataList1" runat="server" CellPadding="8" HorizontalAlign="Center" RepeatDirection="Horizontal" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                          <ItemTemplate>



                              <div class="">
                        
                              <a href="#" class="nav-link">

                                <table style="background-color: #F0F0F0; border-color: #F0F0F0" >
                                    <tr>
                                        
                                        <td class="auto-style29" >
                                            <asp:Image ID="Image2" runat="server" Height="99px" Width="85px" ImageUrl='<%# Eval("Product_Image") %>' />
                                            
                                        </td>
     
                                        <td class="auto-style31" >
                                           <asp:Label ID="Label1" runat="server" Text='<%# Eval("Product_Name") %>'></asp:Label>
                                   <asp:Label ID="Label3" runat="server" Text='<%# Eval("Product_Discription") %>'></asp:Label>
                                             <h6>MRP:<asp:Label ID="Label6" runat="server" Text='<%# Eval("Product_Price") %>'></asp:Label>
                                        </td>
                                     </tr>

                                    <tr>
                                        <td class="auto-style29">
                                           
                                        <td class="auto-style31" >
                                           <h6>SubTotal:<asp:Label ID="Label2" runat="server" Text='<%# Eval("Sub_Total") %>'></asp:Label>
                                           </h6> 
                                        </td>

                                        </tr>
                                     <tr>
                                         <td class="auto-style29">&nbsp;</td>
                                          
                                         <td >
                                             <%--<a href="#">--%>
                                             <asp:Button CssClass="bt" ID="Button5" runat="server" BackColor="#CCCCCC" BorderStyle="Double" ForeColor="Black" Height="22px" Text="-" Width="22px" CommandArgument='<%# Eval("Cart_Id") %>' OnClick="Button5_Click" OnCommand="Button5_Command" />
                                             <asp:Label ID="Label4" runat="server" Text='<%# Eval("Product_Quantity") %>'></asp:Label>
                                             <asp:Button ID="Button4" runat="server" BackColor="#CCCCCC" BorderStyle="Double" ForeColor="Black" Height="22px" Text="+" Width="19px" CommandArgument='<%# Eval("Cart_Id") %>' OnClick="Button4_Click" OnCommand="Button4_Command" />
                                            </tr>
                                     <tr>
                                        
                                        <td class="auto-style29" >
                                            &nbsp;</td>
                                         <td class="auto-style31"><a class="nav-link" href="#">
                                             <asp:Button ID="Button3" runat="server" Text="Remove" Width="226px" CssClass="auto-style32" CommandArgument='<%# Eval("Cart_Id") %>' OnCommand="Button3_Command" />
                                             </a></td>
                                       
                                    </tr>
                                   
                                </table>
                            </ItemTemplate>
                        </asp:DataList>
                      </div>
                  </div>
                </div>
              </div>
                </div>
              </div>
                   
                                            <%--<p class="text-muted">Yellow, Jeans</p>--%>
                            
                                            
                                        
                                       
                                       <%-- <td class="auto-style12">
                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Product_Discription") %>'></asp:Label>
                                        </td>
                                        <td class="auto-style14"></td>
                                        <td class="auto-style9"></td>--%>
                                   



             <%-- <div class="col-lg-2 col-sm-6 col-6 d-flex flex-row flex-lg-column flex-xl-row text-nowrap">
                <div class="">
                    <caption>
                        <select class="form-select me-4" style="width: 100px;">
                            <td class="auto-style8">
                                <asp:Button ID="Button1" runat="server" Height="25px" Text="Button" Width="26px" />
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Stock") %>'></asp:Label>
                                <asp:Button ID="Button2" runat="server" Height="24px" Text="Button" Width="35px" />
                            </td>
                        </select>
                    </caption>
                </div>--%>
             
                                   
                                   
                                   
                                
                    
              <div class="col-lg col-sm-6 d-flex justify-content-sm-center justify-content-md-start justify-content-lg-center justify-content-xl-end mb-2">
                <div class="float-md-end">
                  <%--<a href="#!" class="btn btn-light border px-2 icon-hover-primary"><i class="fas fa-heart fa-lg px-1 text-secondary"></i></a>
                  <a href="#" class="btn btn-light border text-danger icon-hover-danger"> Remov</a>--%>
                </div>
              </div>
            </div>

           <%-- <div class="row gy-3 mb-4">
              <div class="col-lg-5">
                <div class="me-lg-5">
                  <div class="d-flex">
                    <img src="images/Phone2.png" class="border rounded me-3" style="width: 96px; height: 96px;" />
                    <div class="">
                      <a href="#" class="nav-link">Mens T-shirt Cotton Base</a>
                      <p class="text-muted">Blue, Medium</p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-2 col-sm-6 col-6 d-flex flex-row flex-lg-column flex-xl-row text-nowrap">
                <div class="">
                  <select style="width: 100px;" class="form-select me-4">
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                  </select>
                </div>
                <div class="">
                  <text class="h6">$44.80</text> <br />
                  <small class="text-muted text-nowrap"> $12.20 / per item </small>
                </div>
              </div>
              <div class="col-lg col-sm-6 d-flex justify-content-sm-center justify-content-md-start justify-content-lg-center justify-content-xl-end mb-2">
                <div class="float-md-end">
                  <a href="#!" class="btn btn-light border px-2 icon-hover-primary"><i class="fas fa-heart fa-lg px-1 text-secondary"></i></a>
                  <a href="#" class="btn btn-light border text-danger icon-hover-danger"> Remove</a>
                </div>
              </div>
            </div>

            <div class="row gy-3">
              <div class="col-lg-5">
                <div class="me-lg-5">
                  <div class="d-flex">
                    <img src="images/Phone2.png" class="border rounded me-3" style="width: 96px; height: 96px;" />
                    <div class="">
                      <a href="#" class="nav-link">Blazer Suit Dress Jacket for Men</a>
                      <p class="text-muted">XL size, Jeans, Blue</p>
                    </div>
                  </div>
                </div>
              </div>--%>
              <div class="col-lg-2 col-sm-6 col-6 d-flex flex-row flex-lg-column flex-xl-row text-nowrap">
                <div>
                    <td>
                                        </td>
                                        <td class="auto-style8">
                                        </td>
                                        <td>
                                        </td>
                    <%--<asp:Button ID="Button4" runat="server" BorderStyle="Double" Height="65px" Text="-" Width="206px" ForeColor="Black" BackColor="#3399FF" />--%>
                </div>
                <%--<div class="">
                  <text class="h6">$1156.00</text> <br />
                  <small class="text-muted text-nowrap"> $460.00 / per item </small>
                </div>
              </div>
              <div class="col-lg col-sm-6 d-flex justify-content-sm-center justify-content-md-start justify-content-lg-center justify-content-xl-end mb-2">
                <div class="float-md-end">
                  <a href="#!" class="btn btn-light border px-2 icon-hover-primary"><i class="fas fa-heart fa-lg px-1 text-secondary"></i></a>
                  <a href="#" class="btn btn-light border text-danger icon-hover-danger"> Remove</a>
                </div>
              </div>
            </div>
          </div>

          <div class="border-top pt-4 mx-4 mb-4">
            <p><i class="fas fa-truck text-muted fa-lg"></i> Free Delivery within 1-2 weeks</p>
            <p class="text-muted">
              Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
              aliquip
            </p>
          </div>
        </div>
      </div>--%>
      <!-- cart -->
      <!-- summary -->
     <%-- <div class="col-lg-3">
        <div class="card mb-3 border shadow-0">
          <div class="card-body">
            <%--<form>
              <div class="form-group">
               <label class="form-label">Have coupon?</label>
                <div class="input-group">
                  <input type="text" class="form-control border" name="" placeholder="Coupon code" />
                  <button class="btn btn-light border">Apply</button>
                </div>
              </div>
            </form>
         <</div>
        </div>--%>
       
      <%--</div>
      <!-- summary -->
    </div>
  </div>
</section>--%>
<!-- cart + summary -->
    </div>
</asp:Content>


