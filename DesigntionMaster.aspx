<%@ Page Title="" Language="C#" MasterPageFile="~/inner.master" AutoEventWireup="true"
    CodeFile="DesigntionMaster.aspx.cs" Inherits="DesigntionMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="form-holder">
    <asp:Button ID="btn_view" runat="server" Text="Show Data" 
    onclick="view_Click" CausesValidation="False" />
    <center>
        <h4>
            Designation Master</h4>
            <asp:Panel ID="pnl_form" runat="server">
               <table>
             <tr>
                <td>
                    <b>Designation Name:</b>
                </td>
                <td>
                    <asp:TextBox ID="TxtDesigName" runat="server" placeholder="Your Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter your Department Name"
                        ControlToValidate="TxtDesigName"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>
                    <b>Department Id:</b>
                </td>
                <td>
                    <asp:DropDownList ID="ddl_dept_id" runat="server" DataSourceID="SqlDataSource1" 
                        DataTextField="Department_Name" DataValueField="Department_ID">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        
                        
                        SelectCommand="SELECT [Department_ID], [Department_Name] FROM [Departments]">
                    </asp:SqlDataSource>
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
            CellPadding="4" DataKeyNames="Designation_ID" DataSourceID="SqlDataSource2" 
            ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Designation_ID" HeaderText="Designation_ID" 
                    InsertVisible="False" ReadOnly="True" SortExpression="Designation_ID" />
                <asp:BoundField DataField="Designation_Name" HeaderText="Designation_Name" 
                    SortExpression="Designation_Name" />
                <asp:BoundField DataField="Department_ID" HeaderText="Department_ID" 
                    SortExpression="Department_ID" />
                <asp:BoundField DataField="Department_Name" HeaderText="Department_Name" 
                    SortExpression="Department_Name" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
                 SelectCommand="SELECT Designations.Designation_ID, Designations.Designation_Name, Designations.Department_ID, Departments.Department_Name FROM Designations INNER JOIN Departments ON Designations.Department_ID = Departments.Department_ID">
        </asp:SqlDataSource>
    </asp:Panel>
    </center>
    </div>
</asp:Content>
