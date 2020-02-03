using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class tilawat : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection sqlcon = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Semister3_1\Islamic_project\Islam\App_Data\vedio.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");

        string path = Path.GetFileName(FileUpload1.FileName);
        path = path.Replace(" ", "");
        FileUpload1.SaveAs(Server.MapPath("~/hvideo/") + path);
        String downloadlink = "hvideo/" + path;


        string  link = "<video width=470 height=328 controls><source src=" + downloadlink + " type=video/mp4></video>";
        String query = "Insert into hvideo(Vedioname,AuthorName,vediolink,dpath) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + link + "','" + downloadlink+ "')";
        SqlCommand cmd = new SqlCommand(query, sqlcon);
        sqlcon.Open(); 
        cmd.ExecuteNonQuery();
        sqlcon.Close();
        Label1.Text = "Video Data Has Been Uploaded and Saved Successfully";
        TextBox1.Text = "";
        TextBox2.Text = "";
        Response.Redirect("hamd.aspx");

     
    }
}