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
    public partial class Freash : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["JobPortalConnectionString2"].ToString();
        SqlConnection con;
        SqlCommand cmd;
        static int id;
        protected void Page_Load(object sender, EventArgs e)
        {

            //if (!Page.IsPostBack)
            //{
            //    FreshLoadAOI();
            //    FreashLoadFa();
            //    LaodCarrerLevel();
            //}




            LoadData();






        }

        private void LoadData()
        {
            ddlaoi.Visible = false;
            ddlfar.Visible = false;
            ddlcarl.Visible = false;

            lblfnctio.Visible = true;
            lblcartearlvl.Visible = true;
            lblareaofintrest.Visible = true;


            con = new SqlConnection(connection);
            string query = @"SELECT [Fresh_id]
              ,Area_OF_Intrst.Area_Of_Intrest
              ,Fuctional_Area.Func_Name
              ,Career_Level.Career_Level
          FROM [dbo].[Fresh]
          inner join Area_OF_Intrst on Area_OF_Intrst.Area_INT_ID=Fresh.Area_INT_ID
          inner join Fuctional_Area on Fuctional_Area.Function_Area_ID=Fresh.Function_Area_ID
          inner join Career_Level on Career_Level.Career_Level_ID=Fresh.Function_Area_ID";


            con = new SqlConnection(connection);
            cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(reader);

            if (dt.Rows.Count == 0) return;
            {
                DataRow dr = dt.Rows[0];
                lblareaofintrest.Text = dr["Area_Of_Intrest"].ToString();
                lblfnctio.Text = dr["Func_Name"].ToString();
                lblcartearlvl.Text = dr["Career_Level"].ToString();


            }
            con.Close();
        }

        private void LaodCarrerLevel()
        {

            con = new SqlConnection(connection);
            string queryCl = @"SELECT [Career_Level_ID]
            ,[Career_Level]
             FROM [dbo].[Career_Level] where [Status]=1";
            cmd = new SqlCommand(queryCl, con);
            con.Open();
            SqlDataReader CLV = cmd.ExecuteReader();
            ddlcarl.DataSource = CLV;
            ddlcarl.DataTextField = "Career_Level";
            ddlcarl.DataValueField = "Career_Level_ID";
            ddlcarl.DataBind();
            ddlcarl.Items.Insert(0, "---Select---");
            con.Close();
        }

        private void FreashLoadFa()
        {
            con = new SqlConnection(connection);
            string queryF = @"SELECT [Function_Area_ID]
            ,[Func_Name]
             FROM [dbo].[Fuctional_Area] where [Status]=1";
            cmd = new SqlCommand(queryF, con);
            con.Open();
            SqlDataReader read1 = cmd.ExecuteReader();
            ddlfar.DataSource = read1;
            ddlfar.DataTextField = "Func_Name";
            ddlfar.DataValueField = "Function_Area_ID";
            ddlfar.DataBind();
            ddlfar.Items.Insert(0, "---Select---");
            con.Close();
        }

        private void FreshLoadAOI()
        {
            con = new SqlConnection(connection);
            string querys = @"SELECT [Area_INT_ID]
           ,[Area_Of_Intrest]
             FROM [dbo].[Area_OF_Intrst] where [Status]=1";
            cmd = new SqlCommand(querys, con);
            con.Open();
            SqlDataReader dr2 = cmd.ExecuteReader();
            ddlaoi.DataSource = dr2;
            ddlaoi.DataTextField = "Area_Of_Intrest";
            ddlaoi.DataValueField = "Area_INT_ID";
            ddlaoi.DataBind();
            ddlaoi.Items.Insert(0, "---Select---");
            con.Close();
        }

        protected void btneditFrsh_Click(object sender, EventArgs e)
        {
                  //id = Convert.ToInt32(Session["Person_ID"].ToString());
                        if (btneditFrsh.Text =="Edit")
                        {
                            FreshLoadAOI();
                            FreashLoadFa();
                            LaodCarrerLevel();
                            ddlaoi.Visible = true;
                            ddlfar.Visible = true;
                            ddlcarl.Visible = true;

                            lblareaofintrest.Visible = false;
                            lblfnctio.Visible = false;
                            lblcartearlvl.Visible = false;
                            con = new SqlConnection(connection);
                            string query = @"SELECT [Fresh_id]
                          ,Area_OF_Intrst.Area_Of_Intrest
                          ,Fuctional_Area.Func_Name
                          ,Career_Level.Career_Level
                      FROM [dbo].[Fresh]
                      inner join Area_OF_Intrst on Area_OF_Intrst.Area_INT_ID=Fresh.Area_INT_ID
                      inner join Fuctional_Area on Fuctional_Area.Function_Area_ID=Fresh.Function_Area_ID
                      inner join Career_Level on Career_Level.Career_Level_ID=Fresh.Function_Area_ID where Person_ID="+7;


                            con = new SqlConnection(connection);
                            cmd = new SqlCommand(query, con);
                            con.Open();
                            SqlDataReader reader = cmd.ExecuteReader();
                            DataTable dt = new DataTable();
                            dt.Load(reader);
                            con.Close();
                            if (dt.Rows.Count == 0) return;
                            {
                                DataRow dr = dt.Rows[0];
                                ddlaoi.Items.FindByText(dr["Area_Of_Intrest"].ToString()).Selected = true;
                                ddlcarl.Items.FindByText(dr["Career_Level"].ToString()).Selected = true;
                                ddlfar.Items.FindByText(dr["Func_Name"].ToString()).Selected = true;

                                btneditFrsh.Text = "Update";
                            }
            }
            else if(btneditFrsh.Text=="Update")
            {
            con=new SqlConnection(connection);
                cmd=new SqlCommand(@"UPDATE [dbo].[Fresh]
                       SET [Area_INT_ID] ="+ddlaoi.SelectedValue+" ,[Function_Area_ID] ="+ddlcarl.SelectedValue+" ,[Career_Level_ID] ="+ddlfar.SelectedValue+" WHERE [Person_ID]="+7+"",con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                lblmsg.Text="DataSuccesfully Updated";
                btneditFrsh.Text = "Edit";

                this.LoadData();
            
            }
                
            
            }
        
    }
}