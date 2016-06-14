using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Artist : System.Web.UI.Page
{
    VenueServiceReference.LoginRegisterServiceClient vsr = new VenueServiceReference.LoginRegisterServiceClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserKey"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }

    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        VenueServiceReference.Artist a = new VenueServiceReference.Artist();
     
        a.ArtistEmail = EmailTextBox.Text;
        a.ArtistName = ANameTextBox.Text;
        a.ArtistWebPage = WebPageTextBox.Text;

        
        bool result =vsr.AddArtist(a);
        if (result)
        {
            ErrorLabel.Text = "artist added";
        }
        else
        {
            ErrorLabel.Text = "Registration Failed";
        }
    }

}