using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddShow : System.Web.UI.Page
{
    VenueServiceReference.LoginRegisterServiceClient vsr = new VenueServiceReference.LoginRegisterServiceClient();
    ServiceReference1.ShowTrackerServiceClient s = new ServiceReference1.ShowTrackerServiceClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserKey"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        if (!IsPostBack)
        {
            ArtistDropDownList.DataSource = s.GetArtists();
            ArtistDropDownList.DataBind();
        }
       
    }

    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        AddNewShow();
    }

   protected void ArtistDropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        

    }

    protected void AddArtistButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Artist.aspx");
    }

    protected void AddNewShow()
    {
        
        VenueServiceReference.Show s = new VenueServiceReference.Show();
       int venueKey = (int)Session["UserKey"];

        s.ShowName = ShowNameTextBox.Text;
       
        s.ShowDate = DateTime.Parse(DateTextBox.Text);
        s.ShowTicketInfo = TicketTextBox.Text;
        s.ShowTime = TimeSpan.Parse(TimeTextBox.Text);
       s.VenueKey = venueKey;

        VenueServiceReference.ShowDetail sd = new VenueServiceReference.ShowDetail();
        
        sd.ShowDetailAdditional = DetailsTextBox.Text;
        sd.ShowDetailArtistStartTime = TimeSpan.Parse(StartTimeTextBox.Text);

        bool result;
        result=vsr.AddShow(s, sd);

        if (result)
        {
            ErrorLabel.Text = "Registration Succeeded";
        }
        else
        {
            ErrorLabel.Text = "Registration Failed";
        }




    }

   
   
}