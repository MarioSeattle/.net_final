using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {
        Login();
    }

    protected void Login()
    {
        VenueServiceReference.LoginRegisterServiceClient vsr = new VenueServiceReference.LoginRegisterServiceClient();

        int key = vsr.LoginVenue(UserTextBox.Text, PasswordTextBox.Text);
        if (key != 0)
        {
            Session["UserKey"] = key;
            Response.Redirect("AddShow.aspx");
        }
        else
        {
            ErrorLabel.Text = "Invalid Login";
        }


    }


    protected void RegisterLink_Click(object sender, EventArgs e)
    {

    }
}