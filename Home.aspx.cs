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
    public partial class Home : System.Web.UI.Page
    {

        string connection = ConfigurationManager.ConnectionStrings["JobPortalConnectionString"].ToString();
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

//            con = new SqlConnection(connection);
//            string queryload = @"SELECT [job_Name]
//      ,company.Company_name
//      ,City.City_Name
//      ,[Start_Date]
//      ,[Exp_Date]
//  FROM [dbo].[jobs]
//  inner join company on company.Company_id=jobs.Company_id
//  inner join City on City.City_ID=jobs.City_ID";
//            con.Open();
//            cmd = new SqlCommand(queryload, con);
//            SqlDataReader readrr = cmd.ExecuteReader();
//            GridView2.DataSource = readrr;
//            GridView2.DataBind();
//            con.Close();

          

        }
        protected void btnlink_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void btnreg_Click(object sender, EventArgs e)
        {
            Response.Redirect("Personal Information.aspx");
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(connection);
            cmd = new SqlCommand(@"SELECT [job_Name]
            ,company.Company_name
            ,City.City_Name
            FROM [dbo].[jobs]
            inner join company on company.Company_id=jobs.Company_id
            inner join City on City.City_ID=jobs.City_ID
            where [job_Name] like '" + TextBox1.Text + "%'", con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            con.Close();
        }

        protected void btnaply_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnemployer_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmployeLogin.aspx");
        }

    }
}