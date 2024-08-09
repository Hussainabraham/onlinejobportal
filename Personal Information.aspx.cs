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
    public partial class Personal_Information : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["JobPortalConnectionString"].ToString();
        SqlConnection con;
        SqlCommand cmd;
         
        protected void Page_Load(object sender, EventArgs e)
        {
           

            if (!Page.IsPostBack)
            {
                LoadGender();
                LoadCountry();
                LoadNationality();
            }

        }

                // -------------Load Nationality----------
        private void LoadNationality()
        {
            con = new SqlConnection(connection);
            cmd = new SqlCommand(@"SELECT * FROM Nationnality", con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            ddlNationality.DataSource = reader;
            ddlNationality.DataTextField = "Nationality";
            ddlNationality.DataValueField = "Nation_ID";
            ddlNationality.DataBind();
            ddlNationality.Items.Insert(0, "---Select---");
            con.Close();
        }

                // ------Load Country--------
          private void LoadCountry()
            {
                con = new SqlConnection(connection);

                string query = @"SELECT [Country_ID]
                      ,[Country_Name]
                  FROM [dbo].[Country] where [Status]=1";
                cmd = new SqlCommand(query, con);
                 con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            ddlCountry.DataSource = reader;
            ddlCountry.DataTextField = "Country_Name";
            ddlCountry.DataValueField = "Country_ID";
            ddlCountry.DataBind();
            ddlCountry.Items.Insert(0,"---Select---");
            con.Close();
            }

        // -----------Load Gender-------------
        private void LoadGender()
        {
            con = new SqlConnection(connection);
            string query = @"SELECT [Gender_ID]
             ,[Gender]
             FROM [dbo].[Gender] where [Status]=1";
            cmd = new SqlCommand(query,con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            ddlGender.DataSource = reader;
            ddlGender.DataTextField = "Gender";
            ddlGender.DataValueField = "Gender_ID";
            ddlGender.DataBind();
            ddlGender.Items.Insert(0, "---Select---");
            con.Close();
        }

       

        protected void ddlCountry_SelectedIndexChanged1(object sender, EventArgs e)
        {
            // ----------loading Cities---------.
            con = new SqlConnection(connection);
            string query = @"SELECT [City_ID]
           ,[City_Name]
           ,[Country_ID]
           FROM [dbo].[City] where [Status]=1 and Country_ID="+ddlCountry.SelectedValue;
            cmd = new SqlCommand(query,con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            ddlCity.DataSource = reader;
            ddlCity.DataTextField = "City_Name";
            ddlCity.DataValueField = "City_ID";
            ddlCity.DataBind();
            ddlCity.Items.Insert(0, "---Select---");
            con.Close();

            // ----------Loading  country codes----------. 

            string queryq = @"SELECT [Country_Code_ID]
            ,[Code]
            ,[Country_ID]
            FROM [dbo].[Country_Code] where [Status]=1 and Country_ID="+ddlCountry.SelectedValue;
            cmd = new SqlCommand(queryq,con);
            con.Open();
            SqlDataReader reade = cmd.ExecuteReader();
            ddlCountryCode.DataSource = reade;
            ddlCountryCode.DataTextField = "Code";
            ddlCountryCode.DataValueField = "Country_Code_ID";
            ddlCountryCode.DataBind();
           // ddlCountryCode.Items.Insert(0, "---Select---");
            con.Close();

            //-------- Loading Network Codes----------

            string query2 = @"SELECT [Mobile_Com_ID]
      ,[M_Code]
      ,[Country_ID]
        FROM [dbo].[Mobile_Com_Code] where [Status]=1 and Country_ID="+ddlCountry.SelectedValue;
            cmd = new SqlCommand(query2,con);
            con.Open();
            SqlDataReader read = cmd.ExecuteReader();
            ddlMoblieCompanyCode.DataSource = read;
            ddlMoblieCompanyCode.DataTextField = "M_Code";
            ddlMoblieCompanyCode.DataValueField = "Mobile_Com_ID";
            ddlMoblieCompanyCode.DataBind();
            ddlMoblieCompanyCode.Items.Insert(0,"---Select---");
            con.Close();

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(connection);
            string query = @"INSERT INTO [dbo].[Person_Information]
           ([Name]
           ,[Caste]
           ,[Email]
           ,[Password]
           ,[Gender_ID]
           ,[Dob]
           ,[Country_ID]
           ,[City_ID]
           ,[Nation_ID]
           ,[Cnic]
           ,[Mobile_no]
           ,[Address]
           ,[Status])
     VALUES
           (@Name
           ,@Caste
           ,@Email
           ,@Password
           ,@Gender_ID
           ,@Dob
           ,@Country_ID
           ,@City_ID 
           ,@Nation_ID
           ,@Cnic
           ,@Mobile_no
           ,@Address
           ,@Status)";

                cmd = new SqlCommand(query, con);
            con.Open();
                cmd.Parameters.AddWithValue("@Name", txtName.Text);
                cmd.Parameters.AddWithValue("@Caste", txtCaste.Text);
                cmd.Parameters.AddWithValue("@Email",txtemail.Text);
                cmd.Parameters.AddWithValue("@Password",txtpwd.Text);
                cmd.Parameters.AddWithValue("@Gender_ID", ddlGender.SelectedValue);
                cmd.Parameters.AddWithValue("@Dob", txtDate.Text);
                cmd.Parameters.AddWithValue("@Country_ID", ddlCountry.SelectedValue);
                cmd.Parameters.AddWithValue("@City_ID", ddlCity.SelectedValue);
                cmd.Parameters.AddWithValue("@Nation_ID", ddlNationality.SelectedValue);
                cmd.Parameters.AddWithValue("@Cnic", txtCnic.Text);
                cmd.Parameters.AddWithValue("@Mobile_no", ddlCountryCode.SelectedValue + ddlMoblieCompanyCode.SelectedValue + txtNumber.Text);
                cmd.Parameters.AddWithValue("@Address",txtadd.Text);
                cmd.Parameters.AddWithValue("@Status", true);
                cmd.ExecuteNonQuery();
                con.Close();

                lblmsgg.Text = "You are Regitered Succesfully..!";
                txtName.Text = "";
                txtNumber.Text = "";
                txtpwd.Text = "";
                txtemail.Text = "";
                txtDate.Text = "";
                txtCnic.Text = "";
                txtadd.Text = "";
                ddlCity.SelectedValue = null;
                ddlCountry.SelectedValue = null;
                ddlCountryCode.SelectedValue = null;
                ddlGender.SelectedValue = null;
                ddlMoblieCompanyCode.SelectedValue = null;
                ddlNationality.SelectedValue = null;
           

               // Response.Redirect("Academic Information.aspx");
            }

        protected void bnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
        }
    }