﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data;

public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        HttpCookie mycookie = new HttpCookie("Login");
        mycookie.Expires = DateTime.Now.AddDays(-1d);
        Response.Cookies.Add(mycookie);
        Response.Redirect("home.aspx");

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