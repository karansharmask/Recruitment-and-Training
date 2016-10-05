<%@ Page Title="" Language="C#" MasterPageFile="~/inner.master" AutoEventWireup="true" CodeFile="jobsMaster.aspx.cs" Inherits="jobsMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="form-holder">
<asp:Button ID="btn_view" runat="server" Text="Show Data" 
    onclick="view_Click" CausesValidation="False" />
<center>
<h2>Jobs Master</h2>
<asp:Panel ID="pnl_form" runat="server">
<table>
        <tr>
            <td>
                <b>Jobs Name:</b>
            </td>
            <td>
            <asp:TextBox ID="TxtJobName" runat="server" placeholder="your ID"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ErrorMessage="Enter your Jobs Name" ControlToValidate="TxtJobName"></asp:RequiredFieldValidator>
             </td>
        </tr>
        <tr>
            <td>
                <b>Designation Id:</b>
            </td>
            <td>
                <asp:DropDownList ID="DDLDesigId" runat="server" DataSourceID="SqlDataSource1" 
                    DataTextField="Designation_Name" DataValueField="Designation_ID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Designation_ID], [Designation_Name] FROM [Designations]">
                </asp:SqlDataSource>
              </td>
          </tr>
        <tr>
            <td>
                <b>NO Of Post:</b>
            </td>
            <td><asp:TextBox ID="txt_no_of_post" runat="server" placeholder="No Of Post"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Enter your Number Of Post" ControlToValidate="txt_no_of_post"></asp:RequiredFieldValidator>
          </td>
          </tr>
          <tr>
            <td>
                <b>Qualification Required:</b>
            </td>
            <td><asp:TextBox ID="txt_qualification" runat="server" placeholder="Qualification"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ErrorMessage="Enter your qualification" ControlToValidate="txt_qualification"></asp:RequiredFieldValidator>
          </td>
          </tr>
          <tr>
            <td>
                <b>Experience Required:</b>
            </td>
            <td><asp:TextBox ID="txt_experience" runat="server" placeholder="Experience"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ErrorMessage="Enter your Experience" ControlToValidate="txt_experience"></asp:RequiredFieldValidator>
          </td>
          </tr>
          <tr>
            <td>
                <b>Salary Range:</b>
            </td>
            <td><asp:TextBox ID="txt_range" runat="server" placeholder="Salary"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ErrorMessage="Select Your Range" ControlToValidate="txt_range"></asp:RequiredFieldValidator>
          </td>
          </tr>
          <tr>
          <td></td>
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
            CellPadding="4" DataKeyNames="Job_ID" DataSourceID="SqlDataSource3" 
            ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Job_ID" HeaderText="Job_ID" 
                    InsertVisible="False" ReadOnly="True" SortExpression="Job_ID" />
                <asp:BoundField DataField="Job_Name" HeaderText="Job_Name" 
                    SortExpression="Job_Name" />
                <asp:BoundField DataField="Designation_ID" HeaderText="Designation_ID" 
                    SortExpression="Designation_ID" />
                <asp:BoundField DataField="Designation_Name" HeaderText="Designation_Name" 
                    SortExpression="Designation_Name" />
                <asp:BoundField DataField="Posts" HeaderText="Posts" SortExpression="Posts" />
                <asp:BoundField DataField="Qualification_Required" HeaderText="Qualification_Required" 
                    SortExpression="Qualification_Required" />
                <asp:BoundField DataField="Experience_Required" HeaderText="Experience_Required" 
                    SortExpression="Experience_Required" />
                <asp:BoundField DataField="Salary_Range" HeaderText="Salary_Range" 
                    SortExpression="Salary_Range" />
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
            
                 
             SelectCommand="SELECT Jobs.Job_ID, Jobs.Job_Name, Jobs.Designation_ID, Designations.Designation_Name, Jobs.Posts, Jobs.Qualification_Required, Jobs.Experience_Required, Jobs.Salary_Range FROM Jobs INNER JOIN Designations ON Jobs.Designation_ID = Designations.Designation_ID">
        </asp:SqlDataSource>
    </asp:Panel>
    </center>
    </div>
</asp:Content>

