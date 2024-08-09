<%@ Page Title="" Language="C#" MasterPageFile="~/JobPortal.Master" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="OnlineJobPortal.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 446px;
        }
        .auto-style3 {
            width: 446px;
            text-align: right;
        }
        .auto-style4 {
            width: 446px;
            text-align: right;
            height: 84px;
        }
        .auto-style5 {
            height: 84px;
        }
        .active {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="txt-center" colspan="2"><strong>Employee Registration</strong></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;Company:&nbsp;</td>
            <td>
                    <asp:TextBox ID="txtcompany" runat="server"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style3">First Name:</td>
            <td>
                    <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style3">Last Name:</td>
            <td>
                    <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style3">Country:</td>
            <td>
                    <asp:DropDownList ID="ddlcountry" runat="server" Width="128px">
                        <asp:ListItem Value="0">Select-Country</asp:ListItem>
                    </asp:DropDownList>
                </td>
        </tr>
        <tr>
            <td class="auto-style3">City:</td>
            <td>
                    <asp:DropDownList ID="ddlcity" runat="server" Width="128px">
                        <asp:ListItem Value="0">Select-City</asp:ListItem>
                    </asp:DropDownList>
                </td>
        </tr>
        <tr>
            <td class="auto-style3">Industory:</td>
            <td>
                    <asp:DropDownList ID="ddlindustry" runat="server" Width="128px">
                        <asp:ListItem Value="0">Select-Industry</asp:ListItem>
                    </asp:DropDownList>
                </td>
        </tr>
        <tr>
            <td class="auto-style3">Telephone:</td>
            <td>
                    <asp:TextBox ID="txttelephone" runat="server"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style3">Mobile:</td>
            <td>
                    <asp:TextBox ID="txtmobile" runat="server"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style3">Email:</td>
            <td>
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style3">Password:</td>
            <td>
                    <asp:TextBox ID="txtpassword" runat="server" Height="19px"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style4">About Company:</td>
            <td class="auto-style5">
                    <asp:TextBox ID="txtabout" runat="server" Height="96px" TextMode="MultiLine" Width="222px" style="margin-left: 4px"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="auto-style3">CompanyType:</td>
            <td>
                    <asp:RadioButtonList ID="rblCompanyType" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Value="1">Employer</asp:ListItem>
                        <asp:ListItem Value="2">Recruiting Agency</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="btnsbmit" runat="server" BackColor="#66CCFF" CssClass="active" Height="38px" OnClick="btnsbmit_Click" Text="Submit" Width="105px" />
&nbsp;&nbsp;
                <asp:LinkButton ID="btnlogin" runat="server" OnClick="btnlogin_Click">Login</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
