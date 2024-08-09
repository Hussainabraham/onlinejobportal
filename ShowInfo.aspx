<%@ Page Title="" Language="C#" MasterPageFile="~/JobPortal.Master" AutoEventWireup="true" CodeBehind="ShowInfo.aspx.cs" Inherits="OnlineJobPortal.Registeration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            text-align: right;
            width: 620px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td colspan="2" style="text-align: center; color: #CCFFFF; font-style: italic; background-color: #808080;">Show User&#39;s Acadmic Data</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">Degree Level</td>
            <td>
                <asp:DropDownList ID="ddlsowdlevel" runat="server">
                </asp:DropDownList>
&nbsp;<asp:Label ID="lbldegl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Degree Title:</td>
            <td>
                <asp:DropDownList ID="ddlshowdegtitle" runat="server">
                </asp:DropDownList>
&nbsp;
                <asp:Label ID="lbldegT" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Major Subject:</td>
            <td>
                <asp:TextBox ID="txtsub" runat="server"></asp:TextBox>
&nbsp;
                <asp:Label ID="lblMsub" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Location :</td>
            <td>
                <asp:DropDownList ID="ddlshowloc" runat="server">
                </asp:DropDownList>
&nbsp;&nbsp;
                <asp:Label ID="lblcontry" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp; City :<asp:DropDownList ID="ddlshowcity" runat="server">
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblcity" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Institution :</td>
            <td>
                <asp:DropDownList ID="ddlInstitution" runat="server">
                </asp:DropDownList>
&nbsp;&nbsp;
                <asp:Label ID="lblIsti" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Completion Year :</td>
            <td>
                <asp:DropDownList ID="ddlshowcomyear" runat="server">
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblyear" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" colspan="2">
                <asp:Button ID="btnedit" runat="server" Text="Edit" OnClick="btnedit_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>