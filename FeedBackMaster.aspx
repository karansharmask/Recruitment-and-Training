<%@ Page Title="" Language="C#" MasterPageFile="~/inner.master" AutoEventWireup="true"
    CodeFile="FeedBackMaster.aspx.cs" Inherits="FeedBackMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <h4>
            FeedBack Form</h4>
        <table>
            <tr>
                <td>
                    FeedBack Text:
                </td>
                <td>
                    <asp:TextBox ID="txt_feedback" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:Button ID="Btnsubmit" runat="server" Text="Submit" />
                    <asp:Button ID="BtnReset" runat="server" Text="Reset" />
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
