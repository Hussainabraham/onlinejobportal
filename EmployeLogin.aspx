<%@ Page Title="" Language="C#" MasterPageFile="~/JobPortal.Master" AutoEventWireup="true" CodeBehind="EmployeLogin.aspx.cs" Inherits="OnlineJobPortal.EmployeLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
               <center> <fieldset style="width: 281px; height: 153px;">
                    <legend>Welcome Employee</legend>
                    <asp:TextBox ID="txtusername" placeholder="username" runat="server"
                        Width="180px"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername" ErrorMessage="Required" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                    <br />
                    &nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:TextBox ID="txtpassword" placeholder="password" runat="server"
                        Width="180px" TextMode="Password"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" ErrorMessage="Required" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:Button ID="btnsubmit" runat="server" Text="Sign In" Width="81px" OnClick="btnsubmit_Click1"/>
                    &nbsp;<br />

                    <br />
                    Don&#39;t have account.?<asp:LinkButton ID="btnemp" runat="server" CausesValidation="False" OnClick="btnemp_Click">Sign Up</asp:LinkButton>

                    <br />
                    <asp:Label ID="lbllogin" runat="server"></asp:Label>
                    <br />
                    <br />

                </fieldset>
                   </center>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </div>

    <script src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
</asp:Content>
