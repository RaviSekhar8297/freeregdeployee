<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FreeRegister.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table align="center" class="auto-style1">
                <tr>
                    <td colspan="3" style="text-align: center">Register Form</td>
                </tr>
                <tr>
                    <td>Id</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="txtid" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="txtname" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Phone</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="txtphone" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="txtemail" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td>:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>-- Select Address --</asp:ListItem>
                            <asp:ListItem>AP</asp:ListItem>
                             <asp:ListItem>TS</asp:ListItem>
                             <asp:ListItem>TN</asp:ListItem>
                             <asp:ListItem>BH</asp:ListItem>
                             <asp:ListItem>DL</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>DOB</td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="txtdob" runat="server" TextMode="Date" AutoCompleteType="Disabled"></asp:TextBox>
                    </td>
                </tr>
               
                <tr>
                    <td colspan="3" style="text-align: center">
                        <asp:Button ID="Button1" runat="server" Text="Submit" Font-Bold="True" ForeColor="#009900" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
