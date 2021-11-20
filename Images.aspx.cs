using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace WebApp_31614949
{
    public partial class Images : System.Web.UI.Page
    {
        //Initialize connection string
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //fill the gridview with database table elements
            if (!this.IsPostBack)
            {
                using (SqlConnection conn = new SqlConnection(constr))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM ImageData", conn))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        gvImages.DataSource = dt;
                        gvImages.DataBind();
                    }
                }
            }
        }

        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            //Add image to data table
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView dr = (DataRowView)e.Row.DataItem;
                if (dr.Row.Table.Columns.Contains("image"))
                {
                    if (dr["image"] != DBNull.Value)
                    {
                        string imageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["image"]);
                        (e.Row.FindControl("Image1") as Image).ImageUrl = imageUrl;
                    }
                }
            
            }
        }
    

        protected void btnShare_Click(object sender, EventArgs e)
        {
            Response.Redirect("Share.aspx");
        }

        protected void gvImages_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButtonEdit_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButtonDelete_Click(object sender, EventArgs e)
        {
            //Delete database row
            SqlConnection con = new SqlConnection(constr);

            int rowindex = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            int imageId = Convert.ToInt32(gvImages.Rows[rowindex].Cells[0].Text);

            con.Open();
            SqlCommand cmd = new SqlCommand("DELETE ImageData WHERE ImageID='" + imageId + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();

            // ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Succesfully Deleted');", true);
            LoadData();
        }

        void LoadData()
        {
            //Reload the data
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("SELECT * FROM ImageData", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvImages.DataSource = dt;
            gvImages.DataBind();

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            //Clear the contents of the textboxes
            txtID.Text = "";
            txtCaption.Text = "";
            txtLocation.Text = "";
            txtCaptured.Text = "";
        }

        protected void btnEdit_Click1(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(constr))
            {
                //Edit and save the new data retrieved from textboxes to database
                string sql = "UPDATE ImageData SET Caption = @Caption, Location = @Location, CapturedBy = @CapturedBy WHERE ImageID = @ImageID";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@ImageID", txtID.Text.Trim());
                    cmd.Parameters.AddWithValue("@Caption", txtCaption.Text.Trim());
                    cmd.Parameters.AddWithValue("@Location", txtLocation.Text.Trim());
                    cmd.Parameters.AddWithValue("@CapturedBy", txtCaptured.Text.Trim());

                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }
            //Reload the page
            Response.Redirect(Request.RawUrl);
        }
        
        protected void LinkButtonDownload_Click1(object sender, EventArgs e)
        {
            //Download Image
            int id = int.Parse((sender as LinkButton).CommandArgument);
            byte[] bytes;
            string fileName;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "SELECT ImageData, Name from ImageData where ImageID=@ImageID";
                    cmd.Parameters.AddWithValue("@ImageID", id);
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        sdr.Read();
                        bytes = (byte[])sdr["ImageData"];
                        fileName = sdr["Name"].ToString();
                    }
                    con.Close();
                }
            }
            Response.Clear();
            Response.Buffer = true;
            Response.Charset = "";
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);
            Response.BinaryWrite(bytes);
            Response.Flush();
            Response.End();
        }
    }
}