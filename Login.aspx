<%@ Page Title="" Language="C#" MasterPageFile="~/JobPortal.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineJobPortal.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
            <div align="center">
                <center>
                <fieldset style="width: 381px; height: 153px;">
                    <legend>Login Here </legend>
                    <asp:TextBox ID="txtusername" placeholder="username" runat="server"
                        Width="180px"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername" ErrorMessage="Required" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:TextBox ID="txtpassword" placeholder="password" runat="server"
                        Width="180px" TextMode="Password"></asp:TextBox>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" ErrorMessage="Required" ForeColor="#FF6600"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:Button ID="btnsubmit" runat="server" Text="Sign In" Width="81px" OnClick="btnsubmit_Click"/>
                    &nbsp;<br />

                    <br />
                    Don&#39;t have account.?<asp:LinkButton ID="linkbtn" runat="server" OnClick="LinkButton1_Click" CausesValidation="False">Sign Up</asp:LinkButton>

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

      
</asp:Content>
