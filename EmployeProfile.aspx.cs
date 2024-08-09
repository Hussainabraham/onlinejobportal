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
    public partial class EmployeProfile : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["JobPortalConnectionString"].ToString();
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //DDLloadcontry();
                //DDlCity();
            }

            DDlLoadData();
            



        }

        private void DDlLoadData()
        {
            txtname.Visible = false;
            ddlcountry.Visible = false;
            txtcmpny.Visible = false;
            ddlcity.Visible = false;

            lblname.Visible = true;
            lblwlcm.Visible = true;
            lblcountry.Visible = true;
            lblcompny.Visible = true;
            lblcity.Visible = true;

            Loginuser ob = (Loginuser)Session["Record"];
            if (Session["Record"] != null)
            {
                con = new SqlConnection(connection);
                string quryshow = @"SELECT [Employ_id]
                      ,[Company_name]
                      ,[First_name]
                      ,Country.Country_Name
                      ,City.City_Name
                  FROM [dbo].[Employer]
                  inner join Country on Country.Country_ID=Employer.Country_ID
                  inner join City on City.City_ID=Employer.City_ID
                    where [Employ_id]=" + ob.EmployId;
                cmd = new SqlCommand(quryshow, con);
                con.Open();
                SqlDataReader redrr = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(redrr);

                if (dt.Rows.Count == 0) return;
                {
                    DataRow dr = dt.Rows[0];
                    lblwlcm.Text = dr["First_name"].ToString();
                    lblname.Text = dr["First_name"].ToString();
                    lblcompny.Text = dr["Company_name"].ToString();
                    lblcountry.Text = dr["Country_Name"].ToString();
                    lblcity.Text = dr["City_Name"].ToString();


                }
                con.Close();

            }
            else
            {
                Response.Redirect("EmployeLogin.aspx");

            }
        }

        private void DDlCity()
        {
            con = new SqlConnection(connection);
            string querycity = @"SELECT [City_ID]
            ,[City_Name]
            FROM [dbo].[City] where [Status]=1";
            cmd = new SqlCommand(querycity, con);
            con.Open();
            SqlDataReader redrcity = cmd.ExecuteReader();
            ddlcity.DataSource = redrcity;
            ddlcity.DataTextField = "City_Name";
            ddlcity.DataValueField = "City_ID";
            ddlcity.DataBind();
            ddlcity.Items.Insert(0, "---Select---");
            con.Close();
        }

        private void DDLloadcontry()
        {
            con = new SqlConnection(connection);
            string querycontry = @"SELECT [Country_ID]
           ,[Country_Name]
             FROM [dbo].[Country] where [Status]=1";
            cmd = new SqlCommand(querycontry, con);
            con.Open();
            SqlDataReader redrcntry = cmd.ExecuteReader();
            ddlcountry.DataSource = redrcntry;
            ddlcountry.DataTextField = "Country_Name";
            ddlcountry.DataValueField = "Country_ID";
            ddlcountry.DataBind();
            ddlcountry.Items.Insert(0, "---Select---");
            con.Close();
        }

        protected void linkjob_Click(object sender, EventArgs e)
        {
            Response.Redirect("JobPost.aspx");
        }

        protected void btnout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("EmployeLogin.aspx");
        }

        protected void btnedit_Click(object sender, EventArgs e)
        {
            if (btnedit.Text == "Edit")
            {
                DDLloadcontry();
                DDlCity();

                txtname.Visible = true;
                ddlcountry.Visible = true;
                txtcmpny.Visible = true;
                ddlcity.Visible = true;

                lblname.Visible = false;
                lblcountry.Visible = false;
                lblcompny.Visible = false;
                lblcity.Visible = false;

                con = new SqlConnection(connection);
                Loginuser ob = (Loginuser)Session["Record"];
                string queryinsert = @"SELECT [Employ_id]
                      ,[Company_name]
                      ,[First_name]
                      ,Country.Country_Name
                      ,City.City_Name
                  FROM [dbo].[Employer]
                  inner join Country on Country.Country_ID=Employer.Country_ID
                  inner join City on City.City_ID=Employer.City_ID
                    where [Employ_id]=" + ob.EmployId;
                cmd = new SqlCommand(queryinsert, con);
                con.Open();
                SqlDataReader redsq = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(redsq);
                con.Close();
                if (dt.Rows.Count == 0) return;
                {
                    DataRow dr = dt.Rows[0];
                    lblname.Text = dr["First_name"].ToString();
                    lblcompny.Text = dr["Company_name"].ToString();
                    ddlcountry.Items.FindByText(dr["Country_Name"].ToString()).Selected = true;
                    ddlcity.Items.FindByText(dr["City_Name"].ToString()).Selected = true;

                    btnedit.Text = "Update";

                }




            }  // if statement
            else
            {
                con = new SqlConnection(connection);
                Loginuser ob = (Loginuser)Session["Record"];
                string queryupd = @"UPDATE [dbo].[Employer]
   SET [Company_name] ='" + txtcmpny.Text + "',[First_name] ='" + txtname.Text + "',[Country_ID] ='" + ddlcountry.SelectedValue + "',[City_ID] ='" + ddlcity.SelectedValue + "' WHERE [Employ_id]="+ob.EmployId;
                cmd = new SqlCommand(queryupd,con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                lblmsg.Text = "Updated Success";
                btnedit.Text = "Update";

                this.DDlLoadData();

            
            }

        }
    }
}