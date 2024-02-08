<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="personal.aspx.cs" Inherits="AdmissionPortal.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Logout" />
        <br />
        <br />
        
        Personal Details -
        <br />
        <br />
        First Name:
        <asp:TextBox ID="tb_fname" runat="server" required></asp:TextBox>
        <br />
        <br />
        Fathers&#39; Name:
        <asp:TextBox ID="tb_mname" runat="server" required></asp:TextBox>
        <br />
        <br />
        Surname:
        <asp:TextBox ID="tb_lname" runat="server" required></asp:TextBox>
        <br />
        <br />
        Mothers&#39; Name:
        <asp:TextBox ID="tb_mother" runat="server" required></asp:TextBox>
        <br />
        <br />
        Gender: <asp:RadioButton ID="rb_male" runat="server" GroupName="rb_gender" Text="Male" />
&nbsp;<asp:RadioButton ID="rb_female" runat="server" GroupName="rb_gender" Text="Female" />
&nbsp;<asp:RadioButton ID="rb_other" runat="server" GroupName="rb_gender" Text="Other" />
        <br />
        <br />
        Date of Birth:
        <asp:TextBox ID="tb_dob" runat="server" required></asp:TextBox>
        <br />
        <br />
        Contact Details - <br />
        <br />
        Personal Contact Number:
        <asp:TextBox ID="tb_no1" runat="server" required></asp:TextBox>
        <asp:RegularExpressionValidator ID="regexValidator" runat="server"
    ErrorMessage="Please enter a 10-digit number."
    ControlToValidate="tb_no1"
    ValidationExpression="^\d{10}$"
    ValidationGroup="ValidationGroup1" />
        <br />
        <br />
        Alternate Number:
        <asp:TextBox ID="tb_no2" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
    ErrorMessage="Please enter a 10-digit number."
    ControlToValidate="tb_no2"
    ValidationExpression="^\d{10}$"
    ValidationGroup="ValidationGroup1" />
        <br />
        <br />
        Personal Email Address:
        <asp:TextBox ID="tb_email" runat="server" required></asp:TextBox>
        <asp:RegularExpressionValidator ID="regexValidatorEmail" runat="server"
    ErrorMessage="Please enter a valid email address."
    ControlToValidate="tb_email"
    ValidationExpression="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$"
    ValidationGroup="ValidationGroup1" />
        <br />
        <br />
        Parent/Guardian Contact Number:
        <asp:TextBox ID="tb_pgNo" runat="server" required></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
    ErrorMessage="Please enter a 10-digit number."
    ControlToValidate="tb_pgNo"
    ValidationExpression="^\d{10}$"
    ValidationGroup="ValidationGroup1" />
        <br />
        <br />
        Parent/Guardian Email:
        <asp:TextBox ID="tb_pgEmail" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server"
    ErrorMessage="Please enter a valid email address."
    ControlToValidate="tb_pgEmail"
    ValidationExpression="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$"
    ValidationGroup="ValidationGroup1" />
        <br />
        <br />
        Address - <br />
        <br />
        Address Line 1:
        <asp:TextBox ID="tb_a1" runat="server" required></asp:TextBox>
        <br />
        <br />
        Address Line 2:
        <asp:TextBox ID="tb_a2" runat="server"></asp:TextBox>
        <br />
        <br />
        District:
        <asp:TextBox ID="tb_district" runat="server" required></asp:TextBox>
        <br />
        <br />
        State:
        <asp:TextBox ID="tb_state" runat="server" required></asp:TextBox>
        <br />
        <br />
        Pincode:
        <asp:TextBox ID="tb_pin" runat="server" required></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
    ErrorMessage="Please enter 6 digit pincode."
    ControlToValidate="tb_no"
    ValidationExpression="^\d{6}$"
    ValidationGroup="ValidationGroup1" />
        <br />
        <br />
        <asp:Button ID="btn_save" runat="server" OnClick="btn_save_Click" Text="Save &amp; Proceed" ValidationGroup="ValidationGroup1"/>
        
    </form>
</body>
</html>
