<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="preview.aspx.cs" Inherits="AdmissionPortal.preview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="tb_gender">
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Logout" />
            <br />
            <br />
            Preview Details<br />
            <br />
            First Name:
            <asp:TextBox ID="tb0" runat="server"></asp:TextBox>
            <br />
            <br />
            Fathers&#39; Name:
            <asp:TextBox ID="tb1" runat="server"></asp:TextBox>
            <br />
            <br />
            Surname:
            <asp:TextBox ID="tb2" runat="server"></asp:TextBox>
            <br />
            <br />
            Mothers&#39; Name:
            <asp:TextBox ID="tb3" runat="server"></asp:TextBox>
            <br />
            <br />
            Gender:
            <asp:TextBox ID="tb4" runat="server"></asp:TextBox>
            <br />
            <br />
            Date of Birth:
            <asp:TextBox ID="tb5" runat="server"></asp:TextBox>
            <br />
            <br />
            Contact Details -
            <br />
            <br />
            Personal Contact Number:
            <asp:TextBox ID="tb6" runat="server"></asp:TextBox>
            <br />
            <br />
            Alternate Number:
            <asp:TextBox ID="tb7" runat="server"></asp:TextBox>
            <br />
            <br />
            Personal Email Address:
            <asp:TextBox ID="tb8" runat="server"></asp:TextBox>
            <br />
            <br />
            Parent/Guardian Contact Number:
            <asp:TextBox ID="tb9" runat="server"></asp:TextBox>
            <br />
            <br />
            Parent/Guardian Email:
            <asp:TextBox ID="tb10" runat="server"></asp:TextBox>
            <br />
            <br />
            Address -
            <br />
            <br />
            Address Line 1:
            <asp:TextBox ID="tb11" runat="server"></asp:TextBox>
            <br />
            <br />
            Address Line 2:
            <asp:TextBox ID="tb12" runat="server"></asp:TextBox>
            <br />
            <br />
            District:
            <asp:TextBox ID="tb13" runat="server"></asp:TextBox>
            <br />
            <br />
            State:
            <asp:TextBox ID="tb14" runat="server"></asp:TextBox>
            <br />
            <br />
            Pincode:
            <asp:TextBox ID="tb15" runat="server"></asp:TextBox>
            <br />
            <br />
            Educational Details<br />
            <br />
            Select Level&nbsp;
            <asp:TextBox ID="tb16" runat="server"></asp:TextBox>
            <br />
            <br />
            Select Course
            <asp:TextBox ID="tb17" runat="server"></asp:TextBox>
            <br />
            <br />
            <div class="jc">
                X details<br />
                <br />
                School Name
            <asp:TextBox ID="tb18" runat="server"></asp:TextBox>
                <br />
                <br />
                Board
            <asp:TextBox ID="tb19" runat="server"></asp:TextBox>
                <br />
                <br />
                CGPA/Percentage
            <asp:TextBox ID="tb20" runat="server"></asp:TextBox>
                <br />
                <br />
                Year of passing
            <asp:TextBox ID="tb21" runat="server"></asp:TextBox>
                <br />
                <br />
            </div>
            <div class="ug">
                XII details<br />
                <br />
                College Name
            <asp:TextBox ID="tb22" runat="server"></asp:TextBox>
                <br />
                <br />
                University
            <asp:TextBox ID="tb23" runat="server"></asp:TextBox>
                <br />
                <br />
                CGPA/Percentage
            <asp:TextBox ID="tb24" runat="server"></asp:TextBox>
                <br />
                <br />
                Year of passing
            <asp:TextBox ID="tb25" runat="server"></asp:TextBox>
                <br />
                <br />
            </div>
            <div class="pg">
                Graduation details<br />
                <br />
                College Name
            <asp:TextBox ID="tb26" runat="server"></asp:TextBox>
                <br />
                <br />
                University
            <asp:TextBox ID="tb27" runat="server"></asp:TextBox>
                <br />
                <br />
                CGPA/Percentage
            <asp:TextBox ID="tb28" runat="server"></asp:TextBox>
                <br />
                <br />
                Year of passing
            <asp:TextBox ID="tb29" runat="server"></asp:TextBox>
            </div>
        </div>
        <br />
        <asp:Button ID="btn2" runat="server" OnClick="btn2_Click" Text="Edit Data" />
&nbsp;<asp:Button ID="Button1" runat="server" Text="Print" OnClientClick="printForm()" />
    </form>
    <script>
function printForm() {
    window.print();
}
    </script>
</body>
</html>
