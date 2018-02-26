using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class voter : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ballotConnectionString"].ConnectionString);
            conn.Open();

            // find first name 
            string queryFirstName = "select firstName from voter where email='" + Session["New"].ToString() + "'";
            SqlCommand firstNameComm = new SqlCommand(queryFirstName, conn);
            string userFirstName = firstNameComm.ExecuteScalar().ToString().Replace(" ", "");

            conn.Close();

            voterWelcomeLabel.Text += userFirstName;
        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }

    protected void logoutButton_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("login.aspx");
    }
}