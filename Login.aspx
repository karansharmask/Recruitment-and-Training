<%@ Page Title="" Language="C#" MasterPageFile="~/RTMaster.master" AutoEventWireup="true"
    CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <br />
        <h1>
            Login</h1>
        <table>
            <tr>
                <td rowspan="6">
                    <asp:Image ID="Image1" runat="server"  ImageUrl="~/images/lock.png" /> 
                </td>
            </tr>
            <tr>
                <td align="right">
                    <b>Username:</b>
                </td>
                <td align="left">
                    <asp:TextBox ID="Username" runat="server" ToolTip="Enter UserName" placeholder="UserName"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <b>Password:</b>
                </td>
                <td align="left">
                    <asp:TextBox ID="Password" runat="server" ToolTip="Enter your Password" placeholder="Password"
                        TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSignIn" runat="server" Text="Sign In" BackColor="Silver" BorderStyle="Outset"
                        Width="97px" OnClick="btnSignIn_Click" />
                </td>
                <td>
                    <asp:Button ID="BtnRegister" runat="server" Text="Register" OnClick="BtnRegister_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="ForgetPasswordChild.aspx"><u>Forget Password?</u></a>
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
