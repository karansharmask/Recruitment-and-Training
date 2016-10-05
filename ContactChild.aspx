<%@ Page Title="" Language="C#" MasterPageFile="~/RTMaster.master" AutoEventWireup="true"
    CodeFile="ContactChild.aspx.cs" Inherits="Contact_Child" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="RT_main">
        <div class="content_box">
            <h1>
                Contact Information</h1>
            <div class="cleaner">
            </div>
        </div>
        <div class="last_content_box">
            <div class="col_w460">
                <table>
                    <tr>
                        <td id="cool" rowspan="5">
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>Name:</b>
                            <asp:TextBox ID="TextBox1" runat="server" ToolTip="Enter Name" placeholder="Name"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>E-mail:</b>
                            <asp:TextBox ID="TextBox3" runat="server" ToolTip="Enter your Email" placeholder=".com"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>Subject:</b>
                            <asp:TextBox ID="TextBox4" runat="server" ToolTip="Write Message"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <b>Message:</b>
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" ToolTip="Write Message"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="col_w460 last_col">
            <h4>
                <strong>INDIA:</strong></h4>
            <div class="cleaner h5">
            </div>
            104, 1st Floor, Chanakya Complex, Nr. SBI Aavkar Hall,<br />
            Water Tank Road, Karelibaug, Vadodara - 390018.<br />
            Gujarat. INDIA.<br />
            <br />
            <div class="cleaner h10">
            </div>
            <h4>
                <strong>UK BRANCH:</strong></h4>
            <div class="cleaner h5">
            </div>
            St. James Lodge,<br />
            Croydon CR0 6PR<br />
            London, UK.<br />
            <br />
            <div class="cleaner h10">
            </div>
            <h4>
                <strong>CANADA BRANCH:</strong></h4>
            <div class="cleaner 10">
            </div>
            Blackwell Ave.<br />
            Toronto, Ontario.<br />
            M1B1E1<br />
            <br />
            <br />
            <div class="cleaner 10">
            </div>
            <h4>
                <strong>Phone:</strong></h4>
            +91 - 9375 11449<br />
            <br />
            <div class="cleaner 10">
            </div>
            <div class="cleaner 10">
            </div>
            <h4>
                <strong>E-mail:</strong></h4>
            Contact_isoft@yahoo.com<br />
            <br />
            <div class="cleaner 10">
            </div>
        </div>
        <div class="cleaner">
        </div>
    </div>
    </div>
</asp:Content>
