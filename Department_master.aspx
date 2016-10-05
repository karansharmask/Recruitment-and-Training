<%@ Page Title="" Language="C#" MasterPageFile="~/inner.master" AutoEventWireup="true"
    CodeFile="Department_master.aspx.cs" Inherits="Department_master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<div class="form-holder">
<asp:Button ID="btn_view" runat="server" Text="Show Data" 
    onclick="view_Click" CausesValidation="False" />
    <center>

        <h2>
            Department Master</h2>
            <asp:Panel ID="pnl_form" runat="server">
            <table>
      
            <tr>
                <td>
                    <b>Department Name:</b>
                </td>
                <td>
                    <asp:TextBox ID="TxtDeptName" runat="server" placeholder="UserName"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter your Department Name"
                        ControlToValidate="TxtDeptName"></asp:RequiredFieldValidator>
            </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:Button ID="BtnSubmit" runat="server" Text="Submit" 
                        onclick="BtnSubmit_Click" />
                    <asp:Button ID="BtnReset" runat="server" Text="Reset" 
                        onclick="BtnReset_Click" />
                </td>

            </tr>
            <tr><td>
                <asp:Label ID="lbl_msg" runat="server" Text=""></asp:Label></td></tr>
        </table>
   </asp:Panel> 
        
         <asp:Panel ID="pnl_data_view" runat="server" Visible="False">
        <asp:GridView ID="grd_data" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataKeyNames="Department_ID" DataSourceID="SqlDataSource1" 
            ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Department_Name" HeaderText="Department_Name" 
                    SortExpression="Department_Name" />
                <asp:BoundField DataField="Department_ID" HeaderText="Department_ID" 
                    SortExpression="Department_ID" InsertVisible="False" ReadOnly="True" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Department_Name], [Department_ID] FROM [Departments]">
        </asp:SqlDataSource>
    </asp:Panel>
    </center>
    </div>
</asp:Content>
