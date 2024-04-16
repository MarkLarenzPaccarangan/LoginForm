using System;
using System.Data.SqlClient;

namespace LoginForm
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = Text1.Text;
            string password = Password1.Text;

            using (SqlConnection con = new SqlConnection("Data Source=larenz;Initial Catalog=userreg;Integrated Security=True;"))
            {
                string query = "SELECT COUNT(*) FROM [dbo].[registration] WHERE username = @Username AND password = @Password";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Username", username);
                    cmd.Parameters.AddWithValue("@Password", password);

                    con.Open();

                    int count = (int)cmd.ExecuteScalar();

                    con.Close();

                    if (count > 0)
                    {
                        Response.Redirect("success.aspx?username=" + username);
                    }
                    else
                    {
                        Label3.Text = "Invalid username or password.";
                    }
                }
            }
        }
    }
}
