<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeFile="Default7.aspx.cs" Inherits="Default7" %>

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
             
                
               <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Product ID:</label>
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox></div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Date</label>
                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" TextMode="Date"></asp:TextBox>
                  <div class="card-header">
                     <h2 class="card-title">Product Details</h2>
                  </div>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Product HSN CODE:</label>
                    <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox></div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Product Name:</label>
                    <asp:TextBox ID="TextBox4" runat="server" class="form-control"></asp:TextBox></div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Product Description:</label>
                    <asp:TextBox ID="TextBox5" runat="server" class="form-control"></asp:TextBox></div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Unit:</label>
                    <asp:TextBox ID="TextBox6" runat="server" class="form-control"></asp:TextBox></div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Tax</label>
                    <asp:TextBox ID="TextBox7" runat="server" class="form-control" TextMode="Number"></asp:TextBox></div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Product Qty:</label>
                    <asp:TextBox ID="TextBox8" runat="server" class="form-control" TextMode="Number"></asp:TextBox></div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Product Rate:</label>
                    <asp:TextBox ID="TextBox9" runat="server" class="form-control" TextMode="Number"></asp:TextBox></div>
                  <div class="form-group">
                    <asp:Button ID="Button1" runat="server" Text="Add Product" class="btn btn-primary" OnClick="Button1_Click" />
                  </div>
                 <div class="form-group">
                    <asp:Label ID="Label1" runat="server" ForeColor="#CC0000"></asp:Label>
                  </div>

                </div> <!-- /.card-body -->
                <!-- /.card-body -->   
            </div>
            </div>
          </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
</asp:Content>
