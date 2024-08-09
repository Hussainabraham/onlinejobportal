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
    public partial class Job_Details : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["JobPortalConnectionString"].ToString();
        SqlConnection con;
        SqlCommand cmd;
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
           id=Convert.ToInt32( Session["jobid"]);
            con = new SqlConnection(connection);
            string quer = @"SELECT [job_Name]
              ,company.Company_name
              ,City.City_Name
              ,[Start_Date]
              ,[Exp_Date]
          FROM [dbo].[jobs]
          inner join company on company.Company_id=jobs.Company_id
          inner join City on City.City_ID=jobs.City_ID
         where [job_id]="+id;
            cmd=new SqlCommand(quer,con);
            con.Open();
            SqlDataReader reder = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(reder);
            if (dt.Rows.Count == 0) return;
            {
                DataRow dr = dt.Rows[0];
                lbljbname.Text = dr["job_Name"].ToString();
                lblcmpnyname.Text = dr["Company_name"].ToString();
                lblcityname.Text = dr["City_Name"].ToString();
                lblstartdate.Text = dr["Start_Date"].ToString();
                lblexpdate.Text = dr["Exp_Date"].ToString();

            }
            con.Close();


        }

        protected void btnshow_Click(object sender, EventArgs e)
        {
            Response.Redirect("Academic Information.aspx");
        }
    }
}