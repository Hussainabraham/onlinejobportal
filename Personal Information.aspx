<%@ Page Title="" Language="C#" MasterPageFile="~/JobPortal.Master" AutoEventWireup="true" CodeBehind="Personal Information.aspx.cs" Inherits="OnlineJobPortal.Personal_Information" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 250px;
        }
    .auto-style4 {
        width: 250px;
        text-align: right;
    }
        #TextArea1 {
            height: 73px;
            width: 276px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="width: 60%; margin-left: 206px">
        <tr>
            <td class="auto-style4">Name:</td>
            <td>
                <asp:TextBox ID="txtName" runat="server" Width="145px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Caste:</td>
            <td>
                <asp:TextBox ID="txtCaste" runat="server" Width="145px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Email :</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Width="145px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Password :</td>
            <td>
                <asp:TextBox ID="txtpwd" runat="server" Width="145px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtpwd" ControlToCompare="txtconfirmpwd"  ErrorMessage="Password Not Match"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Confirm Password</td>
            <td>
                <asp:TextBox ID="txtconfirmpwd" runat="server" Width="145px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Gender:</td>
            <td>
                <asp:DropDownList ID="ddlGender" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><b style="font-size: 13px; font-weight: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;">Date of Birth</b></td>
            <td>
                <asp:TextBox ID="txtDate" runat="server" TextMode="Date" Width="148px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><b style="font-size: 13px; font-weight: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;">Location</b></td>
            <td>
                <asp:DropDownList ID="ddlCountry" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged1">
                </asp:DropDownList>
                &nbsp;<asp:DropDownList ID="ddlCity" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><b style="font-size: 13px; font-weight: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;">Nationality</b></td>
            <td>
                <asp:DropDownList ID="ddlNationality" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><b style="font-size: 13px; font-weight: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;">CNIC</b></td>
            <td>
                <asp:TextBox ID="txtCnic" runat="server" Width="151px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><b style="font-size: 13px; font-weight: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;">Mobile Phone</b></td>
            <td>
                <asp:DropDownList ID="ddlCountryCode" runat="server">
                </asp:DropDownList>
&nbsp;
                <asp:DropDownList ID="ddlMoblieCompanyCode" runat="server">
                </asp:DropDownList>
&nbsp;<asp:TextBox ID="txtNumber" runat="server" Width="69px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Address :</td>
            <td>
                <asp:TextBox ID="txtadd" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Label ID="lblmsgg" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Button ID="btnAdd" runat="server" Text="Submit" OnClick="btnAdd_Click"/>
            &nbsp;
                &nbsp;&nbsp;
                <asp:Button ID="bnLogin" runat="server" OnClick="bnLogin_Click" Text="Do You Want to login" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
            </td>
        </tr>
    </table>
</asp:Content>


