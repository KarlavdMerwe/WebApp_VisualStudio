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
        string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
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
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("SELECT * FROM ImageData", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            gvImages.DataSource = dt;
            gvImages.DataBind();

        }
    }
}