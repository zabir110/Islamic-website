using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
public partial class home_default : System.Web.UI.Page
{

  
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }


    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {

            MailMessage mm = new MailMessage("zabirislam110@gmail.com", "zabir.kuetcse@gmail.com");

          

            mm.Body = "From : <br/>  Name: " + name.Text + "<br /><br />Email: " + email.Text + "<br />" + message.Text;

          

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

        catch (Exception ex)
        {
            Label1.Text = " Failed to send email " + ex.Message;

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       
        Response.Redirect("HistoryOfIslam.aspx");
       
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        HttpCookie mycookie = new HttpCookie("Login");
        mycookie.Expires = DateTime.Now.AddDays(-1d);
        Response.Cookies.Add(mycookie);
        Response.Redirect("home.aspx");

    }
}