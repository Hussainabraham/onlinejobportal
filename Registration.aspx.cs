using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace OnlineJobPortal
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                expernce.Visible = true;
                fresh.Visible = false;
                RbtnYes.Checked = true;
                SqlConnection con = new SqlConnection("Data Source=HIDAYA\\SQLEXPRESS;Initial Catalog=JobPortal;Integrated Security=True");
                SqlCommand cmd1 = new SqlCommand("SELECT * FROM Country", con);
                con.Open();
                SqlDataReader reader = cmd1.ExecuteReader();
                ddlLoactionCountry.DataSource = reader;
                ddlLoactionCountry.DataTextField = "Country_Name";
                ddlLoactionCountry.DataValueField = "Country_ID";
                ddlLoactionCountry.DataBind();
                ddlLoactionCountry.Items.Insert(0, "--Select--");
                con.Close();


            }
            LoadAccount();
            LoadGender();
            LoadCountry();
            LoadNationnality();
            LoadGegreeLevel();
            LoadTitle();
            LoadInsitue();
            LoadYearCompletion();

   




        }

        private void LoadYearCompletion()
        {
            SqlConnection con = new SqlConnection("Data Source=HIDAYA\\SQLEXPRESS;Initial Catalog=JobPortal;Integrated Security=True");
            SqlCommand cmd1 = new SqlCommand("SELECT * FROM Year", con);
            con.Open();
            SqlDataReader reader = cmd1.ExecuteReader();
            ddlYear3.DataSource = reader;
            ddlYear3.DataTextField = "Year";
            ddlYear3.DataValueField = "Year_ID";
            ddlYear3.DataBind();
            ddlYear3.Items.Insert(0, "Year");
            con.Close();
        }

        private void LoadInsitue()
        {
            SqlConnection con = new SqlConnection("Data Source=HIDAYA\\SQLEXPRESS;Initial Catalog=JobPortal;Integrated Security=True");
            SqlCommand cmd1 = new SqlCommand("SELECT * FROM Institution", con);
            con.Open();
            SqlDataReader reader = cmd1.ExecuteReader();
            ddlInstute.DataSource = reader;
            ddlInstute.DataTextField = "Institute_Name";
            ddlInstute.DataValueField = "Institute_ID";
            ddlInstute.DataBind();
            ddlInstute.Items.Insert(0, "--Select--");
            con.Close();
        }

        private void LoadTitle()
        {
            SqlConnection con = new SqlConnection("Data Source=HIDAYA\\SQLEXPRESS;Initial Catalog=JobPortal;Integrated Security=True");
            SqlCommand cmd1 = new SqlCommand("SELECT * FROM Degree_Title", con);
            con.Open();
            SqlDataReader reader = cmd1.ExecuteReader();
            ddltilte.DataSource = reader;
            ddltilte.DataTextField = "Degree_Title";
            ddltilte.DataValueField = "D_Title_ID";
            ddltilte.DataBind();
            ddltilte.Items.Insert(0, "--Select--");
            con.Close();
        }

        private void LoadGegreeLevel()
        {
            SqlConnection con = new SqlConnection("Data Source=HIDAYA\\SQLEXPRESS;Initial Catalog=JobPortal;Integrated Security=True");
            SqlCommand cmd1 = new SqlCommand("SELECT * FROM Degree_Level", con);
            con.Open();
            SqlDataReader reader = cmd1.ExecuteReader();
            ddldegree.DataSource = reader;
            ddldegree.DataTextField = "Digree_Level";
            ddldegree.DataValueField = "D_Level_ID";
            ddldegree.DataBind();
            ddldegree.Items.Insert(0, "--Select--");
            con.Close();
        }

        private void LoadNationnality()
        {
            SqlConnection con = new SqlConnection("Data Source=HIDAYA\\SQLEXPRESS;Initial Catalog=JobPortal;Integrated Security=True");
            SqlCommand cmd1 = new SqlCommand("SELECT * FROM Nationnality", con);
            con.Open();
            SqlDataReader reader = cmd1.ExecuteReader();
            ddlNationality.DataSource = reader;
            ddlNationality.DataTextField = "Nationality";
            ddlNationality.DataValueField = "Nation_ID";
            ddlNationality.DataBind();
            ddlNationality.Items.Insert(0, "--Select--");
            con.Close();
        }

        private void LoadCountry()
        {
            SqlConnection con = new SqlConnection("Data Source=HIDAYA\\SQLEXPRESS;Initial Catalog=JobPortal;Integrated Security=True");
            SqlCommand cmd1 = new SqlCommand("SELECT * FROM Country", con);
            con.Open();
            SqlDataReader reader = cmd1.ExecuteReader();
            ddlCountry.DataSource = reader;
            ddlCountry.DataTextField = "Country_Name";
            ddlCountry.DataValueField = "Country_ID";
            ddlCountry.DataBind();
            ddlCountry.Items.Insert(0, "--Select--");
            con.Close();
        }

 

        private void LoadGender()
        {
            
            SqlConnection con = new SqlConnection("Data Source=HIDAYA\\SQLEXPRESS;Initial Catalog=JobPortal;Integrated Security=True");
            SqlCommand cmd1 = new SqlCommand("SELECT * FROM Gender ", con);
            con.Open();
            SqlDataReader reader = cmd1.ExecuteReader();
            ddlgender.DataSource = reader;
            ddlgender.DataTextField = "Gender";
            ddlgender.DataValueField = "Gender_ID";
            ddlgender.DataBind();
            ddlgender.Items.Insert(0, "--Select--");
            con.Close();
        }

        private void LoadAccount()
        {
            SqlConnection con = new SqlConnection("Data Source=HIDAYA\\SQLEXPRESS;Initial Catalog=JobPortal;Integrated Security=True");
            SqlCommand cmd1 = new SqlCommand("SELECT [Account_type_ID],[Account_type],[Status],[Description]FROM [dbo].[Account_Type]", con);
            con.Open();
            SqlDataReader reader = cmd1.ExecuteReader();
            ddlAccountType.DataSource = reader;
            ddlAccountType.DataTextField = "Account_type";
            ddlAccountType.DataValueField = "Account_type_ID";
            ddlAccountType.DataBind();
            ddlAccountType.Items.Insert(0, "--Select--");
            con.Close();
        }
            
        
        //Data Source=HIDAYA\SQLEXPRESS;Initial Catalog=JobPortal;Integrated Security=True
        protected void Yes_CheckedChanged(object sender, EventArgs e)
        {
            expernce.Visible = true;
            fresh.Visible = false;
        }

        protected void No_CheckedChanged(object sender, EventArgs e)
        {
            expernce.Visible = false;
            fresh.Visible = true;

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
        }

        protected void ddlLoactionCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection("Data Source=HIDAYA\\SQLEXPRESS;Initial Catalog=JobPortal;Integrated Security=True");
                SqlCommand cmd1 = new SqlCommand("SELECT * FROM City  WHERE Country_ID="+ ddlLoactionCountry.SelectedValue, con);
                con.Open();
                SqlDataReader reader = cmd1.ExecuteReader();
                ddlCityLoctaion.DataSource = reader;
                ddlCityLoctaion.DataTextField = "City_Name";
                ddlCityLoctaion.DataValueField = "City_ID";
                ddlCityLoctaion.DataBind();
                ddlCityLoctaion.Items.Insert(0, "--Select--");
                con.Close();
            }
            catch(Exception exe) 
            {

                Label1.Text = exe.Message;
            }
        }
    }
}