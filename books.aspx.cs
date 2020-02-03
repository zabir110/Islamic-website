using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class books : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection sqlcon = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Semister3_1\Islamic_project\Islam\App_Data\vedio.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");

        string path = Path.GetFileName(FileUpload1.FileName);
        path = path.Replace(" ", "");
        FileUpload1.SaveAs(Server.MapPath("~/bookfile/") + path);
        String imagelink = "bookfile/" + path;

         string bpath = Path.GetFileName(FileUpload2.FileName);
        bpath = bpath.Replace(" ", "");
        FileUpload2.SaveAs(Server.MapPath("~/bookfile/") + bpath);
        String blink = "bookfile/" + bpath;

       
        
        string link = "<a href="+ blink+"><img src=" + imagelink + " style=height:400px; width:300px; padding-top:20px></a>";
        String query = "Insert into book(Bookname,AuthorName,imagelink,booklink,dpath) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + link + "','" + blink + "','" + blink + "')";
        SqlCommand cmd = new SqlCommand(query, sqlcon);
        sqlcon.Open();

        cmd.ExecuteNonQuery();
        sqlcon.Close();
        Label1.Text = "Book Has Been Uploaded and Saved Successfully";
        TextBox1.Text = "";
        TextBox2.Text = "";
        Response.Redirect("books.aspx");


    }
   
}