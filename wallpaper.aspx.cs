using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class wallpaper : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection sqlcon = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Semister3_1\Islamic_project\Islam\App_Data\vedio.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");

        string path = Path.GetFileName(FileUpload1.FileName);
        path = path.Replace(" ", "");
        FileUpload1.SaveAs(Server.MapPath("~/wallpaper/") + path);
        String imagelink = "wallpaper/" + path;





        string link = "<a href=" + imagelink + "><img src=" + imagelink + " style=height:400px; width:300px; padding-top:20px></a>";
        String query = "Insert into wallpaper(wallname,imagelink,dpath) values('" + TextBox1.Text + "','" + link + "','" + imagelink +  "')";
        SqlCommand cmd = new SqlCommand(query, sqlcon);
        sqlcon.Open();

        cmd.ExecuteNonQuery();
        sqlcon.Close();
        Label1.Text = "Wallpaper Has Been Uploaded and Saved Successfully";
        TextBox1.Text = "";
      
        Response.Redirect("wallpaper.aspx");





    }

}