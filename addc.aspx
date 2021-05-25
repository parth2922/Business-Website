<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeFile="addc.aspx.cs" Inherits="addc" %>

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
                <h3 class="card-title">Add New Client</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
             
               <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">New Client ID :</label>
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox></div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Date</label>
                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" TextMode="Date"></asp:TextBox>

                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Enter Client Name:</label>
                    <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox></div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Client Address:</label>
                    <asp:TextBox ID="TextBox4" runat="server" class="form-control"></asp:TextBox></div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Client Address Line2:</label>
                    <asp:TextBox ID="TextBox5" runat="server" class="form-control"></asp:TextBox></div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">City:</label>
                    <asp:TextBox ID="TextBox6" runat="server" class="form-control"></asp:TextBox></div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Pincode:</label>
                    <asp:TextBox ID="TextBox7" runat="server" class="form-control" TextMode="Number"></asp:TextBox></div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Client Mno:</label>
                    <asp:TextBox ID="TextBox8" runat="server" class="form-control" TextMode="Number"></asp:TextBox></div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Gst No:</label>
                    <asp:TextBox ID="TextBox9" runat="server" class="form-control"></asp:TextBox></div>
                  <div class="form-group">
                    <asp:Button ID="Button1" runat="server" Text="Add Client" class="btn btn-primary" OnClick="Button1_Click" />
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

