<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayEmpDetails.aspx.cs" Inherits="EmpDetailsWithDatabase.DisplayEmpDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <br><br>
    <form id="form1" runat="server">
        <div align="center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="EmpID" HeaderText="Employee ID" SortExpression="EmpID" />
                <asp:BoundField DataField="Name" HeaderText="Name of Employee" SortExpression="Name" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:BoundField DataField="Phone" HeaderText="Phone Number" SortExpression="Phone" />
                <asp:BoundField DataField="Salary" HeaderText="Weekly Salary" SortExpression="Salary" />
                <asp:BoundField DataField="Email" HeaderText="Email ID" SortExpression="Email" />
                <asp:ImageField DataImageUrlField="Image" HeaderText="Profile Pic">
                    <ControlStyle Height="100px" Width="150px" />
                </asp:ImageField>
                <asp:HyperLinkField DataNavigateUrlFields="EmpID" DataNavigateUrlFormatString="EditEmpDetails.aspx?id={0}" HeaderText="Action" Text="Edit" />
            </Columns>
        </asp:GridView>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="WebForm1.aspx">Back to the Home Page</asp:HyperLink>

        </div>

    </form>
</body>
</html>
