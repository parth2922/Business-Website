<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeFile="taxdate.aspx.cs" Inherits="taxdate" %>

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
                <h3 class="card-title">All Client Invoice Info (Date Wise)</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              
              <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Client Name:</label>
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox></div>
                 
                    <div class="form-group">
                    <label for="exampleInputPassword1">Select Date</label>
                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" TextMode="Date"></asp:TextBox>
                    </div>
              
                <div class="form-group">
                    <label for="exampleInputPassword1">To</label>
                    <asp:TextBox ID="TextBox3" runat="server" class="form-control" TextMode="Date"></asp:TextBox>
                    </div>
                <div class="form-group">
                    <asp:Button ID="Button1" runat="server" Text="Find Record"  class="btn btn-primary" OnClick="Button1_Click" /></div>
                  
                  <div class="form-group">
                    <asp:Button ID="Button2" runat="server" Text="Show All Record"  class="btn btn-primary" OnClick="Button2_Click" /></div>
                  <div class="form-group">
                        <asp:GridView ID="GridView1" ShowHeaderWhenEmpty="True" width="100%" EmptyDataText="No Record Found!" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                  </div>
                  
                </div>
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

