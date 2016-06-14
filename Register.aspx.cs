using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        RegisterVenue();
    }

    protected void RegisterVenue()
    {
        VenueServiceReference.LoginRegisterServiceClient vsr = new VenueServiceReference.LoginRegisterServiceClient();

        VenueServiceReference.VenueData v= new VenueServiceReference.VenueData(); //the class we passed in the service
        v.VenueName = VNameTextBox.Text;
        v.VenueAddress = VAddressTextBox.Text;
        v.VenueCity = VCityTextBox.Text;
        v.VenueState= VStateTextBox.Text;
       v.VenueZipCode= VZipCodeTextBox.Text;
       v.VenuePhone= VPhoneTextBox.Text;
        v.VenueEmail= EmailTextBox.Text;
        v.VenueWebPage= WebPageTextBox.Text;
        v.VenueAgeRestriction= int.Parse(AgeRestrictionTextBox.Text);
        v.VenueLoginUserName= UNameTextBox.Text;
        v.VenueLoginPasswordPlain= PasswordTextBox.Text;

        bool result = vsr.VenueRegister(v);

        if (result)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
            ErrorLabel.Text = "Registration Failed";
        }
    }

}