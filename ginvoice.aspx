<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeFile="ginvoice.aspx.cs" Inherits="ginvoice" %>

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
                <h3 class="card-title">TAX INVOICE | Orignal</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Invoice No :</label>
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox></div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Invoice Date:</label>
                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" TextMode="Date"></asp:TextBox>
                  
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Payment Term:</label>
                    <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox></div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Product Name:</label>
                   
                      <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">
                          <asp:ListItem>Immediate Payment</asp:ListItem>
                          <asp:ListItem>Cash</asp:ListItem>
                          <asp:ListItem>7 Days</asp:ListItem>
                        <asp:ListItem>15 Days</asp:ListItem>
                        <asp:ListItem>30 Days</asp:ListItem>
                        <asp:ListItem>45 Days</asp:ListItem>
                        <asp:ListItem>60 Days</asp:ListItem>
                        <asp:ListItem>90 Days</asp:ListItem>

                      </asp:DropDownList>
	</div>
                    <div class="form-group">
                    <label for="exampleInputEmail1">Due Date:</label>
                    <asp:TextBox ID="TextBox5" runat="server" class="form-control" TextMode="Date"></asp:TextBox></div>
                     <div class="card-header">
                     <h2 class="card-title">Client Details</h2>
                  </div>
               
                  <div class="form-group">
                    <label for="exampleInputEmail1">Search Client:</label>
                    <asp:TextBox ID="TextBox6" runat="server" class="form-control"></asp:TextBox></div>
                  <div class="form-group">         
                    <asp:Button ID="Button2" runat="server" Text="Find Details" class="btn btn-primary" OnClick="Button2_Click"/>
      
                  </div>
                  <div class="form-group">
                    <asp:Label ID="Label1" runat="server" ForeColor="#CC0000"></asp:Label>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Customer Order No:</label>
                    <asp:TextBox ID="TextBox8" runat="server" class="form-control"></asp:TextBox></div>
                  
                  <div class="form-group">
                    <label for="exampleInputEmail1">Client Name:</label>
                    <asp:TextBox ID="TextBox9" runat="server" class="form-control"></asp:TextBox></div>
                  
                  <div class="form-group">
                    <label for="exampleInputEmail1">Order Date:</label>
                    <asp:TextBox ID="TextBox4" runat="server" class="form-control"></asp:TextBox></div>
                  
                  <div class="form-group">
                    <label for="exampleInputEmail1">Tax</label>
                    <asp:TextBox ID="TextBox7" runat="server" class="form-control" TextMode="Number"></asp:TextBox>
      
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Client Address Line1:</label>
                    <asp:TextBox ID="TextBox10" runat="server" class="form-control"></asp:TextBox></div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Client Address Line2:</label>
                    <asp:TextBox ID="TextBox11" runat="server" class="form-control"></asp:TextBox></div>
                  <div class="form-group">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Client City:</label>
                    <asp:TextBox ID="TextBox14" runat="server" class="form-control"></asp:TextBox></div>
              <div class="form-group">
                    <label for="exampleInputEmail1">Client Pin Code:</label>
                    <asp:TextBox ID="TextBox18" runat="server" class="form-control"></asp:TextBox></div>
                 <div class="form-group">
                    <label for="exampleInputEmail1">Client Contact No:</label>
                    <asp:TextBox ID="TextBox16" runat="server" class="form-control"></asp:TextBox></div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Payment Mode:</label>
                   <select name="ctl00$MainContent$DropDownList2" 

id="MainContent_DropDownList2" class="form-control">
		<option value="Cash">Cash</option>
		<option value="Cheque">Cheque</option>
		<option value="ToBePay">ToBePay</option>
		<option value=""></option>

	</select>
</div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Client GSTIN No:</label>
                    <asp:TextBox ID="TextBox19" runat="server" class="form-control"></asp:TextBox></div>
                   
                    <label for="exampleInputEmail1">Challan No:</label>
                    <asp:TextBox ID="TextBox12" runat="server" class="form-control"></asp:TextBox></div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Challan Date:</label>
                    <asp:TextBox ID="TextBox13" runat="server" class="form-control" TextMode="Date"></asp:TextBox></div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">LR No. Date:</label>
                    <asp:TextBox ID="TextBox15" runat="server" class="form-control"></asp:TextBox></div>
                  
                  
                  <div class="card-header">
                     <h2 class="card-title">Product Details</h2>
                  </div>
               
                  <div class="form-group">
                    <label for="exampleInputEmail1">Search Product:</label>
                    <asp:TextBox ID="TextBox17" runat="server" class="form-control"></asp:TextBox></div>
                  <div class="form-group">
                      <asp:Button ID="Button3" runat="server" Text="Find" class="btn btn-primary" OnClick="Button3_Click"/>
            </div>
                  
                  <div class="form-group">
                    <asp:Label ID="Label2" runat="server" ForeColor="#CC0000"></asp:Label>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Product HSN CODE:</label>
                    <asp:TextBox ID="TextBox20" runat="server" class="form-control"></asp:TextBox></div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Product Name:</label>
                    <asp:TextBox ID="TextBox21" runat="server" class="form-control"></asp:TextBox></div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Product Description:</label>
                    <asp:TextBox ID="TextBox22" runat="server" class="form-control"></asp:TextBox></div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Unit:</label>
                    <asp:TextBox ID="TextBox23" runat="server" class="form-control"></asp:TextBox></div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Tax:</label>
                    <asp:TextBox ID="TextBox24" runat="server" class="form-control"></asp:TextBox></div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Product Qty:</label>
                    <asp:TextBox ID="TextBox25" runat="server" class="form-control"></asp:TextBox></div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Product Rate:</label>
                    <asp:TextBox ID="TextBox26" runat="server" class="form-control"></asp:TextBox></div>
                  <div class="form-group">
                    <asp:Button ID="Button1" runat="server" Text="Add to Invoice" class="btn btn-primary" OnClick="Button1_Click"/>
                </div>
                  <div class="form-group">
                    
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                      </asp:ScriptManager>
                    
                      <asp:UpdatePanel ID="grid" runat="server" UpdateMode="Conditional">  
                      <ContentTemplate>
                      <asp:GridView EnableViewState="False" ID="GridView1" width="100%" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                          <AlternatingRowStyle BackColor="White" />
                          <Columns>
                              <asp:TemplateField ShowHeader="False">
                                  <ItemTemplate>
                                      <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
                                  </ItemTemplate>
                              </asp:TemplateField>
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
                        
                        </ContentTemplate>
                      </asp:UpdatePanel>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db %>" DeleteCommand="DELETE FROM [temp] WHERE [Id] = @original_Id AND (([pid] = @original_pid) OR ([pid] IS NULL AND @original_pid IS NULL)) AND (([hsn] = @original_hsn) OR ([hsn] IS NULL AND @original_hsn IS NULL)) AND (([pname] = @original_pname) OR ([pname] IS NULL AND @original_pname IS NULL)) AND (([pdesc] = @original_pdesc) OR ([pdesc] IS NULL AND @original_pdesc IS NULL)) AND (([qty] = @original_qty) OR ([qty] IS NULL AND @original_qty IS NULL)) AND (([unit] = @original_unit) OR ([unit] IS NULL AND @original_unit IS NULL)) AND (([rate] = @original_rate) OR ([rate] IS NULL AND @original_rate IS NULL)) AND (([basica] = @original_basica) OR ([basica] IS NULL AND @original_basica IS NULL)) AND (([tax] = @original_tax) OR ([tax] IS NULL AND @original_tax IS NULL)) AND (([taxa] = @original_taxa) OR ([taxa] IS NULL AND @original_taxa IS NULL)) AND (([ta] = @original_ta) OR ([ta] IS NULL AND @original_ta IS NULL))" InsertCommand="INSERT INTO [temp] ([pid], [hsn], [pname], [pdesc], [qty], [unit], [rate], [basica], [tax], [taxa], [ta]) VALUES (@pid, @hsn, @pname, @pdesc, @qty, @unit, @rate, @basica, @tax, @taxa, @ta)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [temp]" UpdateCommand="UPDATE [temp] SET [pid] = @pid, [hsn] = @hsn, [pname] = @pname, [pdesc] = @pdesc, [qty] = @qty, [unit] = @unit, [rate] = @rate, [basica] = @basica, [tax] = @tax, [taxa] = @taxa, [ta] = @ta WHERE [Id] = @original_Id AND (([pid] = @original_pid) OR ([pid] IS NULL AND @original_pid IS NULL)) AND (([hsn] = @original_hsn) OR ([hsn] IS NULL AND @original_hsn IS NULL)) AND (([pname] = @original_pname) OR ([pname] IS NULL AND @original_pname IS NULL)) AND (([pdesc] = @original_pdesc) OR ([pdesc] IS NULL AND @original_pdesc IS NULL)) AND (([qty] = @original_qty) OR ([qty] IS NULL AND @original_qty IS NULL)) AND (([unit] = @original_unit) OR ([unit] IS NULL AND @original_unit IS NULL)) AND (([rate] = @original_rate) OR ([rate] IS NULL AND @original_rate IS NULL)) AND (([basica] = @original_basica) OR ([basica] IS NULL AND @original_basica IS NULL)) AND (([tax] = @original_tax) OR ([tax] IS NULL AND @original_tax IS NULL)) AND (([taxa] = @original_taxa) OR ([taxa] IS NULL AND @original_taxa IS NULL)) AND (([ta] = @original_ta) OR ([ta] IS NULL AND @original_ta IS NULL))">
                          <DeleteParameters>
                              <asp:Parameter Name="original_Id" Type="Int32" />
                              <asp:Parameter Name="original_pid" Type="String" />
                              <asp:Parameter Name="original_hsn" Type="String" />
                              <asp:Parameter Name="original_pname" Type="String" />
                              <asp:Parameter Name="original_pdesc" Type="String" />
                              <asp:Parameter Name="original_qty" Type="String" />
                              <asp:Parameter Name="original_unit" Type="String" />
                              <asp:Parameter Name="original_rate" Type="String" />
                              <asp:Parameter Name="original_basica" Type="Int32" />
                              <asp:Parameter Name="original_tax" Type="Int32" />
                              <asp:Parameter Name="original_taxa" Type="Int32" />
                              <asp:Parameter Name="original_ta" Type="Int32" />
                          </DeleteParameters>
                          <InsertParameters>
                              <asp:Parameter Name="pid" Type="String" />
                              <asp:Parameter Name="hsn" Type="String" />
                              <asp:Parameter Name="pname" Type="String" />
                              <asp:Parameter Name="pdesc" Type="String" />
                              <asp:Parameter Name="qty" Type="String" />
                              <asp:Parameter Name="unit" Type="String" />
                              <asp:Parameter Name="rate" Type="String" />
                              <asp:Parameter Name="basica" Type="Int32" />
                              <asp:Parameter Name="tax" Type="Int32" />
                              <asp:Parameter Name="taxa" Type="Int32" />
                              <asp:Parameter Name="ta" Type="Int32" />
                          </InsertParameters>
                          <UpdateParameters>
                              <asp:Parameter Name="pid" Type="String" />
                              <asp:Parameter Name="hsn" Type="String" />
                              <asp:Parameter Name="pname" Type="String" />
                              <asp:Parameter Name="pdesc" Type="String" />
                              <asp:Parameter Name="qty" Type="String" />
                              <asp:Parameter Name="unit" Type="String" />
                              <asp:Parameter Name="rate" Type="String" />
                              <asp:Parameter Name="basica" Type="Int32" />
                              <asp:Parameter Name="tax" Type="Int32" />
                              <asp:Parameter Name="taxa" Type="Int32" />
                              <asp:Parameter Name="ta" Type="Int32" />
                              <asp:Parameter Name="original_Id" Type="Int32" />
                              <asp:Parameter Name="original_pid" Type="String" />
                              <asp:Parameter Name="original_hsn" Type="String" />
                              <asp:Parameter Name="original_pname" Type="String" />
                              <asp:Parameter Name="original_pdesc" Type="String" />
                              <asp:Parameter Name="original_qty" Type="String" />
                              <asp:Parameter Name="original_unit" Type="String" />
                              <asp:Parameter Name="original_rate" Type="String" />
                              <asp:Parameter Name="original_basica" Type="Int32" />
                              <asp:Parameter Name="original_tax" Type="Int32" />
                              <asp:Parameter Name="original_taxa" Type="Int32" />
                              <asp:Parameter Name="original_ta" Type="Int32" />
                          </UpdateParameters>
                      </asp:SqlDataSource>
                  </div>
                    <div class="form-group">
                    <asp:Button ID="Button4" runat="server" Text="Submit and Proceed" class="btn btn-primary" OnClick="Button4_Click"/>
                      <div class="FORM-GROUP">
                        <asp:Label ID="Label3" runat="server" ForeColor="#CC0000"></asp:Label>
                  
                      </div>
                </div>
                <!-- /.card-body -->
            </div>
            </div>
          </div>
        <!-- /.row -->
      </div>
        </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
</asp:Content>

