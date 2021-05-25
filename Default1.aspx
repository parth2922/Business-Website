<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default7.aspx.cs" Inherits="Default7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">  
            <h1>Parth Insulation</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Add Product</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Add Product</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form">
                <div class="card-body">
                  <div class="form-group" >
                    <div class="col-sm-12">
           <table style="width:100%" cellspacing="50px">
        
        
        
        <tr>
            <td colspan="1">
              <label>Product ID :</label></td>
            <td colspan="2">
                &nbsp;<asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
            </td>
            <td colspan="2">
                <label>Date</label></td>
            <td>
                &nbsp;<asp:TextBox ID="TextBox4" runat="server" class="form-control" TextMode="Date"></asp:TextBox>
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="7">
                <div class="card-header">
                <h2 class="card-title">Product Details</h2>
              </div></td>    
        </tr>
        <tr>
            <td rowspan="2">
                <label>Product HSN CODE:</label></td>
            <td colspan="2" rowspan="2">
                           &nbsp;<asp:TextBox ID="TextBox5" runat="server" class="form-control"></asp:TextBox>
     
            </td>
            <td>
                <label>Product&nbsp; Name :</label></td>
            <td colspan="3">
                &nbsp;<asp:TextBox ID="TextBox6" runat="server" class="form-control"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td>
                <label>Product Description:</label></td>
            <td colspan="3">
                &nbsp;<asp:TextBox ID="TextBox7" runat="server" class="form-control"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <label>Unit:</label></td>
            <td colspan="2">
                &nbsp;<asp:TextBox ID="TextBox8" runat="server" class="form-control"></asp:TextBox>
                
            </td>
            <td>
                <label>Tax:</label></td>
            <td colspan="3">
                &nbsp;<asp:TextBox ID="TextBox9" runat="server" class="form-control"></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td>
                <label>Product&nbsp; Qty:</label></td>
            <td colspan="2">
                &nbsp;<asp:TextBox ID="TextBox10" runat="server" class="form-control" TextMode="Number"></asp:TextBox>
              
            </td>
            <td>
                <label>Product Rate</label></td>
            <td colspan="3">
                &nbsp;<asp:TextBox ID="TextBox11" runat="server" class="form-control" TextMode="Number"></asp:TextBox>
              
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="6">
                <br />
                <asp:Button ID="Button1" runat="server" Text="Add Product" class="btn btn-primary" />
                
            </td>
        </tr> 
    </table>
                </div>   

                  </div>
                  
                <!-- /.card-body -->

                
              </form>
            </div>
            </div>
          </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
</asp:Content>

