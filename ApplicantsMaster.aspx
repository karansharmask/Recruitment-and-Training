<%@ Page Title="" Language="C#" MasterPageFile="~/inner.master" AutoEventWireup="true"
    CodeFile="ApplicantsMaster.aspx.cs" Inherits="ApplicantsMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="form-holder">
        <asp:Button ID="btn_view" runat="server" Text="Show Data" OnClick="view_Click" CausesValidation="False" />
        <center>
            <h1>
                Applicants</h1>
        </center>
        <asp:Panel ID="pnl_form" runat="server">
            <table align="center">
                <tr>
                    <td>
                        <b>Applicant Name:</b>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtAppName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter your Name"
                            ControlToValidate="TxtAppName"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Applicant Address:</b>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtAppAdd" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Address please"
                            ControlToValidate="TxtAppAdd"></asp:RequiredFieldValidator>
                </tr>
                <tr>
                    <td>
                        <b>Applicant City:</b>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtAppCity" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter City"
                            ControlToValidate="TxtAppCity"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Applicant Dob:</b>
                    </td>
                    <td>
                        <asp:Calendar ID="dob" runat="server" SelectionMode="DayWeekMonth"></asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Applicant Maritial Status:</b>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtAppStatus" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Maritial Status"
                            ControlToValidate="TxtAppStatus"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>SSC Result:</b>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtSSCResult" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter SSC Result"
                            ControlToValidate="TxtSSCResult"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>HSC Result:</b>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtHSCResult" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Enter HSC Result"
                            ControlToValidate="TxtHSCResult"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Additional Details:</b>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtAddDetail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Enter Details"
                            ControlToValidate="TxtAddDetail"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <asp:Button ID="btn_submit" runat="server" Text="Submit" OnClick="btn_submit_Click" />
                        <asp:Button ID="btn_reset" runat="server" Text="Reset" OnClick="BtnReset_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lbl_msg" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="pnl_data_view" runat="server" Visible="False" Width="100%">
            <asp:GridView ID="grd_data" runat="server" AutoGenerateColumns="False" BackColor="White"
                BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Applicant_ID"
                DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="grd_data_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Applicant_ID" HeaderText="Applicant_ID" InsertVisible="False"
                        ReadOnly="True" SortExpression="Applicant_ID" />
                    <asp:BoundField DataField="Applicant_Name" HeaderText="Applicant_Name" SortExpression="Applicant_Name" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                    <asp:BoundField DataField="Maritial_Status" HeaderText="Maritial_Status" SortExpression="Maritial_Status" />
                    <asp:BoundField DataField="SSC_Result" HeaderText="SSC_Result" SortExpression="SSC_Result" />
                    <asp:BoundField DataField="HSC_Result" HeaderText="HSC_Result" SortExpression="HSC_Result" />
                    <asp:BoundField DataField="Additional_Details" HeaderText="Additional_Details" SortExpression="Additional_Details" />
                    <asp:CommandField ShowSelectButton="True" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                SelectCommand="SELECT [Applicant_ID], [Applicant_Name], [Address], [City], [DOB], [Maritial_Status], [SSC_Result], [HSC_Result], [Additional_Details] FROM [Applicant_Details]">
            </asp:SqlDataSource>
        </asp:Panel>
    </div>
</asp:Content>
