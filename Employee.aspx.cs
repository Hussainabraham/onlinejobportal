using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace OnlineJobPortal
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["JobPortalConnectionString"].ToString();
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader reader;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                Loadcontry();
                Loadcity();
                DDLLoadInds();
            }



        }   
                                                // page load braceses
        private void DDLLoadInds()
        {
            con = new SqlConnection(connection);
            string query3 = @"SELECT [Profession_Ind_ID]
            ,[Pro_Name]
            FROM [dbo].[Professional_Industry] where [Status]=1";
            cmd = new SqlCommand(query3, con);
            con.Open();
            SqlDataReader sqds = cmd.ExecuteReader();
            ddlindustry.DataSource = sqds;
            ddlindustry.DataTextField = "Pro_Name";
            ddlindustry.DataValueField = "Profession_Ind_ID";
            ddlindustry.DataBind();
            ddlindustry.Items.Insert(0, "---select---");
            con.Close();
        }
        private void Loadcity()
        {
            con = new SqlConnection(connection);
            string query2 = @"SELECT [City_ID]
           ,[City_Name]
           FROM [dbo].[City] where [Status]=1";
            cmd = new SqlCommand(query2, con);
            con.Open();
            SqlDataReader redr = cmd.ExecuteReader();
            ddlcity.DataSource = redr;
            ddlcity.DataTextField = "City_Name";
            ddlcity.DataValueField = "City_ID";
            ddlcity.DataBind();
            ddlcity.Items.Insert(0, "---Select---");
            con.Close();
        }
        private void Loadcontry()
        {
            con = new SqlConnection(connection);
            string query1 = @"SELECT [Country_ID]
                      ,[Country_Name]
                  FROM [dbo].[Country] where [Status]=1";
            cmd = new SqlCommand(query1, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            ddlcountry.DataSource = reader;
            ddlcountry.DataTextField = "Country_Name";
            ddlcountry.DataValueField = "Country_ID";
            ddlcountry.DataBind();
            ddlcountry.Items.Insert(0, "---Select---");
            con.Close();
        }

        protected void btnsbmit_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(connection);

            cmd = new SqlCommand(@"insert into Employer([Company_name],[First_name],[Last_name],[Country_ID],[City_ID],[Profession_Ind_ID],[Telephone],[Mobile_no],[Email],[Password],[Abbout_com],[comp_Type],[status]) 
                                    values(@Company_name,@First_name,@Last_name,@Country_ID,@City_ID,@Profession_Ind_ID,@Telephone,@Mobile_no,@Email,@Password,@Abbout_com,@comp_Type,@status)", con);

            cmd.Parameters.AddWithValue("@Company_name", txtcompany.Text);
            cmd.Parameters.AddWithValue("@First_name", txtfname.Text);
            cmd.Parameters.AddWithValue("@Last_name", txtlname.Text);
            cmd.Parameters.AddWithValue("@Country_ID", Int32.Parse(ddlcountry.SelectedValue));
            cmd.Parameters.AddWithValue("@City_ID", Int32.Parse(ddlcity.SelectedValue));
            cmd.Parameters.AddWithValue("@Profession_Ind_ID", Int32.Parse(ddlindustry.SelectedValue));
            cmd.Parameters.AddWithValue("@Telephone", txttelephone.Text);
            cmd.Parameters.AddWithValue("@Mobile_no", txtmobile.Text);
            cmd.Parameters.AddWithValue("@Email", txtemail.Text);
            cmd.Parameters.AddWithValue("@Password", txtpassword.Text);
            cmd.Parameters.AddWithValue("@comp_Type", Int32.Parse(rblCompanyType.SelectedValue));
            cmd.Parameters.AddWithValue("@Abbout_com", txtabout.Text);
            cmd.Parameters.AddWithValue("@status", 1);

            cmd.Connection.Open();
            int res = cmd.ExecuteNonQuery();
            cmd.Connection.Close();
            if (res == 1)
            {
                Response.Write("<script>alert('Congratulations you are registerd..!');</script>");
            }
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmployeLogin.aspx");
        }


    
    }
}