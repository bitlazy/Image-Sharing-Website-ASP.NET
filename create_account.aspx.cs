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

public partial class create_account : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Header.Title = "Create Your Account!";
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string user= TextBox1.Text;
        string pass= TextBox2.Text;
        string email= TextBox4.Text;
        string country=TextBox5.Text;
        string sec_question = DropDownList1.Text;
        string sec_answer = TextBox6.Text;
        string gender;
        if(RadioButton2.Checked==true)
        {
            gender="Female";
        }
        else
        {
        gender="Male";
        }

        account a = new account();
        int i = a.createaccount(user, pass, email, country, gender,sec_question,sec_answer);
        if (i == 1)
        {
           Label9.Text="Account Created Successfully!";
           Label9.Visible = true;
           Label8.Visible = false;
        }
        else {
            Label8.Text = "Username/Email Already in use!Please use another!";
            Label8.Visible = true;
            Label9.Visible = false;
        }
        
        
    }
  
}
