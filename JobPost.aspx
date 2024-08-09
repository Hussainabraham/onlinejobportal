<%@ Page Title="" Language="C#" MasterPageFile="~/JobPortal.Master" AutoEventWireup="true" CodeBehind="JobPost.aspx.cs" Inherits="OnlineJobPortal.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 470px;
    }
    .auto-style3 {
        text-align: right;
        width: 470px;
    }
        .active {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <table class="auto-style1">
    <tr>
        <td class="txt-center" colspan="2"><strong><em>Post Job</em></strong></td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">Job Title : </td>
        <td class="txt-lt">
            <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Functional Area:</td>
        <td class="txt-lt">
            <asp:DropDownList ID="ddlfunctionalarea" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Education:</td>
        <td class="txt-lt">
            <asp:DropDownList ID="ddleducation" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Experience:</td>
        <td class="txt-lt">
            <asp:DropDownList ID="ddlexperience" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Responsiblities:</td>
        <td class="txt-lt">
            <asp:TextBox ID="txtresponsiblities" runat="server" Height="112px" TextMode="MultiLine" Width="292px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="txt-lt">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">Skills:</td>
        <td class="txt-lt">
            <asp:TextBox ID="txtskills" runat="server" Height="98px" TextMode="MultiLine" Width="136px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">Country:</td>
        <td class="txt-lt">
            <asp:DropDownList ID="ddlcountry" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">City:</td>
        <td class="txt-lt">
            <asp:DropDownList ID="ddlcity" runat="server">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Job Description:</td>
        <td class="txt-lt">
            <asp:TextBox ID="txtdescription" runat="server" Height="123px" TextMode="MultiLine" Width="165px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Companny:</td>
        <td class="txt-lt">
            <asp:TextBox ID="txtcmony" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Salary:</td>
        <td class="txt-lt">
            <asp:TextBox ID="txtsalary" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Last Date To Apply:</td>
        <td class="txt-lt">
            <asp:TextBox ID="txtlastdate" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>
            <asp:Button ID="btnsbmit" runat="server" CssClass="active" Text="Post" BackColor="#CC99FF" Height="38px" Width="72px" OnClick="btnsbmit_Click" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
