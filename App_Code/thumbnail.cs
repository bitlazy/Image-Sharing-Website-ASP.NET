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
using System.Drawing;

/// <summary>
/// Automatic thumbnail generation code
/// Thanks to http://www.aspdotnetcodes.com/Asp.Net_Dynamic_Thumbnail_Creation.aspx
/// </summary>
public class thumbnail
{
    public Size NewImageSize(int OriginalHeight, int OriginalWidth, double FormatSize)
    {
        Size NewSize;
        double tempval;

        if (OriginalHeight > FormatSize && OriginalWidth > FormatSize)
        {
            if (OriginalHeight > OriginalWidth)
                tempval = FormatSize / Convert.ToDouble(OriginalHeight);
            else
                tempval = FormatSize / Convert.ToDouble(OriginalWidth);

            NewSize = new Size(Convert.ToInt32(tempval * OriginalWidth), Convert.ToInt32(tempval * OriginalHeight));
        }
        else
            NewSize = new Size(OriginalWidth, OriginalHeight); 
        
        return NewSize;
    }
   
    public void generate_thumbnail(string original_img_path,string thumbnail_img_path)
    {
        
        using (System.Drawing.Image Img =
        System.Drawing.Image.FromFile(original_img_path))
      
        {
            Size ThumbNailSize = NewImageSize(Img.Height, Img.Width, 150);

            using (System.Drawing.Image ImgThnail =
                new Bitmap(Img, ThumbNailSize.Width, ThumbNailSize.Height))
            {
                ImgThnail.Save(thumbnail_img_path, Img.RawFormat);
                ImgThnail.Dispose();
            }
            Img.Dispose();
        }
    }
    public int getheight(string original_img_path)
    {
        using (System.Drawing.Image Img =
        System.Drawing.Image.FromFile(original_img_path))
        {
            int height = Img.Height;
            return height;

        }
    }
    public int getwidth(string original_img_path)
    {
        using (System.Drawing.Image Img =
        System.Drawing.Image.FromFile(original_img_path))
        {
            int width = Img.Width;
            return width;

        }
    }

}
