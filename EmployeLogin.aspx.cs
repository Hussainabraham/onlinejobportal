using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;

namespace OnlineJobPortal
{
    public class Loginuser
    {
        public int EmployId;

    }
    public partial class EmployeLogin : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["JobPortalConnectionString"].ToString();
        SqlConnection con;
        SqlCommand cmd; 
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnsubmit_Click1(object sender, EventArgs e)
        {
            con = new SqlConnection(connection);
            string query = @"SELECT [Employ_id]
                    FROM [dbo].[Employer] where [Email]='" + txtusername.Text + "' and [Password]='" + txtpassword.Text + "'";
            cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            Loginuser ob = new Loginuser();
            while (dr.Read())
            {
                ob.EmployId = Convert.ToInt32(dr[0].ToString());
                Session["Employ_id"] = dr["Employ_id"].ToString();
                int id = Convert.ToInt32(Session["Employ_id"].ToString());
                Session["Record"] = ob;
                if (Session["Record"] != null)
                {
                    Response.Redirect("EmployeProfile.aspx");
                }
                else
                {
                    Response.Redirect("EmployeLogin.aspx");
                }

            }
            con.Close();

        }

        protected void btnemp_Click(object sender, EventArgs e)
        {
            Response.Redirect("Employee.aspx");
        }
    }
}