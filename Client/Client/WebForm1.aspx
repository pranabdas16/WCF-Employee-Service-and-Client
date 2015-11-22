<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Client.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="40%" align="center">
        <tr>
            <td width="20%">Id</td>
            <td><asp:TextBox ID="txtId" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td >Name</td>
            <td><asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Gender</td>
            <td><asp:TextBox ID="txtGender" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>City</td>
            <td><asp:TextBox ID="txtCity" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>DepartmentId</td>
            <td><asp:TextBox ID="txtDeptId" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Date of Birth</td>
            <td><asp:TextBox ID="txtdob" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Employee Type</td>
            <td>
                <asp:DropDownList ID="ddlEmployeeType" runat="server" OnSelectedIndexChanged="ddlEmployeeType_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem Text="Select Employee Type" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="Full Time Emplyee" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Part Time Emplyee" Value="2"></asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr id="trAnnualSalary" runat="server" visible="false">
            <td>Annual Salary</td>
            <td><asp:TextBox ID="txtAnnualSalary" runat="server"></asp:TextBox></td>
        </tr>
        <tr id="trHourlyPay" runat="server" visible="false">
            <td>Hourly Pay</td>
            <td><asp:TextBox ID="txtHourlyPay" runat="server"></asp:TextBox></td>
        </tr>
        <tr id="trHoursWorked" runat="server" visible="false">
            <td>Hours Worked</td>
            <td><asp:TextBox ID="txtHoursWorked" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><asp:Button ID="btnGetEmp" runat="server" Text="Get Employee" OnClick="btnGetEmp_Click" /></td>
            <td> <asp:Button ID="btnSavEmp" runat="server" Text="Save Employee" OnClick="btnSavEmp_Click" /></td>
        </tr>
        <tr>
            <td colspan="2" align="left" >
                <asp:Label ID="Label1" runat="server" Text="Label" text-color="green"></asp:Label></td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
