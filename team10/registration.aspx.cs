﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("Voter Registration Page");
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        Response.Clear();
        Response.Write("Your Registration is successful");
    }
}