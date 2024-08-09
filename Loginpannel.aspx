<%@ Page Title="" Language="C#" MasterPageFile="~/JobPortalMaster.Master" AutoEventWireup="true" CodeBehind="Loginpannel.aspx.cs" Inherits="OnlineJobPortal.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            color: #333333;
            background-color: #CC99FF;
        }
        .auto-style5 {
            width: 1261px;
        }
        .auto-style6 {
            width: 627px;
            text-align: right;
        }
        .auto-style8 {
        width: 646px;
    }
        .auto-style9 {
            width: 323px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <table class="auto-style1">
        <tr>
            <td class="auto-style4" style="text-align: center">LOGIN PANNEL</td>
        </tr>
        <tr>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style9" style="text-align: right">Welcome Mr&nbsp; :<asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td style="text-align: right">
                            <asp:Button ID="btnlogout" runat="server" Text="Log Out" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                
                <table>
                    <tr>
                   <td class="auto-style5">


                       <table class="auto-style1">
                           <tr>
                               <td class="auto-style6" rowspan="9">
                                   <br />
                                   <br />
                                   <asp:Button ID="btnchkd" runat="server" Text="Chacked" />
                                   <asp:Image ID="Image2" runat="server" Height="148px" style="margin-left: 0px" Width="142px" />
                                   <br />
                                   <table class="auto-style1">
                                       <tr>
                                           <td class="auto-style8">&nbsp; &nbsp;</td>
                                           <td style="text-align: center">
                                               <br />
                                               <table class="auto-style1" style="width: 100%">
                                               <tr>
                                                   <td style="text-align: right">
                                                       <asp:FileUpload ID="FileUpload1" runat="server" />
                                                   </td>
                                               </tr>
                                               <tr>
                                                   <td style="text-align: left">
                                                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                       <asp:Button ID="btnsave" runat="server" Text="Save" />
                                                   &nbsp;&nbsp;
                                                   </td>
                                               </tr>
                                               </table>
                                               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;
                                               </td>
                                       </tr>
                                       <tr>
                                           <td class="auto-style8">&nbsp;</td>
                                           <td>
                                               <asp:GridView ID="GridView1" runat="server">
                                               </asp:GridView>
                                           </td>
                                       </tr>
                                   </table>
                               </td>
                               <td>&nbsp;</td>
                           </tr>
                           <tr>
                               <td>&nbsp;&nbsp; Name&nbsp; :
                                   <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                               </td>
                           </tr>
                           <tr>
                               <td>&nbsp;&nbsp; Cast&nbsp;&nbsp;&nbsp; :<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                               </td>
                           </tr>
                           <tr>
                               <td>&nbsp;&nbsp; CNIC :<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                               </td>
                           </tr>
                           <tr>
                               <td>&nbsp;&nbsp; Gender:<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                               </td>
                           </tr>
                           <tr>
                               <td>&nbsp;&nbsp; Date Of Birith :<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                               </td>
                           </tr>
                           <tr>
                               <td>&nbsp;&nbsp; Country:
                                   <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                               </td>
                           </tr>
                           <tr>
                               <td>&nbsp;&nbsp; City&nbsp; :<asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                               </td>
                           </tr>
                           <tr>
                               <td>&nbsp;&nbsp; Mobile no :<asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                               </td>
                           </tr>
                       </table>


                   </td>
                    </tr>

                </table>

            </td>
        </tr>
        </table>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
