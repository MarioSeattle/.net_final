using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FanLogin : System.Web.UI.Page
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

        int key = vsr.LoginFan(UserTextBox.Text, PasswordTextBox.Text);
        if (key != 0)
        {
            Session["FanKey"] = key;
            Response.Redirect("FanArtist.aspx");
        }
        else
        {
            ErrorLabel.Text = "Invalid Login";
        }
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
}