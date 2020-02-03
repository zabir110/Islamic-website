using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
public partial class addvedio : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string path = Path.GetFileName(FileUpload1.FileName);
        path = path.Replace(" ", "");
        FileUpload1.SaveAs(Server.MapPath("~/video/") + path);
        String link = "video/" + path;
        Literal1.Text = "<video width=400 controls><source src=" + link + " type=video/mp4></video>";
        Label1.Text = "Video Uploaded Successfully";
    }
}