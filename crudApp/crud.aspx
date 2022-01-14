<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="crud.aspx.cs" Inherits="crudApp.crud" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>360 Fitness</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/crud.css">

    <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</head>
<body>


    <form id="form1" runat="server">


    <br />
    <br />
    <h2 style="text-align: center;">Members Details</h2>
    <hr style="height: 2px; width: 90%; background-color: darkseagreen;" />

    <!-- Modal for edit -->

    <div class="modal fade" id="form" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header border-bottom-0">
                    <h5 class="modal-title" id="exampleModalLabel">Update Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col form-group">
                                <label for="email1">Name</label>
                                <input type="email" class="form-control" id="email1" aria-describedby="emailHelp" placeholder="Enter Name">
                            </div>
                            <div class="col form-group">
                                <label for="email1">City</label>
                                <input type="email" class="form-control" id="email1" aria-describedby="emailHelp" placeholder="Enter Name">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col form-group">
                                <label for="email1">Email</label>
                                <input type="email" class="form-control" id="email1" aria-describedby="emailHelp" placeholder="Enter Name">
                            </div>
                            <div class="col form-group">
                                <label for="email1">Contact</label>
                                <input type="email" class="form-control" id="email1" aria-describedby="emailHelp" placeholder="Enter Name">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col form-group">
                                <label for="email1">Date of Birth</label>
                                <input type="date" class="form-control" id="email1" aria-describedby="emailHelp" placeholder="Enter Name">
                            </div>
                            <div class="col form-group">
                                <label for="email1">Package</label>
                                <input type="email" class="form-control" id="email1" aria-describedby="emailHelp" placeholder="Enter Name">
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer border-top-0 d-flex justify-content-center">
                        <input type="submit" class="btn btn-success" value="Update"></input>
                    </div>
            </div>
        </div>
    </div>

    <!-- Modal for edit -->

    <div class="container">
        <div class="row">
            <div class="col-12" style="text-align:center !important;">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="95%">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="Sr. No" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                        <asp:BoundField DataField="phone" HeaderText="Contact No." SortExpression="phone" />
                        <asp:BoundField DataField="dob" DataFormatString="{0:dd - MM - yyyy}" HeaderText="Date of Birth" SortExpression="dob">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="package" HeaderText="Package Name" SortExpression="package" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBconstring %>" DeleteCommand="DELETE FROM [memberdetails] WHERE [Id] = @Id" InsertCommand="INSERT INTO [memberdetails] ([name], [city], [email], [phone], [dob], [package]) VALUES (@name, @city, @email, @phone, @dob, @package)" SelectCommand="SELECT * FROM [memberdetails]" UpdateCommand="UPDATE [memberdetails] SET [name] = @name, [city] = @city, [email] = @email, [phone] = @phone, [dob] = @dob, [package] = @package WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="city" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="phone" Type="String" />
                        <asp:Parameter DbType="Date" Name="dob" />
                        <asp:Parameter Name="package" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="city" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="phone" Type="String" />
                        <asp:Parameter DbType="Date" Name="dob" />
                        <asp:Parameter Name="package" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>

        
    </form>

</body>
</html>
