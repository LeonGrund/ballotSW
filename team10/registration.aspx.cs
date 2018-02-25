using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if(IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ballotConnectionString"].ConnectionString);
            conn.Open();
            // check for unique user SSN in 'voter' table
            string checkSSN = "select count(*) from voter where ssn='" + ssnTextBox + "'";
            SqlCommand com = new SqlCommand(checkSSN, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if(temp == 1)
            {
                Response.Write("Voter already registered");
            }
            conn.Close();
        }
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        try
        {   
            // add new user to 'voter' table
            Guid newGUID = Guid.NewGuid();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ballotConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into voter (Id, firstName,lastName,ssn,email,password,country) values (@id, @fName, @lName, @ssn, @email, @password, @country)";

            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@id", newGUID.ToString());
            com.Parameters.AddWithValue("@fName", firstNameTextBox.Text);
            com.Parameters.AddWithValue("@lName", lastNameTextBox.Text);
            com.Parameters.AddWithValue("@ssn", ssnTextBox.Text);
            com.Parameters.AddWithValue("@email", emailTextBox.Text);
            com.Parameters.AddWithValue("@password", passwordTextBox.Text);
            com.Parameters.AddWithValue("@country", countryList.SelectedItem.ToString());

            com.ExecuteNonQuery();
            Response.Redirect("manager.aspx");
            Response.Write("Registration is successful");

            conn.Close();
        }
        catch(Exception err)
        {
            Response.Write("Error: " + err.ToString());
        }
    }
}