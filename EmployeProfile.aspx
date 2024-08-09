<%@ Page Title="" Language="C#" MasterPageFile="~/JobPortal.Master" AutoEventWireup="true" CodeBehind="EmployeProfile.aspx.cs" Inherits="OnlineJobPortal.EmployeProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            color: #FFFFCC;
            font-style: italic;
            background-color: #333333;
        }
        .auto-style5 {
            width: 592px;
            text-align: right;
        }
    .auto-style6 {
        width: 260px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td colspan="2" style="text-align: center">
                <h3 class="auto-style4">Employer Profile</h3>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" style="text-align: right">WELCOME Mr :&nbsp;&nbsp;
                <asp:Label ID="lblwlcm" runat="server" Text="Label"></asp:Label>
&nbsp; </td>
            <td style="text-align: right" class="auto-style6">
                <asp:LinkButton ID="btnout" runat="server" OnClick="btnout_Click">Log Out</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" rowspan="4">
                <asp:Image ID="Image1" runat="server" Height="74px" style="margin-left: 0px" Width="82px" />
            </td>
            <td class="auto-style6">Name :
                <asp:Label ID="lblname" runat="server" Text="Label"></asp:Label>
            &nbsp;<asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Company :<asp:Label ID="lblcompny" runat="server" Text="Label"></asp:Label>
            &nbsp;<asp:TextBox ID="txtcmpny" runat="server" Width="105px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">City :
                <asp:Label ID="lblcity" runat="server" Text="Label"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="ddlcity" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Country :<asp:Label ID="lblcountry" runat="server" Text="Label"></asp:Label>
            &nbsp;<asp:DropDownList ID="ddlcountry" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Btnsave" runat="server" Text="Save" />
&nbsp;&nbsp; </td>
            <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnedit" runat="server" Text="Edit" OnClick="btnedit_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="linkjob" runat="server" OnClick="linkjob_Click">Post Job</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
