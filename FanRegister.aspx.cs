using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FanRegister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        RegisterFan();
    }

    protected void RegisterFan()
    {
        VenueServiceReference.LoginRegisterServiceClient vsr = new VenueServiceReference.LoginRegisterServiceClient();

       

        bool result = vsr.FanRegister(FNameTextBox.Text, EmailTextBox.Text, UNameTextBox.Text, PasswordTextBox.Text);
     
        if (result)
        {
            Response.Redirect("FanLogin.aspx");
        }
        else
        {
            ErrorLabel.Text = "Registration Failed";
        }
    }

}