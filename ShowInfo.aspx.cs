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
   
    public partial class Registeration : System.Web.UI.Page
    {

        string connection = ConfigurationManager.ConnectionStrings["JobPortalConnectionString"].ToString();
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!Page.IsPostBack)
            {
                //Selectdlevel();
                //DegTitle();
                //ShowContry();
                //Loadshowcity();
                //ddlshowinstitute();
                //loadShowyear();
            }

            LoadData1();
        }

        private void LoadData1()
        {
            ddlsowdlevel.Visible = false;
            ddlshowdegtitle.Visible = false;
            ddlshowloc.Visible = false;
            ddlshowcity.Visible = false;
            ddlInstitution.Visible = false;
            ddlshowcomyear.Visible = false;
            txtsub.Visible = false;


            con = new SqlConnection(connection);
            string query1 = @"SELECT Degree_Level.Digree_Level
      ,Degree_Title.Degree_Title
      ,[Major_subject]
      ,Country.Country_Name
      ,City.City_Name
      ,Institution.Institute_Name
      ,Year.Year
  FROM [dbo].[Accedmic_Information]
  inner join Degree_Level on Degree_Level.D_Level_ID=Accedmic_Information.D_Level_ID
  inner join Degree_Title on Degree_Title.D_Title_ID=Accedmic_Information.D_Title_ID
  inner join Country on Country.Country_ID=Accedmic_Information.Country_ID
  inner join City on City.City_ID=Accedmic_Information.City_ID
  inner join Institution on Institution.Institute_ID=Accedmic_Information.Institute_ID
  inner join Year on Year.Year_ID=Accedmic_Information.Year_ID";
            con = new SqlConnection(connection);
            cmd = new SqlCommand(query1, con);
            con.Open();
            SqlDataReader reader1 = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(reader1);
            if (dt.Rows.Count == 0) return;
            {
                DataRow dr = dt.Rows[0];
                lbldegl.Text = dr["Digree_Level"].ToString();
                lbldegT.Text = dr["Degree_Title"].ToString();
                lblMsub.Text = dr["Major_subject"].ToString();
                lblcontry.Text = dr["Country_Name"].ToString();
                lblcity.Text = dr["City_Name"].ToString();
                lblIsti.Text = dr["Institute_Name"].ToString();
                lblyear.Text = dr["Year"].ToString();

            }
            con.Close();
        }

        private void loadShowyear()
        {
            con = new SqlConnection(connection);
            string queryyear = @"SELECT [Year_ID]
           ,[Year]
            FROM [dbo].[Year] where [Status]=1";
            cmd = new SqlCommand(queryyear, con);
            con.Open();
            SqlDataReader year = cmd.ExecuteReader();
            ddlshowcomyear.DataSource = year;
            ddlshowcomyear.DataTextField = "Year";
            ddlshowcomyear.DataValueField = "Year_ID";
            ddlshowcomyear.DataBind();
            ddlshowcomyear.Items.Insert(0, "---select---");
            con.Close();
        }

        private void ddlshowinstitute()
        {
            con = new SqlConnection(connection);
            string queryin = @"SELECT [Institute_ID]
            ,[Institute_Name]
             FROM [dbo].[Institution] where [Status]=1";
            cmd = new SqlCommand(queryin, con);
            con.Open();
            SqlDataReader inst = cmd.ExecuteReader();
            ddlInstitution.DataSource = inst;
            ddlInstitution.DataTextField = "Institute_Name";
            ddlInstitution.DataValueField = "Institute_ID";
            ddlInstitution.DataBind();
            ddlInstitution.Items.Insert(0, "---Select---");
            con.Close();
        }

        private void Loadshowcity()
        {
            con = new SqlConnection(connection);
            string querycity = @"SELECT [City_ID]
            ,[City_Name]
             FROM [dbo].[City] where [Status]=1";
            cmd = new SqlCommand(querycity, con);
            con.Open();
            SqlDataReader city = cmd.ExecuteReader();
            ddlshowcity.DataSource = city;
            ddlshowcity.DataTextField = "City_Name";
            ddlshowcity.DataValueField = "City_ID";
            ddlshowcity.DataBind();
            ddlshowcity.Items.Insert(0, "---Select---");
            con.Close();
        }

        private void ShowContry()
        {
            con = new SqlConnection(connection);
            string queryc = @"SELECT [Country_ID]
           ,[Country_Name]
             FROM [dbo].[Country] where [Status]=1";
            cmd = new SqlCommand(queryc, con);
            con.Open();
            SqlDataReader contry = cmd.ExecuteReader();
            ddlshowloc.DataSource = contry;
            ddlshowloc.DataTextField = "Country_Name";
            ddlshowloc.DataValueField = "Country_ID";
            ddlshowloc.DataBind();
            ddlshowloc.Items.Insert(0, "---Select---");
            con.Close();
        }

        private void DegTitle()
        {
            con = new SqlConnection(connection);
            string queryT = @"SELECT [D_Title_ID]
            ,[Degree_Title]
             FROM [dbo].[Degree_Title] where [Status]=1";
            cmd = new SqlCommand(queryT, con);
            con.Open();
            SqlDataReader raedr1 = cmd.ExecuteReader();
            ddlshowdegtitle.DataSource = raedr1;
            ddlshowdegtitle.DataTextField = "Degree_Title";
            ddlshowdegtitle.DataValueField = "D_Title_ID";
            ddlshowdegtitle.DataBind();
            ddlshowdegtitle.Items.Insert(0, "---Select---");
            con.Close();
        }

        private void Selectdlevel()
        {
            con = new SqlConnection(connection);
            string query = @"SELECT [D_Level_ID]
            ,[Digree_Level]
             FROM [dbo].[Degree_Level] where [Status]=1";
            cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            ddlsowdlevel.DataSource = reader;
            ddlsowdlevel.DataTextField = "Digree_Level";
            ddlsowdlevel.DataValueField = "D_Level_ID";
            ddlsowdlevel.DataBind();
            ddlsowdlevel.Items.Insert(0, "---Select--");
            con.Close();
        }
        static int id;
        protected void btnedit_Click(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Session["Person_ID"].ToString());
            if (btnedit.Text == "Edit")
            {

                Selectdlevel();
                DegTitle();
                ShowContry();
                Loadshowcity();
                ddlshowinstitute();
                loadShowyear();

                ddlsowdlevel.Visible = true;
                ddlshowdegtitle.Visible = true;
                ddlshowloc.Visible = true;
                ddlshowcity.Visible = true;
                ddlInstitution.Visible = true;
                ddlshowcomyear.Visible = true;
                txtsub.Visible = true;


                lbldegl.Visible = false;
                lbldegT.Visible = false;
                lblMsub.Visible = false;
                lblcontry.Visible = false;
                lblcity.Visible = false;
                lblIsti.Visible = false;
                lblyear.Visible = false;

                con = new SqlConnection(connection);
                           string queryedit = @"SELECT [Accadmic_ID]
                          ,Degree_Level.Digree_Level
                          ,Degree_Title.Degree_Title
                          ,[Major_subject]
                          ,Country.Country_Name
                          ,City.City_Name
                          ,Institution.Institute_Name
                          ,Year.Year
                      FROM [dbo].[Accedmic_Information]
                      inner join Degree_Level on Degree_Level.D_Level_ID=Accedmic_Information.D_Level_ID
                      inner join Degree_Title on Degree_Title.D_Title_ID=Accedmic_Information.D_Level_ID
                      inner join Country on Country.Country_ID=Accedmic_Information.Country_ID
                      inner join City on City.City_ID=Accedmic_Information.City_ID
                      inner join Institution on Institution.Institute_ID=Accedmic_Information.Institute_ID
                      inner join Year on Year.Year_ID=Accedmic_Information.Year_ID
                         where [Person_ID]=" + id;
                cmd = new SqlCommand(queryedit,con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(dr);
                con.Close();
                if(dt.Rows.Count==0) return;
                {
                   DataRow drw=dt.Rows[0];
                   ddlsowdlevel.Items.FindByText(drw["Digree_Level"].ToString()).Selected = true;
                   ddlshowdegtitle.Items.FindByText(drw["Degree_Title"].ToString()).Selected = true;
                   txtsub.Text = drw["Major_subject"].ToString();
                    ddlshowloc.Items.FindByText(drw["Country_Name"].ToString()).Selected = true;
                    ddlshowcity.Items.FindByText(drw["City_Name"].ToString()).Selected = true;
                    ddlInstitution.Items.FindByText(drw["Institute_Name"].ToString()).Selected = true;
                    ddlshowcomyear.Items.FindByText(drw["Year"].ToString()).Selected = true;

                    btnedit.Text = "Update";
                    
                }
            }
                else if(btnedit.Text=="Update")
            {
                con = new SqlConnection(connection);
                cmd = new SqlCommand(@"UPDATE [dbo].[Accedmic_Information]
                SET [D_Level_ID] = '"+ddlsowdlevel.Text+"',[D_Title_ID] ='"+ddlshowdegtitle.Text+"' ,[Major_subject] ='"+txtsub.Text+"' ,[Country_ID] ='"+ddlshowloc.Text+"' ,[City_ID] ='"+ddlshowcity.Text+"' ,[Institute_ID] ='"+ddlInstitution.Text+"' ,[Year_ID] ='"+ddlshowcomyear.Text+"' WHERE [Person_ID] ="+id, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                lblMsg.Text = "Updated success fully";

                btnedit.Text = "Edit";

                this.LoadData1();
                
                }


            }
    }
}