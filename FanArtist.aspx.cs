using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FanArtist : System.Web.UI.Page
{
    VenueServiceReference.LoginRegisterServiceClient vsr = new VenueServiceReference.LoginRegisterServiceClient();
    ServiceReference1.ShowTrackerServiceClient sc = new ServiceReference1.ShowTrackerServiceClient();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["FanKey"] == null)
        {
            Response.Redirect("FanLogin.aspx");
        }
        if (!IsPostBack)
        {
            PopulateArtists();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        AddArtists();
    }

    protected void PopulateArtists()
    {
        //this method populates the CheckboxList
        //with artist names
        string[] artists = sc.GetArtists();
        FanArtistCheckBoxList.DataSource = artists;
        FanArtistCheckBoxList.DataBind();
    }

    protected void AddArtists()
    {
        //get the fan's key
        int key = (int)Session["Fankey"];

        //loop through the checkboxList
        //to see what's checked
        foreach (ListItem i in FanArtistCheckBoxList.Items)
        {
            //if it is checked call the service method to add
            //it to the database
            if (i.Selected)
            {
                int x = vsr.AddFanArtist(key, i.Text);
            }
        }
        errorLabel.Text = "Artist have been added";
        FanArtistCheckBoxList.Items.Clear();
    }
}