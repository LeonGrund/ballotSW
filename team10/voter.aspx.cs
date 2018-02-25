using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class voter : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            voterWelcomeLabel.Text += Session["New"].ToString();
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