<%@ Page Title="" Language="C#" MasterPageFile="~/JobPortal.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="OnlineJobPortal.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 481px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div align="center">
                <table class="auto-style1">
                    <tr>
                        <td style="background-color: #CCFFFF">
                            <h2 style="text-align: center">WELCOME OLINE JOB PORTAL</h2>
                        </td>
                    </tr>
                </table>
                <fieldset style="width: 1254px; height: 60px;">
                    <%--<legend></legend>--%>
                    <table class="auto-style1">
                        <tr>
                            <td style="text-align: right">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right">
                                <asp:Button ID="btnreg" runat="server" Text="Not User?Create Account " OnClick="btnreg_Click" CssClass="active" Height="28px" />
                            </td>
                        </tr>
                    </table>

                </fieldset>

      <fieldset style="width: 1254px; height: 60px;">
                    <%--<legend></legend>--%>

                    <table class="auto-style1">
                        <tr>
                            <td colspan="2" style="text-align: left">Search online jobs</td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:TextBox ID="TextBox1" placeholder="Search jobs" runat="server" TextMode="Search"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox2" placeholder="Location / cities" runat="server" TextMode="Search"></asp:TextBox>
&nbsp;&nbsp;
                                <asp:Button ID="btnsearch" runat="server" Text="Search" OnClick="btnsearch_Click" />
                                <br />
                                <br />
                                <br />
                                <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" >
                                    <Columns>
                                        <asp:TemplateField HeaderText="Apply job">
                                            <ItemTemplate>
                                                <asp:Button ID="btnaply" runat="server" OnClick="btnaply_Click" Text="Apply Job" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                                </asp:GridView>
                            &nbsp;
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <br />
                                <br />
                                <br />
                                <br />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>

                </fieldset>

         <fieldset style="width: 1254px; height: 60px;">
                    <%--<legend></legend>--%>

                    

   
        </fieldset>

         <fieldset style="width: 1254px; height: 60px;">
                    <legend></legend>

                    
                      </fieldset>
       
            
            </div>

</asp:Content>
