<%@ Page Title="" Language="C#" MasterPageFile="~/inner.master" AutoEventWireup="true"
    CodeFile="EmployeesMaster.aspx.cs" Inherits="EmployeesMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<div class="form-holder">
   <asp:Button ID="btn_view" runat="server" Text="Show Data" 
    onclick="view_Click" CausesValidation="False" />
   <center>
   
   <h4>Employees Master</h4>
   <asp:Panel ID="pnl_form" runat="server">
    <table>
           
            <tr>
                <td>
                    Employee Name:
                </td>
                <td>
                   <asp:TextBox ID="txt_emp_name" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td>
                Dept Name:
            </td>
            <td>
                <asp:DropDownList ID="ddl_dept" runat="server" DataSourceID="SqlDataSource1" 
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
                Type:
            </td>
            <td>
                <asp:DropDownList ID="ddl_type" runat="server" DataSourceID="SqlDataSource2" 
                    DataTextField="Type_name" DataValueField="Type_ID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Type_ID], [Type_name] FROM [Employee_Types]">
                </asp:SqlDataSource>
            </td>
        </tr>
            <tr>
                <td>
                    Employee Dob
                </td>
                <td>
                    <asp:Calendar ID="dob" runat="server" SelectionMode="DayWeekMonth"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td>
                    Employee contact No:
                </td>
                <td>
                    <asp:TextBox ID="txt_cont_no" runat="server"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td>
                    Employee E-Mail Id:
                </td>
                <td>
                    <asp:TextBox ID="txt_email_id" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Employee Address:
                </td>
                <td>
                    <asp:TextBox ID="txt_address" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Employee City
                </td>
                <td>
                     <asp:TextBox ID="txt_city" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td>
                <asp:Button ID="btn_submit" runat="server" Text="Submit" 
                    onclick="btn_submit_Click" />
                <asp:Button ID="btn_reset" runat="server" Text="Reset" 
                    onclick="btn_reset_Click" />
            </td></tr>
            <tr><td>
                <asp:Label ID="lbl_msg" runat="server" Text=""></asp:Label></td></tr>
            
        </table>
   </asp:Panel> 
  
    
         <asp:Panel ID="pnl_data_view" runat="server" Visible="False">
        <asp:GridView ID="grd_data" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataKeyNames="Employee_ID" DataSourceID="SqlDataSource3" 
            ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Employee_ID" HeaderText="Employee_ID" 
                    InsertVisible="False" ReadOnly="True" SortExpression="Employee_ID" />
                <asp:BoundField DataField="Employee_Name" HeaderText="Employee_Name" 
                    SortExpression="Employee_Name" />
                <asp:BoundField DataField="Department_Name" HeaderText="Department_Name" 
                    SortExpression="Department_Name" />
                <asp:BoundField DataField="Type_name" HeaderText="Type_name" 
                    SortExpression="Type_name" />
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                <asp:BoundField DataField="Contact_No" HeaderText="Contact_No" 
                    SortExpression="Contact_No" />
                <asp:BoundField DataField="Email_ID" HeaderText="Email_ID" 
                    SortExpression="Email_ID" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                <asp:BoundField DataField="City" HeaderText="City" 
                    SortExpression="City" />
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
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
                 SelectCommand="SELECT Employees.Employee_ID, Employees.Employee_Name, Departments.Department_Name, Employee_Types.Type_name, Employees.DOB, Employees.Contact_No, Employees.Email_ID, Employees.Address, Employees.City FROM Employees INNER JOIN Departments ON Employees.Department_ID = Departments.Department_ID INNER JOIN Employee_Types ON Employees.Type_ID = Employee_Types.Type_ID">
        </asp:SqlDataSource>
    </asp:Panel>
      </center>
      </div>
</asp:Content>
