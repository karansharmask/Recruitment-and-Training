<%@ Page Title="" Language="C#" MasterPageFile="~/RTMaster.master" AutoEventWireup="true"
    CodeFile="SignUp.aspx.cs" Inherits="Validation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <br />
        <h2>
            Create Your Account</h2>
        <table>
            <tr>
                <td>
                    <b>Name:</b>
                </td>
                <td colspan="2" align="left">
                    <asp:TextBox ID="fname" runat="server" placeholder="FName" Width="141px"></asp:TextBox>
                    <asp:TextBox ID="lname" runat="server" placeholder="LName" Width="141px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <b>Username:</b>
                </td>
                <td align="left">
                    <asp:TextBox ID="uname" runat="server" placeholder="UserName" Width="290px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="uname"
                        ErrorMessage="Username Must"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <b>E-Mail:</b>
                </td>
                <td>
                    <asp:TextBox ID="email" runat="server" placeholder="@gmail.com" Width="290px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email"
                        ErrorMessage="Write Proper E-mail" ValidationExpression="^[a-z0-9_\+-]+(\.[a-z0-9_\+-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*\.([a-z]{2,4})"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <b>DOB:</b>
                </td>
                <td>
                    <asp:TextBox ID="dob" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td></td>
                <td colspan="2">
                    <asp:Button ID="register" runat="server" Text="Submit" Width="100px" OnClick="register_Click" />
                    <asp:Button ID="reset" runat="server" Text="Reset" OnClick="reset_Click" Width="100px" />
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
