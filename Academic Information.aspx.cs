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
    public partial class Academic_Information : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["JobPortalConnectionString"].ToString();
        SqlConnection con;
        SqlCommand cmd1;
        protected void Page_Load(object sender, EventArgs e)
        {
 
            if (!Page.IsPostBack)
            {
                LoadCountry();
                LoadDeglevel();
                LoadDegTitle();
                LoadInstitution();
                LoadYear();
            
            }

            

        }

        private void LoadYear()
        {
            con = new SqlConnection(connection);
            string query = @"SELECT [Year_ID]
           ,[Year]
        FROM [dbo].[Year] where [Status]=1";
            cmd1=new SqlCommand(query,con);
            con.Open();
            SqlDataReader readr = cmd1.ExecuteReader();
            ddlYear.DataSource = readr;
            ddlYear.DataTextField = "Year";
            ddlYear.DataValueField = "Year_ID";
            ddlYear.DataBind();
            con.Close();
        }

        private void LoadInstitution()
        {
            con = new SqlConnection(connection);
            string query = @"SELECT [Institute_ID]
            ,[Institute_Name]
            FROM [dbo].[Institution] where [Status]=1";
            cmd1 = new SqlCommand(query,con);
            con.Open();
            SqlDataReader raeder = cmd1.ExecuteReader();
            ddlInst.DataSource = raeder;
            ddlInst.DataTextField = "Institute_Name";
            ddlInst.DataValueField = "Institute_ID";
            ddlInst.DataBind();
            ddlInst.Items.Insert(0, "---Select---");
            con.Close();
        }

        private void LoadCountry()
        {
            con = new SqlConnection(connection);
            string query=@"SELECT [Country_ID]
            ,[Country_Name]
             FROM [dbo].[Country] where [Status]=1";
            cmd1 = new SqlCommand(query, con);
            con.Open();
            SqlDataReader reader = cmd1.ExecuteReader();
            ddlCountry.DataSource = reader;
            ddlCountry.DataTextField = "Country_Name";
            ddlCountry.DataValueField = "Country_ID";
            ddlCountry.DataBind();
            ddlCountry.Items.Insert(0, "---Select---");
            con.Close();
        }

        private void LoadDegTitle()
        {
            con = new SqlConnection(connection);
            string query = @"SELECT [D_Title_ID]
      ,[Degree_Title]
  FROM [dbo].[Degree_Title] where [Status]=1";
            cmd1 = new SqlCommand(query, con);
            con.Open();
            SqlDataReader reader = cmd1.ExecuteReader();
            ddldeg_title.DataSource = reader;
            ddldeg_title.DataTextField = "Degree_Title";
            ddldeg_title.DataValueField = "D_Title_ID";
            ddldeg_title.DataBind();
            ddldeg_title.Items.Insert(0, "---Select---");
            con.Close();
        }

        private void LoadDeglevel()
        {
            con = new SqlConnection(connection);
            string query = @"SELECT [D_Level_ID]
            ,[Digree_Level]
            FROM [dbo].[Degree_Level] where [Status]=1";
            cmd1 = new SqlCommand(query, con);
            con.Open();
            SqlDataReader reader = cmd1.ExecuteReader();
            ddldeg_level.DataSource = reader;
            ddldeg_level.DataTextField = "Digree_Level";
            ddldeg_level.DataValueField = "D_Level_ID";
            ddldeg_level.DataBind();
            ddldeg_level.Items.Insert(0, "---Select---");
            con.Close();
        }

        protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            con = new SqlConnection(connection);
            string query = @"SELECT [City_ID]
            ,[City_Name]
            FROM [dbo].[City]  where [Status]=1 and Country_ID=" + ddlCountry.SelectedValue;
            cmd1 = new SqlCommand(query, con);
            con.Open();
            SqlDataReader reader = cmd1.ExecuteReader();
            ddlCity.DataSource = reader;
            ddlCity.DataTextField = "City_Name";
            ddlCity.DataValueField = "City_ID";
            ddlCity.DataBind();
            ddlCity.Items.Insert(0, "---Select---");
            con.Close();
        }
        static int id;
        protected void btnAdd_Click(object sender, EventArgs e)
        {

            id = Convert.ToInt32(Session["Person_ID"].ToString());
            con = new SqlConnection(connection);
            string query = @"INSERT INTO [dbo].[Accedmic_Information](
            [D_Level_ID]
           ,[D_Title_ID]
           ,[Major_subject]
           ,[Country_ID]
           ,[City_ID]
           ,[Institute_ID]
           ,[Year_ID]
           ,[status]
           ,[Person_ID])
     VALUES
           (@D_Level_ID
           ,@D_Title_ID
           ,@Major_subject
           ,@Country_ID
           ,@City_ID
           ,@Institute_ID
           ,@Year_ID
           ,@status
           ,@Person_ID)";
            cmd1 = new SqlCommand(query, con);
            cmd1.Parameters.AddWithValue("@D_Level_ID", ddldeg_level.SelectedValue);
            cmd1.Parameters.AddWithValue("@D_Title_ID", ddldeg_title.SelectedValue);
            cmd1.Parameters.AddWithValue("@Major_subject", txtmajor.Text);
            cmd1.Parameters.AddWithValue("@Country_ID", ddlCountry.SelectedValue);
            cmd1.Parameters.AddWithValue("@City_ID", ddlCity.SelectedValue);
            cmd1.Parameters.AddWithValue("@Institute_ID", ddlInst.SelectedValue);
            cmd1.Parameters.AddWithValue("@Year_ID", ddlYear.SelectedValue);
            cmd1.Parameters.AddWithValue("@status", true);
            cmd1.Parameters.AddWithValue("@Person_ID", id);
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();

            lblMsg.Text = "Accademic Succesfully inseted";
            ddlCity.SelectedValue = null;
            ddlCountry.SelectedValue = null;
            ddldeg_level.SelectedValue = null;
            ddldeg_title.SelectedValue = null;
            ddlInst.SelectedValue = null;
            ddlYear.SelectedValue = null;
          

            
        }

        protected void bntcontnue_Click(object sender, EventArgs e)
        {
            Response.Redirect("Professional Information.aspx");
        }
    }
}