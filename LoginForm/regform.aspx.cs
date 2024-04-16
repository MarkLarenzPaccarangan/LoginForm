using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace LoginForm
{
    public partial class regform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            if (string.IsNullOrEmpty(txtName.Text) || string.IsNullOrEmpty(txtAdd.Text) ||
                string.IsNullOrEmpty(txtUser.Text) || string.IsNullOrEmpty(txtPass.Text))
            {
                Response.Write("<script>alert('Invalid!! Please try again')</script>");
                return; 
            }

          
            SqlConnection con = new SqlConnection("Data Source=larenz;Initial Catalog=userreg;Integrated Security=True;");
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[registration]
            ([name]
            ,[address]
            ,[username]
            ,[password])
               VALUES
                ('" + txtName.Text + "','" + txtAdd.Text + "','" + txtUser.Text + "','" + txtPass.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('User is registered successfully!!')</script>");
        }
    }
}
