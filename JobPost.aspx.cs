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
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["JobPortalConnectionString"].ToString();
        SqlConnection con;
        SqlCommand cmd; 
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
            DDLFNCTON();
            DDlEducation();
            Exprineload();
            LoadCountry();
            LoadCityM();
            }
            

            
            
            
        }

        private void LoadCityM()
        {
            con = new SqlConnection(connection);
            string querycity = @"SELECT [City_ID]
      ,[City_Name]
  FROM [dbo].[City] where [Status]=1";
            cmd = new SqlCommand(querycity, con);
            con.Open();
            SqlDataReader readerr = cmd.ExecuteReader();
            ddlcity.DataSource = readerr;
            ddlcity.DataTextField = "City_Name";
            ddlcity.DataValueField = "City_ID";
            ddlcity.DataBind();
            ddlcity.Items.Insert(0, "---Select---");
            con.Close();
        }

        private void LoadCountry()
        {
            con = new SqlConnection(connection);
            string query4 = @"SELECT [Country_ID]
      ,[Country_Name]
  FROM [dbo].[Country] where [Status]=1";
            cmd = new SqlCommand(query4, con);
            con.Open();
            SqlDataReader rederr = cmd.ExecuteReader();
            ddlcountry.DataSource = rederr;
            ddlcountry.DataTextField = "Country_Name";
            ddlcountry.DataValueField = "Country_ID";
            ddlcountry.DataBind();
            ddlcountry.Items.Insert(0, "--Select---");
            con.Close();
        }

        private void Exprineload()
        {
            con = new SqlConnection(connection);
            string query3 = @"SELECT [Work_Exp_ID]
      ,[Name]
  FROM [dbo].[Work_Experience] where [Status]=1";
            cmd = new SqlCommand(query3, con);
            con.Open();
            SqlDataReader redrrr = cmd.ExecuteReader();
            ddlexperience.DataSource = redrrr;
            ddlexperience.DataTextField = "Name";
            ddlexperience.DataValueField = "Work_Exp_ID";
            ddlexperience.DataBind();
            ddlexperience.Items.Insert(0, "Select");
            con.Close();
        }

        private void DDlEducation()
        {
            con = new SqlConnection(connection);
            string query1 = @"SELECT [Career_Level_ID]
            ,[Career_Level]
            FROM [dbo].[Career_Level] where [Status]=1";
            cmd = new SqlCommand(query1, con);
            con.Open();
            SqlDataReader readrr = cmd.ExecuteReader();
            ddleducation.DataSource = readrr;
            ddleducation.DataTextField = "Career_Level";
            ddleducation.DataValueField = "Career_Level_ID";
            ddleducation.DataBind();
            ddleducation.Items.Insert(0, "---Select---");
            con.Close();
        }

        private void DDLFNCTON()
        {
            con = new SqlConnection(connection);
            string query = @"SELECT [Function_Area_ID]
              ,[Func_Name]
             FROM [dbo].[Fuctional_Area] where [Status]=1";
            cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader red = cmd.ExecuteReader();
            ddlfunctionalarea.DataSource = red;
            ddlfunctionalarea.DataTextField = "Func_Name";
            ddlfunctionalarea.DataValueField = "Function_Area_ID";
            ddlfunctionalarea.DataBind();
            ddlfunctionalarea.Items.Insert(0, "---Select---");
            con.Close();
        }

        protected void btnsbmit_Click(object sender, EventArgs e)
        {
           
            con = new SqlConnection(connection);
            cmd = new SqlCommand(@"insert into job_post([job_title],[description],[Work_Exp_ID],[Function_Area_ID],[skills],[responsiblities],[Career_Level_ID],[Country_ID],[City_ID],[salary],[lastdatetoapply],[company],[status]) 
                                                values(@job_title,@description,@Work_Exp_ID, @Function_Area_ID,@skills,@responsiblities,@Career_Level_ID,@Country_ID,@City_ID,@salary,@lastdatetoapply,@company,@status)", con);
           
            cmd.Parameters.AddWithValue("@job_title", txtTitle.Text);
            cmd.Parameters.AddWithValue("@description", txtdescription.Text);
            cmd.Parameters.AddWithValue("@Work_Exp_ID", Int32.Parse(ddlexperience.SelectedValue));
            cmd.Parameters.AddWithValue("@Function_Area_ID", Int32.Parse(ddlfunctionalarea.SelectedValue));
            cmd.Parameters.AddWithValue("@skills", txtskills.Text);
            cmd.Parameters.AddWithValue("@responsiblities", txtresponsiblities.Text);
            cmd.Parameters.AddWithValue("@Career_Level_ID", Int32.Parse(ddleducation.SelectedValue));



            cmd.Parameters.AddWithValue("@Country_ID", Int32.Parse(ddlcountry.SelectedValue));
            cmd.Parameters.AddWithValue("@City_ID", Int32.Parse(ddlcity.SelectedValue));
            cmd.Parameters.AddWithValue("@salary", txtsalary.Text);
            //cmd.Parameters.AddWithValue(@"lastdatetoapply", txtlastdate.Text);
            DateTime lastdate = Convert.ToDateTime(txtlastdate.Text);
            cmd.Parameters.AddWithValue("@lastdatetoapply", lastdate);
            cmd.Parameters.AddWithValue("@company", txtcmony.Text);
            cmd.Parameters.AddWithValue("@status", 1);
            
            cmd.Connection.Open();
            int res = cmd.ExecuteNonQuery();
            cmd.Connection.Close();
            if (res == 1)
            {
                Response.Write("<script>alert('Job posted successfully..!');</script>");
            }

        }
    }
}