<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditEmpDetails.aspx.cs" Inherits="EmpDetailsWithDatabase.EditEmpDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
            border-style: solid;
            border-width: 2px;
        }
        .auto-style2 {
            text-align: left;
        }
    </style>
</head>
<body>
<form id="form1" runat="server">
        <div align="center">
            <table cellpadding="10" class="auto-style1">
                <tr>
                    <th colspan="2">Employee Details</th>
                </tr>
                <tr>
                    <td>&nbsp;Name</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Age</td>
                    <td>
                        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Salary</td>
                    <td>
                        <asp:TextBox ID="txtSalary" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Phone Number</td>
                    <td>
                        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                    </td>
                </tr>  
                <tr>
                    <td>Image Upload</td>
                    <td class="auto-style2">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <th colspan="2">
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />&nbsp;&nbsp;
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" ForeColor="Red" OnClick="btnDelete_Click" />
                        <br />
                        <br>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="WebForm1.aspx">Back to the Home Page</asp:HyperLink>
                        <br><br>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="DisplayEmpDetails.aspx">To the Display Page</asp:HyperLink>
                        <br>
                        <asp:Label ID="lblMsg" runat="server" Text=" "></asp:Label>
                        <br>
                        <asp:Image ID="Image1" runat="server" Height="127px" Width="179px" />
                    </th>
                </tr>
            </table>
        </div>
        <br>
        <div align="center">
        <asp:GridView ID="GridView1" runat="server">
            <Columns>
                <asp:ImageField DataImageUrlField="Image" HeaderText="Profile Pic">
                </asp:ImageField>
                <asp:HyperLinkField DataNavigateUrlFields="EmpID" DataNavigateUrlFormatString="EditEmpDetails.aspx?id={0}" HeaderText="Action" />
            </Columns>
        </asp:GridView>
        </div>
    </form>
</body>
</html>
