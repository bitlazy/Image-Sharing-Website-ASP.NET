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

public partial class upload : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Header.Title = "Upload!";
     if (Session["username"] == null)
       {
     Server.Transfer("index.aspx");
       }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string title = TextBox1.Text;
        string tags = TextBox2.Text;
        string desc = TextBox3.Text;
        string cat = ListBox1.Text;
        string uploadedby = Session["username"].ToString();
        string fileName= Server.HtmlEncode(FileUpload1.FileName);// Get the name of the file to upload.
        string extension = System.IO.Path.GetExtension(fileName);// Get the extension of the uploaded file.
        if ((extension == ".jpg") || (extension == ".jpeg"))
        {
            upload_resources u = new upload_resources();
            fileName = Convert.ToString(u.countrows());

            string fullname = fileName + extension;
            FileUpload1.SaveAs(Server.MapPath("~//photo/" + fullname));

           
            string original_img_path = Server.MapPath("~//photo/") + fullname;
            string thumbnail_img_path = Server.MapPath("~//photo_thumbnail/") + fullname;

            thumbnail t = new thumbnail();
            t.generate_thumbnail(original_img_path, thumbnail_img_path);

            u.insertrow(title, tags, desc, cat,t.getheight(original_img_path),t.getwidth(original_img_path),extension,uploadedby);
            Server.Transfer("redirect_upload_success.aspx");
            Label8.Visible = false;
        }
        else 
        {
            Label8.Visible = true;
  
        }


         
    }

    
}
