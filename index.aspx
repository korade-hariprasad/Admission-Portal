<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="AdmissionPortal.index1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" align="center">
        <div>
            Login<br />
            <br />
            Email:
            <asp:TextBox ID="tb_email" runat="server" required></asp:TextBox>
            <br />
            <br />
            Password: <asp:TextBox ID="tb_psrd" runat="server" type="password" required></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/register.aspx">New User ? Register here</asp:HyperLink>
        </div>
    </form>
</body>
</html>
