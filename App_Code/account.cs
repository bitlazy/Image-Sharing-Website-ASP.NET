using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Data.SqlClient;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for createaccount
/// </summary>
public class account
    {
     
  
	public int createaccount(string user,string pass,string email,string country,string gender,string sec_question,string sec_answer)
    {
        string str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlConnection connect = new SqlConnection(str);
        connect.Open();
        try
        {
            SqlCommand cmd = new SqlCommand("insert into users values(@user,@pass,@email,@country,@gender,@active,@question,@answer,@joindate)", connect);
            cmd.Parameters.Add(new SqlParameter("@user", user));
            cmd.Parameters.Add(new SqlParameter("@pass", pass));
            cmd.Parameters.Add(new SqlParameter("@email", email));
            cmd.Parameters.Add(new SqlParameter("@country", country));
            cmd.Parameters.Add(new SqlParameter("@gender", gender));
            cmd.Parameters.Add(new SqlParameter("@active",1));
            cmd.Parameters.Add(new SqlParameter("@question", sec_question));
            cmd.Parameters.Add(new SqlParameter("@answer", sec_answer));
            cmd.Parameters.Add(new SqlParameter("@joindate", DateTime.Now));
            int res = cmd.ExecuteNonQuery();
            return res;
           
        }
        catch (Exception)
        {
            int res = 0;
            return res;
           
        }
       
    }
   public int login(string loginuser, string loginpass)
    {
        string str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlConnection connect = new SqlConnection(str);
        connect.Open();
        SqlCommand cmd2 = new SqlCommand("select active from users where username='" + loginuser + "' and password='" + loginpass + "'", connect);
        int res = Convert.ToInt32(cmd2.ExecuteScalar());
        return res;
 }

}
