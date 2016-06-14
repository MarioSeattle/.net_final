using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home : System.Web.UI.Page
{
    ServiceReference1.ShowTrackerServiceClient bsc = new ServiceReference1.ShowTrackerServiceClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillShowDropDown();
            FillVenueDropDown();
            FillArtistDropDown();
        }
    }

    
  

    protected void FillShowDropDown()
    {
        string[] shows = bsc.GetShows();
        ShowDropDownList.DataSource = shows;
        ShowDropDownList.DataBind();
    }

    protected void FillVenueDropDown()
    {
        string[] venues = bsc.GetVenues();
        VenueDropDownList.DataSource = venues;
        VenueDropDownList.DataBind();
    }

    protected void FillArtistDropDown()
    {
        string[] artists = bsc.GetArtists();
        ArtistDropDownList.DataSource = artists;
        ArtistDropDownList.DataBind();
    }

    protected void ShowButtonArtist_Click(object sender, EventArgs e)
    {
        string artist = ArtistDropDownList.SelectedItem.Text;
        ServiceReference1.ShowInfo[] shows = bsc.GetShowByArtist(artist);
        ShowGridView.DataSource = shows;
        ShowGridView.DataBind();
    }

    protected void ShowButtonVenue_Click(object sender, EventArgs e)
    {
        string venue = VenueDropDownList.SelectedItem.Text;
        ServiceReference1.ShowInfo[] shows = bsc.GetShowByVenue(venue);
        ShowGridView.DataSource = shows;
        ShowGridView.DataBind();
    }
}