using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace OnlineJobPortal
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            Wiew();

        }

        private void Wiew()
        {
            con = new SqlConnection(@"Data Source=HIDAYA;Initial Catalog=JobPortal;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"SELECT * FROM Person_Information", con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            GridView1.DataSource = dr;
            GridView1.DataBind();
            con.Close();

            if (GridView1.Rows.Count > 0)
            {
                GridView1.HeaderRow.Cells[6].Visible = false;

                foreach (GridViewRow gvr in GridView1.Rows)
                {
                    Image img = gvr.FindControl("img") as Image;
                    img.ImageUrl = gvr.Cells[6].Text;
                    img.Height = 40;
                    img.Width = 40;
                    gvr.Cells[6].Visible = false;


                }

            }
        }


    }
}