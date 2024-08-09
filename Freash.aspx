<%@ Page Title="" Language="C#" MasterPageFile="~/JobPortal.Master" AutoEventWireup="true" CodeBehind="Freash.aspx.cs" Inherits="OnlineJobPortal.Freash" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            text-align: right;
            width: 614px;
        }
        .auto-style5 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td colspan="2" style="text-align: center">Show Freash User Data</td>
        </tr>
        <tr>
            <td class="auto-style4">Area of Intrest :</td>
            <td>
                <asp:DropDownList ID="ddlaoi" runat="server">
                </asp:DropDownList>
&nbsp;
                <asp:Label ID="lblareaofintrest" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Fuctional Area :</td>
            <td>
                <asp:DropDownList ID="ddlfar" runat="server">
                </asp:DropDownList>
                <asp:Label ID="lblfnctio" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Carear Level : </td>
            <td>
                <asp:DropDownList ID="ddlcarl" runat="server">
                </asp:DropDownList>
                <asp:Label ID="lblcartearlvl" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="2">
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="2">
                <asp:Button ID="btneditFrsh" runat="server" Text="Edit" OnClick="btneditFrsh_Click" />
            &nbsp;</td>
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
