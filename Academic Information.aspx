<%@ Page Title="" Language="C#" MasterPageFile="~/JobPortal.Master" AutoEventWireup="true" CodeBehind="Academic Information.aspx.cs" Inherits="OnlineJobPortal.Academic_Information" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        text-align: right;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><table class="auto-style1">
    <tr>
        <td class="auto-style3"><b style="font-size: 13px; font-weight: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;">Degree Level:</b></td>
        <td>
            <asp:DropDownList ID="ddldeg_level" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style3"><b style="font-size: 13px; font-weight: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;">Degree Title:</b></td>
        <td>
            <asp:DropDownList ID="ddldeg_title" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style3"><b style="font-size: 13px; font-weight: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;">Major Subject:</b></td>
        <td>
            <asp:TextBox ID="txtmajor" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3"><b style="font-size: 13px; font-weight: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;">Location:</b></td>
        <td style="font-weight: 700">
            <asp:DropDownList ID="ddlCountry" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged">
            </asp:DropDownList>
        &nbsp;<asp:DropDownList ID="ddlCity" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style3"><b style="font-size: 13px; font-weight: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;">Institution:</b></td>
        <td>
            <asp:DropDownList ID="ddlInst" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style3"><b style="font-size: 13px; font-weight: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;">Completion Year</b></td>
        <td>
            <asp:DropDownList ID="ddlYear" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>
            <asp:Button ID="btnAdd" runat="server" Text="Submit" OnClick="btnAdd_Click" />
        &nbsp;
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>
            <asp:Button ID="bntcontnue" runat="server" OnClick="bntcontnue_Click" Text="Do You Want To Continue" />
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table></center>
</asp:Content>
