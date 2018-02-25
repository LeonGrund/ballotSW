using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void loginButton_Click(object sender, EventArgs e)
    {
        // check for existing email to verify user
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ballotConnectionString"].ConnectionString);
        conn.Open();
        string checkEmail = "select count(*) from voter where email='" + emailLoginTextBox.Text + "'";
        SqlCommand com = new SqlCommand(checkEmail, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();

        // user exists, email is in database
        if (temp == 1)
        {
            conn.Open();
            string checkPassword = "select password from voter where email='" + emailLoginTextBox.Text + "'";
            SqlCommand passComm = new SqlCommand(checkPassword, conn);
            string passwordDb = passComm.ExecuteScalar().ToString().Replace(" ",""); // password in database associated with login email
            conn.Close();

            if (passwordDb == passwordLoginTextBox.Text)
            {
                Session["New"] = emailLoginTextBox.Text;
                Response.Write("Login is successful");
                Response.Redirect("manager.aspx");
            }
            else
            {
                Response.Write("Email or password is not correct"); // login password not correct
            }
            
        }
        // email is not in database
        else
        {
            Response.Write("Email or password is not correct"); // login email not correct
        }
        
    }
}