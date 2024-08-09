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
    public class userlogin
    {
        public int PersonId;
        public string email;
        public string pwd;
    }
    public partial class Login : System.Web.UI.Page
    {
        string connection = ConfigurationManager.ConnectionStrings["JobPortalConnectionString"].ToString();
        SqlConnection con;
        SqlCommand cmd;  

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(connection);
            //btnProfile.Visible = false;
            //btnAcadmic.Visible = false;
            //btnrofessinla.Visible = false;
                  
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(connection);
            string query = @"SELECT  Person_ID 
            FROM [dbo].[Person_Information] where [Email]='" + txtusername.Text + "' and [Password]='" + txtpassword.Text + "'";
            cmd= new SqlCommand(query,con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            userlogin ob = new userlogin();
            while (dr.Read())
            {



                ob.PersonId =Convert.ToInt32( dr[0].ToString());
                  
                Session["Person_ID"]=dr["Person_ID"].ToString();
                int id = Convert.ToInt32(Session["Person_ID"]);
                    Session["record"] = ob;
                    if(Session["record"] != null)
                    {
                        lbllogin.Text = "You Are Login";
                        //btnProfile.Visible = true;                       
                        //btnAcadmic.Visible = true;
                        //btnrofessinla.Visible = true;
                    Response.Redirect("~/Profile.aspx", true);
                    
                    }
                        
                    else
                    {
                       // Response.Write("<script><alert>('Please enter valid Username and Password')</script>");       

                    Response.Redirect("Login.aspx");
                    //Label1.Text = "User is blocked by admin";
                    }
                }
            con.Close();


        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (Session["record"] == null)
            {
                Response.Redirect("Personal Information.aspx");
            }
            else
            {
                lbllogin.Text = "Login First";
            }
        }

        protected void btnAcadmic_Click(object sender, EventArgs e)
        {
            if (Session["record"] != null)
            {
                Response.Redirect("Academic Information.aspx");
            }
            else
            {
                lbllogin.Text = "Login First";
            }
        }

        protected void btnrofessinla_Click(object sender, EventArgs e)
        {
            if (Session["record"] != null)
            {
                Response.Redirect("Professional Information.aspx");
            }
            else
            {
                lbllogin.Text = "Login First";
            }
        }

        protected void btnProfile_Click(object sender, EventArgs e)
        {
          
            if (Session["record"] != null)
            {
                
                 Response.Redirect("~/Profile.aspx", true);

            }

            else
            {
                lbllogin.Text = "Login First";
            }
        }

    }
}