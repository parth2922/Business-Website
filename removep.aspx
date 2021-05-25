<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeFile="removep.aspx.cs" Inherits="removep" %>

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
                <h3 class="card-title">Remove Product</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
             
               <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Product ID :</label>
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox></div>
                 <div class="form-group">
                    <asp:Button ID="Button1" runat="server" Text="Remove" class="btn btn-primary" OnClick="Button1_Click" />
                  </div> 
                  <div class="form-group">
                    <asp:Label ID="Label1" runat="server" ForeColor="#CC0000"></asp:Label>
                  </div>
                  
                </div> <!-- /.card-body -->

                
            </div>
            </div>
          </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
</asp:Content>

