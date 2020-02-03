using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Configuration;


public partial class forget : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\Semister3_1\Islamic_project\Islam\App_Data\Createaccount.mdf;Integrated Security=True");
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {

            MailMessage mm = new MailMessage("zabirislam110@gmail.com", TextBox1.Text);


            con.Open();
            string checkuser = "select count(*) from sign_in where email='" + TextBox1.Text + "'";

            SqlCommand com = new SqlCommand(checkuser, con);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {
                con.Open();
                string checkPassword = "select password from sign_in where  email = '" + TextBox1.Text + "'";
                SqlCommand pass = new SqlCommand(checkPassword, con);
                string password = pass.ExecuteScalar().ToString().Replace(" ", "");


                mm.Body ="Your password is : " + password;



                mm.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();

                smtp.Host = "smtp.gmail.com";

                smtp.EnableSsl = true;

                System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();

                NetworkCred.UserName = "zabirislam110@gmail.com";

                NetworkCred.Password = "zabir1507110";

                smtp.UseDefaultCredentials = true;

                smtp.Credentials = NetworkCred;

                smtp.Port = 587;

                smtp.Send(mm);

                Label1.Text = "Email Sent Sucessfully.";
            }





        }

        catch (Exception ex)
        {
            Label1.Text = " Failed to send email " + ex.Message;

        }
    }
}