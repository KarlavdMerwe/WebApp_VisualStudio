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
    public partial class Share : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Images.aspx");
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            byte[] bytes;
            using (BinaryReader br = new BinaryReader(files.PostedFile.InputStream))
            {
                bytes = br.ReadBytes(files.PostedFile.ContentLength);
            }
            string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(constr))
            {
                string sql = "INSERT INTO ImageData VALUES(@Caption, @Date, @Location, @CapturedBy, @ImageData, @Name )";
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@Caption", txtCaption.Text.Trim());
                    cmd.Parameters.AddWithValue("@Date", txtDate.Text.Trim());
                    cmd.Parameters.AddWithValue("@Location", txtLocation.Text.Trim());
                    cmd.Parameters.AddWithValue("@CapturedBy", txtCaptured.Text.Trim());
                    cmd.Parameters.AddWithValue("@ImageData", bytes);
                    cmd.Parameters.AddWithValue("@Name", Path.GetFileName(files.PostedFile.FileName));
                    
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }

            Response.Redirect("Images.aspx");
        }
    }
}