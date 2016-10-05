<%@ Page Title="" Language="C#" MasterPageFile="~/inner.master" AutoEventWireup="true"
    CodeFile="TrainingMaster.aspx.cs" Inherits="TrainingMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="form-holder">
    <asp:Button ID="btn_view" runat="server" Text="Show Data" 
    onclick="view_Click" CausesValidation="False" />
    <center>
        <h4>
            Training Master</h4>
            <asp:Panel ID="pnl_form" runat="server">
            <table>
            
            <tr>
                <td>
                    Training Name:
                </td>
                <td>
                    <asp:TextBox ID="TxtFname" runat="server"></asp:TextBox>
                    
                </td>
            </tr>
            <tr>
                <td>
                    Training Hours:
                </td>
                <td>
                    <asp:TextBox ID="TxtTrainHour" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Training Description:
                </td>
                <td>
                    <asp:TextBox ID="TxtTrainDescrip" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Faculty Name:
                </td>
                <td>
                    <asp:DropDownList ID="ddl_Faculty_ID" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="Employee_Name" 
                        DataValueField="Employee_ID">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [Employee_ID], [Employee_Name] FROM [Employees] WHERE ([Type_ID] = @Type_ID)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="1" Name="Type_ID" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    Training Type:
                </td>
                <td>
                    <asp:DropDownList ID="DDLTrainType" runat="server" 
                        DataSourceID="SqlDataSource2" DataTextField="Type_Name" 
                        DataValueField="Type_ID">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [Type_ID], [Type_Name] FROM [Training_Types]">
                    </asp:SqlDataSource>
                </td>
            </tr>
          
            <tr>
                <td>
                    Training Location:
                </td>
                <td>
                    <asp:TextBox ID="TxtLocation" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    <asp:Button ID="BtnSubmit" runat="server" Text="Submit" 
                        onclick="BtnSubmit_Click" />
                    <asp:Button ID="BtnReset" runat="server" Text="Reset" 
                        />
                </td>
            </tr>
            <tr><td>
                <asp:Label ID="lbl_msg" runat="server" Text=""></asp:Label></td></tr>
        </table>
   </asp:Panel> 
        
         <asp:Panel ID="pnl_data_view" runat="server" Visible="False">
        <asp:GridView ID="grd_data" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
            CellPadding="4" DataKeyNames="Training_ID" DataSourceID="SqlDataSource3" 
            ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Training_ID" HeaderText="Training_ID" 
                    InsertVisible="False" ReadOnly="True" SortExpression="Training_ID" />
                <asp:BoundField DataField="Training_Name" HeaderText="Training_Name" 
                    SortExpression="Training_Name" />
                <asp:BoundField DataField="Training_Hours" HeaderText="Training_Hours" 
                    SortExpression="Training_Hours" />
                <asp:BoundField DataField="Training_Description" 
                    HeaderText="Training_Description" SortExpression="Training_Description" />
                <asp:BoundField DataField="Employee_Name" HeaderText="Employee_Name" 
                    SortExpression="Employee_Name" />
                <asp:BoundField DataField="Type_Name" HeaderText="Type_Name" 
                    SortExpression="Type_Name" />
                <asp:BoundField DataField="Training_Location" HeaderText="Training_Location" 
                    SortExpression="Training_Location" />
                <asp:BoundField DataField="Training_Status" HeaderText="Training_Status" 
                    SortExpression="Training_Status" />
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
            
                 SelectCommand="SELECT Trainings.Training_ID, Trainings.Training_Name, Trainings.Training_Hours, Trainings.Training_Description, Employees.Employee_Name, Training_Types.Type_Name, Trainings.Training_Location, Trainings.Training_Status FROM Employees INNER JOIN Trainings ON Employees.Employee_ID = Trainings.Faculty_ID INNER JOIN Training_Types ON Trainings.Training_Type = Training_Types.Type_ID">
        </asp:SqlDataSource>
    </asp:Panel>
    </center>
    </div>
</asp:Content>
