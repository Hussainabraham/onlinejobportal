<%@ Page Title="" Language="C#" MasterPageFile="~/JobPortal.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="OnlineJobPortal.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            color: #333333;
            background-color: #CC99FF;
        }
        .auto-style5 {
            color: #FFFF99;
        }
        .auto-style6 {
            width: 299px;
        }
        .auto-style7 {
            width: 68px;
        }
        .auto-style8 {
            width: 616px;
            height: 44px;
        }
        .auto-style9 {
            height: 44px;
        }
        .auto-style10 {
            width: 68px;
            height: 26px;
        }
        .auto-style11 {
            height: 26px;
        }
        .auto-style12 {
            width: 299px;
            height: 23px;
        }
        .auto-style13 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style1">
        <tr>
            <td class="auto-style4" style="text-align: center">
                <table class="auto-style1">
                    <tr>
                        <td colspan="2">LOGIN PANNEL</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome MR: &nbsp;<asp:Label ID="lblname0" runat="server" Text="Label"></asp:Label>
                                    </td>
                        <td style="text-align: right">
                            <asp:Button ID="btnlogout" runat="server" Text="Logout" OnClick="btnlogout_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5" style="text-align: right">
                            <asp:Image ID="Image1" runat="server" Height="171px" style="margin-right: 0px" Width="145px" />
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style6">&nbsp;</td>
                                    <td style="text-align: left">
                                        <asp:FileUpload ID="UplImage" runat="server" CssClass="auto-style2" BorderStyle="None" Height="23px" />
&nbsp;
                                        &nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style12"></td>
                                    <td style="text-align: right" class="auto-style13">
                                        </td>
                                </tr>
                            </table>
                        </td>
                        <td style="text-align: left">
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style7">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style7">NAME:</td>
                                    <td>
                                        <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label>
                                    &nbsp;<br />
                                        <asp:TextBox ID="txtpname" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style7">Caste</td>
                                    <td>
                                        <asp:Label ID="lblCaste" runat="server" Text="Label"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="txtpcast" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style7">CNIC</td>
                                    <td>
                                        <asp:Label ID="lblnic" runat="server" Text="Label"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="txtpcnic" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style7">Gender</td>
                                    <td>
                                        <asp:Label ID="lblGnder" runat="server" Text="Label"></asp:Label>
                                        <br />
                                        <asp:DropDownList ID="ddlpgender" runat="server">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style10">DOB</td>
                                    <td class="auto-style11">
                                        <asp:Label ID="lblDate" runat="server" Text="Label"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="txtpdob" runat="server" TextMode="Date"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style7">CITY</td>
                                    <td>
                                        <asp:Label ID="lblcity" runat="server" Text="Label"></asp:Label>
                                        <br />
                                        <asp:DropDownList ID="ddlpcity" runat="server">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style7">Country</td>
                                    <td>
                                        <asp:Label ID="lblcountry" runat="server" Text="Label"></asp:Label>
                                        <br />
                                        <asp:DropDownList ID="ddlpcountry" runat="server">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style7">Mobile no:</td>
                                    <td>
                                        <asp:Label ID="lblmobileno" runat="server" Text="Label"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="txtpmob" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style7">Address</td>
                                    <td>
                                        <asp:Label ID="lblAdd" runat="server" Text="Label"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="txtpadd" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            &nbsp;</td>
                        <td class="auto-style9">
                            <table class="auto-style1">
                                <tr>
                                    <td>
                                        <asp:Button ID="btnedit" runat="server" Text="Edit" OnClick="btnedit_Click" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;
                                        <asp:Button ID="btnshowacc" runat="server" OnClick="btnshowacc_Click" Text="Show Accedmic" />
&nbsp;&nbsp;
                                        <asp:Button ID="btnproff" runat="server" OnClick="btnproff_Click" Text="Professional Info" />
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5" colspan="2">
                            <h3>APPLY FOR THE JOB </h3>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            Search Jobs Here</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:TextBox ID="TextBox1" runat="server" TextMode="Search"></asp:TextBox>
&nbsp;
                            <asp:Button ID="btnsearcjob" runat="server" OnClick="btnsearcjob_Click" Text="Find" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:GridView ID="GridView1" runat="server">
                                <Columns>
                                    <asp:TemplateField HeaderText="Apply_Job">
                                        <ItemTemplate>
                                            <asp:Button ID="btnApply" runat="server" OnClick="btnApply_Click1" Text="Apply Now" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <br />
                            <br />
                            view current Jobs</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            <asp:GridView ID="GridView2" runat="server">
                                <Columns>
                                    <asp:TemplateField HeaderText="view Job Detail">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">view job Detals</asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        </table>

</asp:Content>
