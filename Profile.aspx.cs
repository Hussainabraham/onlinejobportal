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
    public partial class WebForm2 : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["JobPortalConnectionString"].ToString();
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //LoadGender();
                //LoadCityp();
                //LoadContryp();
            }

            con = new SqlConnection(connection);
            string query2 = @"SELECT [job_id] 
            ,[job_Name]
            ,company.Company_name
            ,City.City_Name
            ,[Start_Date]
            ,[Exp_Date]
            FROM [dbo].[jobs]
            inner join company on company.Company_id=jobs.Company_id
            inner join City on City.City_ID=jobs.City_ID";
            cmd = new SqlCommand(query2, con);
            con.Open();
            SqlDataReader redrrr=cmd.ExecuteReader();
            GridView2.DataSource=redrrr;
            GridView2.DataBind();
            con.Close();

            LoadData();
                
            }

        private void LoadData()
        {

            txtpname.Visible = false;
            txtpcast.Visible = false;
            txtpcnic.Visible = false;
            txtpdob.Visible = false;
            txtpmob.Visible = false;
            txtpadd.Visible = false;
            ddlpcity.Visible = false;
            ddlpcountry.Visible = false;
            ddlpgender.Visible = false;

            lblname.Visible = true;
            lblCaste.Visible = true;
            lblcity.Visible = true;
            lblcountry.Visible = true;
            lblDate.Visible = true;
            lblGnder.Visible = true;
            lblmobileno.Visible = true;
            lblnic.Visible = true;
            lblAdd.Visible = true;


            userlogin ob = (userlogin)Session["record"];
            if (Session["record"] != null)
            {


                con = new SqlConnection(connection);

                Image1.ImageUrl = "~/image/userimage1.gif";
                string inerjoinQuery = @"SELECT [Person_ID]
                                  ,[Name]
                                  ,[Caste]
                                  ,Gender.Gender
                                  ,[Dob]
                                  ,Country.Country_Name
                                  ,City.City_Name
                                  ,Nationnality.Nationality
                                  ,[Cnic]
                                  ,Mobile_no
                                  ,Address
                              FROM [dbo].[Person_Information]
                              inner join Gender on Gender.Gender_ID=Person_Information.Gender_ID
                              inner join Country on Country.Country_ID=Person_Information.Country_ID
                              inner join City on City.City_ID=Person_Information.City_ID
                              inner join Nationnality on Nationnality.Nation_ID= Person_Information.Nation_ID

							  where [Person_ID]= " + ob.PersonId;
               // con = new SqlConnection(connection);
                cmd = new SqlCommand(inerjoinQuery, con);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(reader);


                if (dt.Rows.Count == 0) return;
                {
                    DataRow dr = dt.Rows[0];
                    lblname0.Text = dr["Name"].ToString();
                    lblname.Text = dr["Name"].ToString();
                    lblCaste.Text = dr["Caste"].ToString();
                    lblnic.Text = dr["Cnic"].ToString();
                    lblGnder.Text = dr["Gender"].ToString();
                    lblcity.Text = dr["City_Name"].ToString();
                    lblcountry.Text = dr["Country_Name"].ToString();
                    lblmobileno.Text = dr["Mobile_no"].ToString();
                    lblAdd.Text = dr["Address"].ToString();
                    lblDate.Text = dr["Dob"].ToString();

                }
                con.Close();
            }

            else
            {

                Response.Redirect("Login.aspx");
            }




        }

        private void LoadContryp()
        {
            con = new SqlConnection(connection);
            string queryco = @"SELECT [Country_ID]
           ,[Country_Name]
             FROM [dbo].[Country] where [Status]=1";
            cmd = new SqlCommand(queryco, con);
            con.Open();
            SqlDataReader redercntry = cmd.ExecuteReader();
            ddlpcountry.DataSource = redercntry;
            ddlpcountry.DataTextField = "Country_Name";
            ddlpcountry.DataValueField = "Country_ID";
            ddlpcountry.DataBind();
            ddlpcountry.Items.Insert(0, "---select---");
            con.Close();
        }

        private void LoadCityp()
        {
            con = new SqlConnection(connection);
            string queryp1 = @"SELECT [City_ID]
            ,[City_Name]
            FROM [dbo].[City] where [Status]=1";
            cmd = new SqlCommand(queryp1, con);
            con.Open();
            SqlDataReader readerc = cmd.ExecuteReader();
            ddlpcity.DataSource = readerc;
            ddlpcity.DataTextField = "City_Name";
            ddlpcity.DataValueField = "City_ID";
            ddlpcity.DataBind();
            ddlpcity.Items.Insert(0, "---Select---");
            con.Close();
        }

        private void LoadGender()
        {
            con = new SqlConnection(connection);
            string queryP = @"SELECT [Gender_ID]
             ,[Gender]
             FROM [dbo].[Gender] where [Status]=1";
            cmd = new SqlCommand(queryP, con);
            con.Open();
            SqlDataReader red = cmd.ExecuteReader();
            ddlpgender.DataSource = red;
            ddlpgender.DataTextField = "Gender";
            ddlpgender.DataValueField = "Gender_ID";
            ddlpgender.DataBind();
            ddlpgender.Items.Insert(0, "---Select---");
            con.Close();
        } 
                

            
        protected void btnlogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();

            Response.Redirect("Home.aspx");
        }

        protected void btnedit_Click(object sender, EventArgs e)
        {

            if (btnedit.Text == "Edit")
            {
                LoadGender();
                LoadCityp();
                LoadContryp();

                txtpname.Visible = true;
                txtpcast.Visible = true;
                txtpcnic.Visible = true;
                txtpdob.Visible = true;
                txtpmob.Visible = true;
                txtpadd.Visible = true;
                ddlpcity.Visible = true;
                ddlpcountry.Visible = true;

                ddlpgender.Visible = true;
                lblname.Visible = false;
                lblCaste.Visible = false;
                lblcity.Visible = false;
                lblcountry.Visible = false;
                lblDate.Visible = false;
                lblGnder.Visible = false;
                lblmobileno.Visible = false;
                lblAdd.Visible = false;
                lblnic.Visible = false;

                con = new SqlConnection(connection);
                userlogin ob = (userlogin)Session["record"];
                string query3 = @"SELECT [Person_ID]
                                  ,[Name]
                                  ,[Caste]
                                  ,Gender.Gender
                                  ,[Dob]
                                  ,Country.Country_Name
                                  ,City.City_Name
                                  ,[Cnic]
                                  ,Mobile_no
                                  ,Address
                              FROM [dbo].[Person_Information]
                              inner join Gender on Gender.Gender_ID=Person_Information.Gender_ID
                              inner join Country on Country.Country_ID=Person_Information.Country_ID
                              inner join City on City.City_ID=Person_Information.City_ID
                              inner join Nationnality on Nationnality.Nation_ID= Person_Information.Nation_ID

							  where [Person_ID]=" + ob.PersonId;
                cmd = new SqlCommand(query3, con);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                DataTable dt = new DataTable();
                dt.Load(reader);
                con.Close();
                if (dt.Rows.Count == 0) return;
                {
                    DataRow dr = dt.Rows[0];
                    lblname.Text = dr["Name"].ToString();
                    lblCaste.Text = dr["Caste"].ToString();
                    ddlpgender.Items.FindByText(dr["Gender"].ToString()).Selected=true;
                    lblDate.Text = dr["Dob"].ToString();
                    ddlpcountry.Items.FindByText(dr["Country_Name"].ToString()).Selected = true;
                    ddlpcity.Items.FindByText(dr["City_Name"].ToString()).Selected = true;
                    lblnic.Text = dr["Cnic"].ToString();
                    lblmobileno.Text = dr["Mobile_no"].ToString();
                    lblAdd.Text = dr["Address"].ToString();

                    btnedit.Text = "Update";
                    
                
                }


            }
            else if(btnedit.Text=="Update")
            {
                con = new SqlConnection(connection);
                userlogin ob = (userlogin)Session["record"];
                cmd = new SqlCommand(@"UPDATE [dbo].[Person_Information]
                SET [Name] ='"+ txtpname.Text +"' ,[Caste] ='"+txtpcast.Text+"' ,[Gender_ID] ="+ddlpgender.SelectedValue+" ,[Dob] ='"+txtpdob.Text+"' ,[Country_ID] ="+ddlpcountry.SelectedValue+",[City_ID] ="+ddlpcity.SelectedValue+" ,[Cnic] ='"+txtpcnic.Text+"' ,[Mobile_no] = '"+txtpmob.Text+"',[Address] ='"+txtpadd.Text+"' WHERE  [Person_ID]="+ob.PersonId+"",con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                lblmsg.Text = "Data Updated";
                btnedit.Text = "Edit";

                this.LoadData();
            
            
            }

        }

        protected void btnshowacc_Click(object sender, EventArgs e)
        {
            if (Session["record"] != null)
            {
                Response.Redirect("ShowInfo.aspx");
            }
            else
            {
               
            }
        }

        protected void btnproff_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowProfInfo.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
//            con = new SqlConnection(connection);
//            string queryimage = @"INSERT INTO [dbo].[Person_Information]
//           ([Profile_pic])
//         VALUES
//           (@Profile_pic)";
//            cmd = new SqlCommand(queryimage,con);
//            cmd.Parameters.AddWithValue(@"Profile_pic",UplImage.SaveAs);
//               // cmd1.Parameters.AddWithValue("@D_Level_ID", ddldeg_level.SelectedValue);

            if (UplImage.HasFile)
            {

                string fileName = Path.GetFileName(UplImage.PostedFile.FileName);
                UplImage.PostedFile.SaveAs(Server.MapPath("~/image") + fileName);



            }


        }

        protected void btnsearcjob_Click(object sender, EventArgs e)
        {

            con = new SqlConnection(connection);
            cmd = new SqlCommand(@"SELECT [job_id]
            ,[job_Name]
            ,company.Company_name
            ,City.City_Name
            ,[Start_Date]
            ,[Exp_Date]
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

        protected void btnApply_Click1(object sender, EventArgs e)
        {

            //Response.Redirect("Academic Information.aspx");

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton link = sender as LinkButton;
            TableCell cell= link.Parent as TableCell;
            TableRow row= cell.Parent as TableRow;
            Session["jobid"]=row.Cells[1].Text;

            Response.Redirect("Job Details.aspx");


        } // button log

    }  // load
}