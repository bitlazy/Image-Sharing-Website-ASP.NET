using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
//SELECT COUNT(*) FROM imginfo
/// <summary>
/// Summary description for upload
/// </summary>
public class upload_resources
{
    public int countrows()
    {
        string str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlConnection connect = new SqlConnection(str);
        connect.Open();
        SqlCommand cmd = new SqlCommand("SELECT top 1 name from imginfo order by name desc", connect);
        int count = Convert.ToInt32(cmd.ExecuteScalar());
        count = count + 1;
        return count;
    }
    public void insertrow(string title,string tags,string desc,string cat,int height,int width,string ext,string uploadedby)
    {
        string str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlConnection connect = new SqlConnection(str);
        connect.Open();
        SqlCommand cmd = new SqlCommand("insert into imginfo values(@title,@tags,@desc,@cat,@height,@width,@ext,@date,@uploadedby)", connect);
        cmd.Parameters.Add(new SqlParameter("@title", title));
        cmd.Parameters.Add(new SqlParameter("@tags", tags));
        cmd.Parameters.Add(new SqlParameter("@desc", desc));
        cmd.Parameters.Add(new SqlParameter("@cat", cat));
        cmd.Parameters.Add(new SqlParameter("@height", height));
        cmd.Parameters.Add(new SqlParameter("@width", width));
        cmd.Parameters.Add(new SqlParameter("@ext", ext));
        cmd.Parameters.Add(new SqlParameter("@date", DateTime.Now));
        cmd.Parameters.Add(new SqlParameter("@uploadedby", uploadedby));
        cmd.ExecuteNonQuery();
    }
}
