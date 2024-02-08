<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edu.aspx.cs" Inherits="AdmissionPortal.edu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Logout" />
        </p>
        <div>
            Educational Details<br />
            <br />
            Select Level&nbsp;
            <asp:DropDownList ID="dd_level" runat="server" OnSelectedIndexChanged="dd_level_SelectedIndexChanged" AutoPostBack="True">
                <asp:ListItem>Junior College</asp:ListItem>
                <asp:ListItem>UG</asp:ListItem>
                <asp:ListItem>PG</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            Select Course
            <asp:DropDownList ID="dd_course" runat="server" OnSelectedIndexChanged="dd_course_SelectedIndexChanged">
            </asp:DropDownList>
            <br />
            <br />
            <div id="x" runat="server">
                X details<br />
                <br />
                School Name
            <asp:TextBox ID="tb_xSchool" runat="server" required> </asp:TextBox>
                <br />
                <br />
                Board
            <asp:TextBox ID="tb_xBoard" runat="server" required> </asp:TextBox>
                <br />
                <br />
                CGPA/Percentage
            <asp:TextBox ID="tb_xMark" runat="server" required> </asp:TextBox>
                <asp:RegularExpressionValidator ID="regexValidatorPercentage" runat="server"
    ErrorMessage="Please enter a valid percentage or CGPA."
    ControlToValidate="tb_xMark"
    ValidationExpression="^(?:\d{1,2}(?:\.\d{1,2})?|100(?:\.0{1,2})?)$"
    ValidationGroup="ValidationGroup1" />
                <br />
                <br />
                Year of passing
            <asp:TextBox ID="tb_xYear" runat="server" required> </asp:TextBox>
                <asp:RegularExpressionValidator ID="regexValidator" runat="server"
    ErrorMessage="Please enter a valid year."
    ControlToValidate="tb_xYear"
    ValidationExpression="^\d{4}$"
    ValidationGroup="ValidationGroup1" />
                <br />
                <br />
            </div>
            <div id="xii" runat="server">
                XII details<br />
                <br />
                College Name
            <asp:TextBox ID="tb_12name" runat="server" required> </asp:TextBox>
                <br />
                <br />
                University
            <asp:TextBox ID="tb_12uni" runat="server" required> </asp:TextBox>
                <br />
                <br />
                CGPA/Percentage
            <asp:TextBox ID="tb_12mark" runat="server" required> </asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
    ErrorMessage="Please enter a valid percentage or CGPA."
    ControlToValidate="tb_12Mark"
    ValidationExpression="^(?:\d{1,2}(?:\.\d{1,2})?|100(?:\.0{1,2})?)$"
    ValidationGroup="ValidationGroup1" />
                <br />
                <br />
                Year of passing
            <asp:TextBox ID="tb_12year" runat="server" required> </asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
    ErrorMessage="Please enter a valid year."
    ControlToValidate="tb_12year"
    ValidationExpression="^\d{4}$"
    ValidationGroup="ValidationGroup1" />
                <br />
                <br />
            </div>
            <div id="grad" runat="server">
                Graduation details<br />
                <br />
                College Name
            <asp:TextBox ID="tb_gName" runat="server" required> </asp:TextBox>
                <br />
                <br />
                University
            <asp:TextBox ID="tb_gUni" runat="server" required> </asp:TextBox>
                <br />
                <br />
                CGPA/Percentage
            <asp:TextBox ID="tb_gMark" runat="server" required> </asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
    ErrorMessage="Please enter a valid percentage or CGPA."
    ControlToValidate="tb_gMark"
    ValidationExpression="^(?:\d{1,2}(?:\.\d{1,2})?|100(?:\.0{1,2})?)$"
    ValidationGroup="ValidationGroup1" />
                <br />
                <br />
                Year of passing
            <asp:TextBox ID="tb_gYear" runat="server" required> </asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server"
    ErrorMessage="Please enter a valid year."
    ControlToValidate="tb_gYear"
    ValidationExpression="^\d{4}$"
    ValidationGroup="ValidationGroup1" />
                <br />
                <br />
            </div>
            <asp:Button ID="btn_save" runat="server" Text="Save &amp; Proceed" OnClick="btn_save_Click" ValidationGroup="ValidationGroup1"/>
        </div>
    </form>
</body>
</html>
