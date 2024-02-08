<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="AdmissionPortal.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Register<br />
            <br />
            Email:
            <asp:TextBox ID="tb_email" runat="server" required></asp:TextBox>
            <br />
            <br />
            Password: <asp:TextBox ID="tb_psrd" runat="server" type="password" required></asp:TextBox>
            <br />
            <br />
            Re-type Password:
            <asp:TextBox ID="tb_npsrd" runat="server" type="password" required></asp:TextBox>
            <br />
            <br />
            Contact Number:
            <asp:TextBox ID="tb_no" runat="server" required></asp:TextBox>
            <asp:RegularExpressionValidator ID="regexValidator" runat="server"
    ErrorMessage="Please enter a 10-digit number."
    ControlToValidate="tb_no"
    ValidationExpression="^\d{10}$"
    ValidationGroup="ValidationGroup1" />
            <br />
            <br />
            <asp:Button ID="btn_register" runat="server" OnClick="btn_register_Click" Text="Register" ValidationGroup="ValidationGroup1"/>
        </div>
    </form>
</body>
</html>
