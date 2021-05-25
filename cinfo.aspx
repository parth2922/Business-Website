<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeFile="cinfo.aspx.cs" Inherits="cinfo" %>

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
                <h3 class="card-title">Client Invoice Information</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
             
               <div class="card-body" style="text-align:center">
                  
                  
                  
                  
                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" width="100%" DataKeyNames="iid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                       <AlternatingRowStyle BackColor="White" />
                       <Columns>
                           <asp:BoundField DataField="iid" HeaderText="iid" ReadOnly="True" SortExpression="iid" />
                           <asp:BoundField DataField="idate" HeaderText="idate" SortExpression="idate" />
                           <asp:BoundField DataField="ddate" HeaderText="ddate" SortExpression="ddate" />
                           <asp:BoundField DataField="cname" HeaderText="cname" SortExpression="cname" />
                           <asp:BoundField DataField="cmo" HeaderText="cmo" SortExpression="cmo" />
                           <asp:BoundField DataField="pvalue" HeaderText="pvalue" SortExpression="pvalue" />
                           <asp:BoundField DataField="taxa" HeaderText="taxa" SortExpression="taxa" />
                           <asp:BoundField DataField="total" HeaderText="total" SortExpression="total" />
                          
                       </Columns>
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
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db %>" SelectCommand="SELECT * FROM [invoice]"></asp:SqlDataSource>
                  
                  
                  
                  
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

