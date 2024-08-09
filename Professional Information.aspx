<%@ Page Title="" Language="C#" MasterPageFile="~/JobPortal.Master" AutoEventWireup="true" CodeBehind="Professional Information.aspx.cs" Inherits="OnlineJobPortal.Professional_Information" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
        width: 319px;
        text-align: right;
    }
    .auto-style5 {
        width: 785px;
    }
    .auto-style6 {
        width: 350px;
    }
    .auto-style7 {
        width: 350px;
        text-align: right;
    }
    .auto-style8 {
        width: 459px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style8" style="text-align: right">Do you have Experience:&nbsp; Yes:<asp:RadioButton ID="rdbyes" runat="server" AutoPostBack="True" GroupName="exp" OnCheckedChanged="rdbyes_CheckedChanged" />
&nbsp; No:<asp:RadioButton ID="rdbno" runat="server" AutoPostBack="True" GroupName="exp" OnCheckedChanged="rdbno_CheckedChanged" />
            &nbsp;&nbsp; </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>


     <asp:Panel ID="exp" runat="server">
    
    <table style="width: 1033px">
        <tr>
            <td class="auto-style4"><b style="font-size: 13px; font-weight: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;">First Job Start Date</b></td>
            <td>
                <asp:TextBox ID="txtDate" runat="server" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><b style="font-size: 13px; font-weight: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;">Work Experience</b></td>
            <td>
                <asp:DropDownList ID="ddlWorkExp" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><b style="font-size: 13px; font-weight: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><span id="profInd">Professional Industry<span class="Apple-converted-space">&nbsp;</span></span></b></td>
            <td>
                <asp:DropDownList ID="ddlProfessionalIndustry" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><b style="font-size: 13px; font-weight: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><span id="profInd0">Functional Area</span></b></td>
            <td>
                <asp:DropDownList ID="ddlFunctionalArea" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><b style="font-size: 13px; font-weight: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;">Career Level</b></td>
            <td>
                <asp:DropDownList ID="ddlCarerLaevl" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><b style="font-size: 13px; font-weight: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;">Most Recent / Current Job Title</b></td>
            <td>
                <asp:TextBox ID="txtCurrentJob" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><b style="font-size: 13px; font-weight: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;">Job Period</b></td>
            <td>
                <asp:TextBox ID="from" runat="server" TextMode="Date"></asp:TextBox>
                &nbsp; To :<asp:TextBox ID="txtto" runat="server" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><b style="font-size: 13px; font-weight: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;">Company Name</b></td>
            <td>
                <asp:TextBox ID="txtCompanyName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><b style="font-size: 13px; font-weight: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;">Country</b></td>
            <td>
                <asp:DropDownList ID="ddlCounrty" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCounrty_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"><b style="font-size: 13px; font-weight: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;">City</b></td>
            <td>
                <asp:DropDownList ID="ddlCity" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>
                <asp:Button ID="btnAdd" runat="server" Text="Submit" OnClick="btnAdd_Click" />
                &nbsp;
                <asp:Label ID="lbl1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
     </table>
    </asp:Panel>
    <asp:Panel ID="fresh" runat="server">
        <table>
      <tr>
            <td class="auto-style7"><b style="font-size: 13px; font-weight: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><span id="profInd1">Area of Interest</span></b></td>
            <td class="auto-style5">
                <asp:DropDownList ID="ddlAreaOfIntrst" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><b style="font-size: 13px; font-weight: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><span id="profInd2">Functional Area</span></b></td>
            <td class="auto-style5">
                <asp:DropDownList ID="ddlFunctionalFresh" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><b style="font-size: 13px; font-weight: normal; color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px;">Career Level</b></td>
            <td class="auto-style5">
                <asp:DropDownList ID="ddlCareerLevelFresh" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style5">
                <asp:Button ID="btnsbmit" runat="server" Text="Submit" OnClick="btnsbmit_Click"/>
            </td>
        </tr>


        </table>

    </asp:Panel>
    
</asp:Content>
