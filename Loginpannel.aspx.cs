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
    public partial class WebForm2 : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["JobPortalConnectionString"].ToString();
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            Image2.ImageUrl = "~/image/userimage1.gif";
            string inerjoinQuery = @"SELECT [Person_ID]
                                  ,[Name]
                                  ,[Caste]
                                  ,Gender.Gender
                                  ,[Dob]
                                  ,Country.Country_Name
                                  ,City.City_Name
                                  ,Nationnality.Nationality
     
                              FROM [dbo].[Person_Information]
                              inner join Gender on Gender.Gender_ID=Person_Information.Gender_ID
                              inner join Country on Country.Country_ID=Person_Information.Country_ID
                              inner join City on City.City_ID=Person_Information.City_ID
                              inner join Nationnality on Nationnality.Nation_ID= Person_Information.Nation_ID";
            con = new SqlConnection(connection);
            cmd = new SqlCommand(inerjoinQuery, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
           GridView1.DataSource = reader;
            GridView1.DataBind();
            DataTable dt = new DataTable();
            dt.Load(reader);
            con.Close();

            if (dt.Rows.Count == 0) return;
            {
                DataRow dr = dt.Rows[0];
                Label1.Text = dr["Name"].ToString();
                Label2.Text = dr["Caste"].ToString();
                
            }

        }
       
    }
}