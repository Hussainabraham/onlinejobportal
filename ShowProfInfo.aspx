<%@ Page Title="" Language="C#" MasterPageFile="~/JobPortal.Master" AutoEventWireup="true" CodeBehind="ShowProfInfo.aspx.cs" Inherits="OnlineJobPortal.ShowProfInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 596px;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            width: 596px;
            text-align: right;
            height: 30px;
        }
        .auto-style7 {
            height: 30px;
        }
        .auto-style8 {
            text-align: center;
            width: 596px;
        }
        .auto-style9 {
            text-align: right;
            width: 596px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td colspan="2" style="text-align: center; background-color: #808080;">Show Professional Informaion</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">Work Experince :</td>
            <td class="auto-style7">
                <asp:DropDownList ID="ddlworkexp" runat="server">
                </asp:DropDownList>
&nbsp;&nbsp;
                <asp:Label ID="lblworkexp" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Functional Area :</td>
            <td>
                <asp:DropDownList ID="ddlfunctionarea" runat="server">
                </asp:DropDownList>
&nbsp;&nbsp;
                <asp:Label ID="lblFunctionArea" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Carear Level :</td>
            <td>
                <asp:DropDownList ID="ddlcarearLevel" runat="server">
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblcarearlevel" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Companny Name:</td>
            <td>
                <asp:TextBox ID="txtcompname" runat="server"></asp:TextBox>
&nbsp;&nbsp;
                <asp:Label ID="lblcompname" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Country :</td>
            <td>
                <asp:DropDownList ID="ddlshowcontry" runat="server">
                </asp:DropDownList>
&nbsp;<asp:Label ID="lblcontry" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">City :</td>
            <td>
                <asp:DropDownList ID="ddlshowcity" runat="server">
                </asp:DropDownList>
&nbsp;&nbsp;
                <asp:Label ID="lblcityname" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="2">
                <asp:Button ID="brnedit" runat="server" Text="Edit" OnClick="brnedit_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

