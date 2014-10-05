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

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Header.Title = "Login";
    }
  
    protected void Button1_Click(object sender, EventArgs e)
    {
        string user = TextBox1.Text;
        string pass = TextBox2.Text;
        account a = new account();
        int res = a.login(user,pass);
        if (res == 1)
        {
            Session["username"] = user;
            Server.Transfer("upload.aspx");           
        }
        else
        {
            Label3.Visible = true;
        }
    }
}
