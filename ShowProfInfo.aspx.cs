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
    public partial class ShowProfInfo : System.Web.UI.Page
    {

        string connection = ConfigurationManager.ConnectionStrings["JobPortalConnectionString"].ToString();
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
            //Showworkexp();
            //ShowFunctionA();
            //Showcarear();
            //showPcntry();
            //LoadShowcity();
            }

            PageLoadData();
        }

        private void PageLoadData()
        {
            ddlworkexp.Visible = false;
            ddlfunctionarea.Visible = false;
            ddlcarearLevel.Visible = false;
            ddlshowcity.Visible = false;
            ddlshowcontry.Visible = false;
            txtcompname.Visible = false;

            lblcarearlevel.Visible =true;
            lblFunctionArea.Visible =true;
            lblworkexp.Visible = true;
            lblcontry.Visible = true;
            lblcityname.Visible = true;
            lblcompname.Visible = true;



            con = new SqlConnection(connection);
            string query = @"SELECT Work_Experience.Name
	                         ,Fuctional_Area.Func_Name
                             ,Career_Level.Career_Level
                             ,Country.Country_Name
                             ,City.City_Name
                            ,[Company_Name]
                            FROM [dbo].[Professional_Information]
                             inner join Work_Experience on Work_Experience.Work_Exp_ID=Professional_Information.Work_Exp_ID
                             inner join Fuctional_Area on Fuctional_Area.Function_Area_ID=Professional_Information.Function_Area_ID
                             inner join Career_Level on Career_Level.Career_Level_ID=Professional_Information.Career_Level_ID
                             inner join Country on Country.Country_ID = Professional_Information.Country_ID
                             inner join City on City.City_ID= Professional_Information.City_ID";
            con = new SqlConnection(connection);
            cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(reader);

            if (dt.Rows.Count == 0) return;
            {
                DataRow dr = dt.Rows[0];
                lblworkexp.Text = dr["Name"].ToString();
                lblFunctionArea.Text = dr["Func_Name"].ToString();
                lblcarearlevel.Text = dr["Career_Level"].ToString();
                lblcompname.Text = dr["Company_Name"].ToString();
                lblcontry.Text = dr["Country_Name"].ToString();
                lblcityname.Text = dr["City_Name"].ToString();

            }
            con.Close();
        }

        private void LoadShowcity()
        {
            con = new SqlConnection(connection);
            string queryP = @"SELECT [City_ID]
            ,[City_Name]
             FROM [dbo].[City] where [Status]=1";
            cmd = new SqlCommand(queryP, con);
            con.Open();
            SqlDataReader readerp = cmd.ExecuteReader();
            ddlshowcity.DataSource = readerp;
            ddlshowcity.DataTextField = "City_Name";
            ddlshowcity.DataValueField = "City_ID";
            ddlshowcity.DataBind();
            ddlshowcity.Items.Insert(0, "---Select---");
            con.Close();
        }

        private void showPcntry()
        {
            con = new SqlConnection(connection);
            string querycontry = @"SELECT [Country_ID]
             ,[Country_Name]
             FROM [dbo].[Country] where [Status]=1";
            cmd = new SqlCommand(querycontry, con);
            con.Open();
            SqlDataReader cntry = cmd.ExecuteReader();
            ddlshowcontry.DataSource = cntry;
            ddlshowcontry.DataTextField = "Country_Name";
            ddlshowcontry.DataValueField = "Country_ID";
            ddlshowcontry.DataBind();
            ddlshowcontry.Items.Insert(0, "---Select---");
            con.Close();
        }

        private void Showcarear()
        {
            con = new SqlConnection(connection);
            string querycar = @"SELECT [Career_Level_ID]
             ,[Career_Level]
             FROM [dbo].[Career_Level] where [Status]=1";
            cmd = new SqlCommand(querycar, con);
            con.Open();
            SqlDataReader carear = cmd.ExecuteReader();
            ddlcarearLevel.DataSource = carear;
            ddlcarearLevel.DataTextField = "Career_Level";
            ddlcarearLevel.DataValueField = "Career_Level_ID";
            ddlcarearLevel.DataBind();
            ddlcarearLevel.Items.Insert(0, "---select---");
            con.Close();
        }

        private void ShowFunctionA()
        {

            con = new SqlConnection(connection);
            string queryF = @"SELECT [Function_Area_ID]
           ,[Func_Name]
             FROM [dbo].[Fuctional_Area] where [Status]=1";
            cmd = new SqlCommand(queryF, con);
            con.Open();
            SqlDataReader function = cmd.ExecuteReader();
            ddlfunctionarea.DataSource = function;
            ddlfunctionarea.DataTextField = "Func_Name";
            ddlfunctionarea.DataValueField = "Function_Area_ID";
            ddlfunctionarea.DataBind();
            ddlfunctionarea.Items.Insert(0,"---Select---");
            con.Close();
        }

        private void Showworkexp()
        {
            con = new SqlConnection(connection);
            string queryW = @"SELECT [Work_Exp_ID]
            ,[Name]
             FROM [dbo].[Work_Experience] where [Status]=1";
            cmd = new SqlCommand(queryW, con);
            con.Open();
            SqlDataReader Workexp = cmd.ExecuteReader();
            ddlworkexp.DataSource = Workexp;
            ddlworkexp.DataTextField = "Name";
            ddlworkexp.DataValueField = "Work_Exp_ID";
            ddlworkexp.DataBind();
            ddlworkexp.Items.Insert(0, "---select---");
            con.Close();
        }
        static int id;
        protected void brnedit_Click(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Session["Person_ID"].ToString());
            if (brnedit.Text =="Edit")
            {
                Showworkexp();
                ShowFunctionA();
                Showcarear();
                showPcntry();
                LoadShowcity();

                ddlworkexp.Visible = true;
                ddlfunctionarea.Visible = true;
                ddlcarearLevel.Visible = true;
                ddlshowcity.Visible = true;
                ddlshowcontry.Visible = true;
                txtcompname.Visible = true;

                lblcarearlevel.Visible = false;
                lblFunctionArea.Visible = false;
                lblworkexp.Visible = false;
                lblcontry.Visible = false;
                lblcityname.Visible = false;
                lblcompname.Visible = false;

                con = new SqlConnection(connection);
                string queryup = @"SELECT [Profession_ID]
      ,Work_Experience.Name
      ,Fuctional_Area.Func_Name
      ,Career_Level.Career_Level
      ,[Company_Name]
      ,Country.Country_Name
      ,City.City_Name
  FROM [dbo].[Professional_Information]
  inner join Work_Experience on Work_Experience.Work_Exp_ID=Professional_Information.Work_Exp_ID
  inner join Fuctional_Area on Fuctional_Area.Function_Area_ID=Professional_Information.Function_Area_ID
  inner join Career_Level on Career_Level.Career_Level_ID=Professional_Information.Career_Level_ID
  inner join Country on Country.Country_ID=Professional_Information.Country_ID
  inner join City on City.City_ID=Professional_Information.City_ID
        where [Person_ID]="+id;
                cmd = new SqlCommand(queryup, con);
                con.Open();
                SqlDataReader redu = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(redu);
                con.Close();
                if (dt.Rows.Count == 0) return;
                {
                    DataRow drow=dt.Rows[0];
                   ddlworkexp.Items.FindByText(drow["Name"].ToString()).Selected=true;
                   ddlfunctionarea.Items.FindByText(drow["Func_Name"].ToString()).Selected = true;
                   ddlcarearLevel.Items.FindByText(drow["Career_Level"].ToString()).Selected = true;
                   txtcompname.Text=drow["Company_Name"].ToString();
                   ddlshowcontry.Items.FindByText(drow["Country_Name"].ToString()).Selected = true;
                   ddlshowcity.Items.FindByText(drow["City_Name"].ToString()).Selected = true;

                   brnedit.Text = "Update";

                
                }


            } // close if condition

            else if(brnedit.Text=="Update")
            {
                con = new SqlConnection(connection);
                string queryupd = @"UPDATE [dbo].[Professional_Information]
   SET [Work_Exp_ID] ='" + ddlworkexp.Text + "',[Function_Area_ID] ='" + ddlfunctionarea.Text + "' ,[Career_Level_ID] ='" + ddlcarearLevel.Text + "',[Company_Name] ='" + txtcompname.Text + "' ,[Country_ID] ='" + ddlshowcontry.Text + "' ,[City_ID] ='" + ddlshowcity.Text + "' WHERE [Person_ID]="+id;
                cmd = new SqlCommand(queryupd,con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                lblmsg.Text = "Updated Success Fully";

                brnedit.Text = "Edit";

                this.PageLoadData();
            
            
            }

        }
    }
}