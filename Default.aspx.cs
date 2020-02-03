using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Semister3_1\Islamic_project\Islam\App_Data\Createaccount.mdf;Integrated Security=True");
   
   

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        string checkuser = "select count(*) from sign_in where name='"+ TextBox1.Text +"'";

        SqlCommand com = new SqlCommand(checkuser, con);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        con.Close();
        if (temp == 1)
        {
            con.Open();
            string checkPassword = "select password from sign_in where  name = '" + TextBox1.Text + "'";
            SqlCommand pass = new SqlCommand(checkPassword, con);
            string password = pass.ExecuteScalar().ToString().Replace(" ","");

           
           
            if(password == "admin") {

                Session["uname"] = "Admin";
                Response.Redirect("admin.aspx");

            
            }
            else if (password == TextBox2.Text)
            {

                Session["uname"] = TextBox1.Text;
                Response.Redirect("home.aspx");


            }

           else{
                 Label1.Text="Password is Not correct";
               
              }

        }
        else{
               Label1.Text="Username is Not correct";
        }
   }


    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

        HttpCookie mycookie = new HttpCookie("Login");
        mycookie["uname"] = TextBox1.Text;
        mycookie.Expires = DateTime.Now.AddSeconds(10);
        Response.Cookies.Add(mycookie);
  

    }
}