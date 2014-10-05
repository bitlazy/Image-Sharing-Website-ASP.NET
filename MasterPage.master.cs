using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.Header.Title == "Welome!")
            Label1.Text = "Welcome !...";
        else if(Page.Header.Title == "Create Your Account!")
            Label1.Text = "Create Your Account...";
        else if (Page.Header.Title == "Login")
            Label1.Text = "Please Login...";
        else if (Page.Header.Title == "Logout")
            Label1.Text = "Are you sure you want to Logout?...";
        else if (Page.Header.Title == "Upload!")
            Label1.Text = "Upload a Picture here...";


        if (Session["username"] == null)
        {
            LinkButton4.Visible = false;
            LinkButton3.Visible = false;
            LinkButton2.Visible = false;
        }
    }


}
