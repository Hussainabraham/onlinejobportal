<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="OnlineJobPortal.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: left;
            width: 166px;
        }
        .auto-style3 {            text-align: right;
        }
        .auto-style4 {
            width: 166px;
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
        }
        .auto-style6 {
            width: 166px;
            height: 25px;
            text-align: right;
        }
        .auto-style7 {
            height: 25px;
        }
        .auto-style8 {
            height: 20px;
            text-align: left;
        }
        .auto-style9 {
            height: 21px;
        }
        .auto-style10 {
            height: 56px;
        }
        .auto-style11 {
            color: #0000FF;
            background-color: #FF0000;
        }
        .auto-style12 {
            height: 20px;
            text-align: right;
        }
        .auto-style13 {
            text-align: right;
            height: 31px;
        }
        .auto-style14 {
            height: 31px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
        <table class="auto-style1">
            <tr>
                <td colspan="2" style="text-align: left; color: #0000FF; font-weight: 700; background-color: #FF0000">Account Information</td>
            </tr>
            <tr>
                <td class="auto-style2">Account_Type</td>
                <td>
                    <asp:DropDownList ID="ddlAccountType" runat="server" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password</td>
                <td>
                    <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Descrption</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" style="color: #0000FF; font-weight: 700; background-color: #FF3300">Personal Information</td>
            </tr>
            <tr>
                <td class="auto-style3">Name</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Caste</td>
                <td>
                    <asp:TextBox ID="txtCaste" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Gender</td>
                <td>
                    <asp:DropDownList ID="ddlgender" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Dob</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Country</td>
                <td>
                    <asp:DropDownList ID="ddlCountry" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Nationality</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="ddlNationality" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">CNIC</td>
                <td>
                    <asp:TextBox ID="tctCnic" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Conatct-Number</td>
                <td>
                    <asp:TextBox ID="txtContatcNober" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Home_Phone</td>
                <td>
                    <asp:TextBox ID="txtHomePhone" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Upload_Cv</td>
                <td>
                    <asp:FileUpload ID="uploadCv" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Profile_Picture</td>
                <td>
                    <asp:FileUpload ID="uploadImage" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Experience</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtExpernice" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11" colspan="2">Accdmic Information</td>
            </tr>
            <tr>
                <td class="auto-style3">Degree Level</td>
                <td>
                    <asp:DropDownList ID="ddldegree" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Degree Tilte</td>
                <td class="auto-style8">
                    <asp:DropDownList ID="ddltilte" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Major Subject</td>
                <td>
                    <asp:TextBox ID="txtMajorSubject" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Location</td>
                <td class="auto-style14">
                    <asp:DropDownList ID="ddlLoactionCountry" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlLoactionCountry_SelectedIndexChanged">
                    </asp:DropDownList>
&nbsp;
                    <asp:DropDownList ID="ddlCityLoctaion" runat="server">
                    </asp:DropDownList>
                &nbsp;<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Insitute</td>
                <td>
                    <asp:DropDownList ID="ddlInstute" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Completion Year</td>
                <td>
                    <asp:DropDownList ID="ddlYear3" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>

              <tr>
                <td class="auto-style3">Do you have Experince</td>
                <td>
                    <asp:RadioButton ID="RbtnYes" runat="server" OnCheckedChanged="Yes_CheckedChanged" AutoPostBack="True" GroupName="exp" />
&nbsp;<asp:RadioButton ID="RbtnNo" runat="server" AutoPostBack="True" GroupName="exp" OnCheckedChanged="No_CheckedChanged" />
                </td>
            </tr>
            </table>

        <asp:Panel ID="expernce" runat="server">

        <table>
            <tr>
                <td class="auto-style11" colspan="2"><strong>Professional Information</strong></td>
            </tr>
          
            <tr>
                <td class="auto-style3">Job Start Date</td>
                <td>
                    <asp:DropDownList ID="ddlDays0" runat="server">
                    </asp:DropDownList>
&nbsp;<asp:DropDownList ID="ddlMonth0" runat="server">
                    </asp:DropDownList>
&nbsp;
                    <asp:DropDownList ID="ddlYear0" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Work Experience</td>
                <td>
                    <asp:DropDownList ID="ddlWorkExperince" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Professional Industry</td>
                <td class="auto-style9">
                    <asp:DropDownList ID="ddlProfessinalINdustry" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Functional Area</td>
                <td>
                    <asp:DropDownList ID="ddlFunctionalarea" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Career Level</td>
                <td>
                    <asp:DropDownList ID="ddlCareerLevel" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Current Job</td>
                <td>
                    <asp:TextBox ID="txtCurrentjob" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Job Period</td>
                <td class="auto-style10">From
&nbsp;<asp:DropDownList ID="ddlMonth1" runat="server">
                    </asp:DropDownList>
&nbsp;
                    <asp:DropDownList ID="ddlYear1" runat="server">
                    </asp:DropDownList>
                    <br />
                    To&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;<asp:DropDownList ID="ddlMonth2" runat="server">
                    </asp:DropDownList>
&nbsp;
                    <asp:DropDownList ID="ddlYear2" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Company Name</td>
                <td>
                    <asp:TextBox ID="txtCompnayname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Country </td>
                <td>
                    <asp:DropDownList ID="ddlcountryprofess" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">City</td>
                <td>
                    <asp:DropDownList ID="ddlcityprofess" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            
           </table>


</asp:Panel>




        <asp:Panel ID="fresh" runat="server">
        <table>
            <tr>
                <td class="auto-style3">Area Of Intrest</td>
                <td>
                    <asp:DropDownList ID="ddlareaOfinterst" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Functional Area</td>
                <td>
                    <asp:DropDownList ID="ddlFunctionalarea0" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Career Level</td>
                <td>
                    <asp:DropDownList ID="ddlCareerLevel0" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            
       
             </table>

    </asp:Panel>




            <table>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style3"><span style="color: rgb(0, 0, 0); font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: -webkit-left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">How Did You Hear About Us?</span></td>
                <td>
                    <asp:DropDownList ID="ddlwhere" runat="server" AutoPostBack="True">
                        <asp:ListItem>facebook</asp:ListItem>
                        <asp:ListItem>google</asp:ListItem>
                        <asp:ListItem>tweter</asp:ListItem>
                        <asp:ListItem>newspaper</asp:ListItem>
                        <asp:ListItem>tv</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">
                    <asp:Button ID="btnSignUp" runat="server" OnClick="btnSignUp_Click" style="text-align: left" Text="Sign Up" />
                </td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
