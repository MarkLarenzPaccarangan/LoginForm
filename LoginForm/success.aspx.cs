using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace LoginForm
{
    public partial class success : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(Request.QueryString["username"]))
                {
                    string username = Request.QueryString["username"];
                    string name = GetNameByUsername(username);
                    if (!string.IsNullOrEmpty(name))
                    {
                        Label1.Text = "Welcome, " + name + "!";
                    }
                    else
                    {
                        Label1.Text = "Welcome!";
                    }
                }
            }
        }

      
        private string GetNameByUsername(string username)
        {

            string connectionString = "Data Source=LARENZ;Initial Catalog=userreg;Integrated Security=True;";
            string query = "SELECT [name] FROM [dbo].[regdbs] WHERE [username] = @Username";

            string name = "";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Username", username);
                    con.Open();
                    object result = cmd.ExecuteScalar();
                    if (result != null)
                    {
                        name = result.ToString();
                    }
                    con.Close();
                }
            }

            return name;
        }
    }
}