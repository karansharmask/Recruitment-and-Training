<%@ Page Title="" Language="C#" MasterPageFile="~/RTMaster.master" AutoEventWireup="true" CodeFile="ForgetPasswordChild.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
<h2>
            Forget Password</h2>
        <br />
        <br />
        <table>
            <tr>
                <td>
                    User Name:
                </td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                        ID="RequiredFieldValidator1" runat="server" ErrorMessage="User Name Must required."
                        Text="*" ControlToValidate="txtUserName"></asp:RequiredFieldValidator><br />
                </td>
            </tr>
            <tr>
                <td>
                    Email ID:
                </td>
                <td>
                    <asp:TextBox ID="txtEmailID" runat="server"></asp:TextBox><asp:RequiredFieldValidator
                        ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email ID Must required."
                        Text="*" ControlToValidate="txtEmailID"></asp:RequiredFieldValidator><br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
                </td>
                <td>
                    <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" CausesValidation="False" />
                </td>
                
            </tr>
            <tr>
                <td colspan="2">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Text="*" />
                </td>
            </tr>
        </table>
</center>
</asp:Content>

