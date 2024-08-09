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
    public partial class Professional_Information : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["JobPortalConnectionString"].ToString();
        SqlConnection con;
        SqlCommand cmd;        
        protected void Page_Load(object sender, EventArgs e)
        {            
            if (Page.IsPostBack==false)
            {
                exp.Visible = true;
                fresh.Visible = false;
                rdbyes.Checked = true;


               
            }

            if (!Page.IsPostBack)
            {

                LoadworkExp();
                LoadProfInd();
                LoaddCarearlevel();
                LoadCountry();
                LoadAreaOfIntrest();
                LoadFunctionArea();
                carearlevel2();
                Functionarea2();
            }
            
        }

        private void Functionarea2()
        {
            con = new SqlConnection(connection);
            string query = @"SELECT [Function_Area_ID]
                ,[Func_Name]
                 FROM [dbo].[Fuctional_Area] where [Status]=1";
            cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            ddlFunctionalArea.DataSource = reader;
            ddlFunctionalArea.DataTextField = "Func_Name";
            ddlFunctionalArea.DataValueField = "Function_Area_ID";
            ddlFunctionalArea.DataBind();
            ddlFunctionalArea.Items.Insert(0, "--Select--");
            con.Close();
        }

        private void carearlevel2()
        {
            con = new SqlConnection(connection);
            string query = @"SELECT [Career_Level_ID]
            ,[Career_Level]
             FROM [dbo].[Career_Level] where [Status]=1";
            cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            ddlCareerLevelFresh.DataSource = dr;
            ddlCareerLevelFresh.DataTextField = "Career_Level";
            ddlCareerLevelFresh.DataValueField = "Career_Level_ID";
            ddlCareerLevelFresh.DataBind();
            ddlCareerLevelFresh.Items.Insert(0, "--Select--");
            con.Close();
        }

        private void LoadFunctionArea()
        {
            con = new SqlConnection(connection);
            string query = @"SELECT [Function_Area_ID]
           ,[Func_Name]
            FROM [dbo].[Fuctional_Area] where [Status]=1";
            cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            ddlFunctionalFresh.DataSource = dr;
            ddlFunctionalFresh.DataTextField = "Func_Name";
            ddlFunctionalFresh.DataValueField = "Function_Area_ID";
            ddlFunctionalFresh.DataBind();
            ddlFunctionalFresh.Items.Insert(0, "---Select---");
            con.Close();
        }

        private void LoadAreaOfIntrest()
        {
            con = new SqlConnection(connection);
            string query = @"SELECT [Function_Area_ID]
           ,[Func_Name]
            FROM [dbo].[Fuctional_Area] where [Status]=1";
            cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            ddlAreaOfIntrst.DataSource = dr;
            ddlAreaOfIntrst.DataTextField = "Func_Name";
            ddlAreaOfIntrst.DataValueField = "Function_Area_ID";
            ddlAreaOfIntrst.DataBind();
            ddlAreaOfIntrst.Items.Insert(0, "Select");
            con.Close();
        }

        private void LoadCountry()
        {
            con = new SqlConnection(connection);
            string query = @"SELECT [Country_ID]
               ,[Country_Name]
                FROM [dbo].[Country] where [Status]=1";
            cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader red = cmd.ExecuteReader();
            ddlCounrty.DataSource = red;
            ddlCounrty.DataTextField = "Country_Name";
            ddlCounrty.DataValueField = "Country_ID";
            ddlCounrty.DataBind();
            ddlCounrty.Items.Insert(0, "Country");
            con.Close();
        }

        private void LoaddCarearlevel()
        {
            con = new SqlConnection(connection);
            string query = @"SELECT [Career_Level_ID]
             ,[Career_Level]
              FROM [dbo].[Career_Level] where [Status]=1";
            cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            ddlCarerLaevl.DataSource = rd;
            ddlCarerLaevl.DataTextField = "Career_Level";
            ddlCarerLaevl.DataValueField = "Career_Level_ID";
            ddlCarerLaevl.DataBind();
            ddlCarerLaevl.Items.Insert(0, "--SELECT---");
            con.Close();
        }

        private void LoadProfInd()
        {
            string query = @"SELECT [Profession_Ind_ID]
             ,[Pro_Name]
             FROM [dbo].[Professional_Industry] where [Status]=1";
            cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader reader1 = cmd.ExecuteReader();
            ddlProfessionalIndustry.DataSource = reader1;
            ddlProfessionalIndustry.DataTextField = "Pro_name";
            ddlProfessionalIndustry.DataValueField = "Profession_Ind_ID";
            ddlProfessionalIndustry.DataBind();
            ddlProfessionalIndustry.Items.Insert(0, "Select Prof Indest");
            con.Close();
        }

        private void LoadworkExp()
        {
            con = new SqlConnection(connection);
            string query = @"SELECT [Work_Exp_ID]
      ,[Name]
  FROM [dbo].[Work_Experience] where [Status]=1";
            cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            ddlWorkExp.DataSource = reader;
            ddlWorkExp.DataTextField = "Name";
            ddlWorkExp.DataValueField = "Work_Exp_ID";
            ddlWorkExp.DataBind();
            ddlWorkExp.Items.Insert(0, "Select Work Exp");
            con.Close();
        }

        protected void rdbyes_CheckedChanged(object sender, EventArgs e)
        {
            exp.Visible = true;
            fresh.Visible = false;

        }

        protected void rdbno_CheckedChanged(object sender, EventArgs e)
        {
            fresh.Visible = true;
            exp.Visible = false;

        }
        protected void ddlCounrty_SelectedIndexChanged(object sender, EventArgs e)
        {
            con = new SqlConnection(connection);
            string query = @"SELECT [City_ID]
                ,[City_Name]
                 FROM [dbo].[City] where [Status]=1 and [Country_ID]="+ddlCounrty.SelectedValue;
            cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader red = cmd.ExecuteReader();
            ddlCity.DataSource = red;
            ddlCity.DataTextField = "City_Name";
            ddlCity.DataValueField = "City_ID";
            ddlCity.DataBind();
            ddlCity.Items.Insert(0,"City");
            con.Close();

          }
        static int id;
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Session["Person_ID"].ToString());
              con = new SqlConnection(connection);
            string query = @"INSERT INTO [dbo].[Professional_Information]
           ([JobStartDate]
           ,[Work_Exp_ID]
           ,[Profession_Ind_ID]
           ,[Function_Area_ID]
           ,[Career_Level_ID]
           ,[Recent_Job]
           ,[From]
           ,[To]
           ,[Company_Name]
           ,[Country_ID]
           ,[City_ID]
           ,[status]
            ,[Person_ID])
     VALUES
           (@JobStartDate
           ,@Work_Exp_ID
           ,@Profession_Ind_ID
           ,@Function_Area_ID
           ,@Career_Level_ID
           ,@Recent_Job
           ,@From
           ,@To
           ,@Company_Name
           ,@Country_ID
           ,@City_ID
           ,@status
            ,@Person_ID)";
            cmd = new SqlCommand(query,con);
            cmd.Parameters.AddWithValue("@JobStartDate",txtDate.Text);
            cmd.Parameters.AddWithValue("@Work_Exp_ID", ddlWorkExp.SelectedValue);
            cmd.Parameters.AddWithValue("@Profession_Ind_ID",ddlProfessionalIndustry.SelectedValue);
            cmd.Parameters.AddWithValue("@Function_Area_ID",ddlFunctionalArea.SelectedValue);
            cmd.Parameters.AddWithValue("@Career_Level_ID",ddlCarerLaevl.SelectedValue);
            cmd.Parameters.AddWithValue("@Recent_Job",txtCurrentJob.Text);
            cmd.Parameters.AddWithValue("@From",txtDate.Text);
            cmd.Parameters.AddWithValue("@To",txtto.Text);
            cmd.Parameters.AddWithValue("@Company_Name",txtCompanyName.Text);
            cmd.Parameters.AddWithValue("@Country_ID",ddlCounrty.SelectedValue);
            cmd.Parameters.AddWithValue("@City_ID",ddlCity.SelectedValue);
            cmd.Parameters.AddWithValue("@status",true);
            cmd.Parameters.AddWithValue("@Person_ID", id);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

                lbl1.Text = "You Are Successfully register";
             // Response.Write("<script><alert>('Please enter valid Username and Password')</script>");

        }

        protected void btnsbmit_Click(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Session["Person_ID"].ToString());
            con = new SqlConnection(connection);
            string query = @"INSERT INTO [dbo].[Fresh]
           ([Area_INT_ID]
           ,[Function_Area_ID]
           ,[Career_Level_ID]
           ,[Person_ID])
     VALUES
           (@Area_INT_ID
           ,@Function_Area_ID
           ,@Career_Level_ID
           ,@Person_ID)";
            cmd = new SqlCommand(query,con);
            cmd.Parameters.AddWithValue("@Function_Area_ID",ddlFunctionalFresh.SelectedValue);
            cmd.Parameters.AddWithValue("@Career_Level_ID", ddlCareerLevelFresh.SelectedValue);
            cmd.Parameters.AddWithValue("@Area_INT_ID",ddlAreaOfIntrst.SelectedValue);
            cmd.Parameters.AddWithValue("@Person_ID", id);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }

    }
}