<%@ Control Language="C#" ClassName="Header" %>

<script runat="server">
  
    

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        HttpCookie mycookie = new HttpCookie("Login");
        mycookie.Expires = DateTime.Now.AddDays(-1d);
        Response.Cookies.Add(mycookie);
        Response.Redirect("home.aspx");
       
       
    }
</script>
<head>
	<title>Islam</title>
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/style.css">
	<link href='https://fonts.googleapis.com/css?family=Cookie' rel='stylesheet'>
	<link rel="stylesheet" type="text/css" href="css/owl.carousel.min.css">
	<link rel="stylesheet" type="text/css" href="css/owl.theme.default.min.css">
	<script src="js/jquery-3.2.0.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/custome.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>

</head>
<nav class="navbar navbar-inverse navbar-fixed-top" id="nav-top">
    <div class="container">
      <div class="navbar-header">
        <a href="#" class="navbar-brand"></a>
        <button class="navbar-toggle" data-toggle="collapse" data-target="#nav">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
      </div>

      <div class="collapse navbar-collapse" >
    <ul class="nav navbar-nav navbar-right">
      <li ><a href="home.aspx">Home</a></li>
      <li ><a href="home.aspx">Islam</a></li>
      <li ><a href="home.aspx">Resourses</a></li>
      <li ><a href="home.aspx">Contact Us</a></li>
       
        <% if (Session["uname"] != null || Request.Cookies["Login"] !=null ) { %>

           
                  <% if ( Session["uname"] != null ) {%>   <li><a href="#">Welcome <%:Session["uname"] %></a></li>   <%   } %>
           

         <% else { %>    <li><a href="#">Welcome <%: Request.Cookies["Login"]["uname"] %></a></li>   <% } %>  
          
             

         <li ><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Logout</asp:LinkButton></li>
           
           <% } %>
           

            <% else { %>

                 
           <li ><a  href="Default.aspx" >LogIn</a></li>
         
              <%   } %>
        

    </ul>
  </div>
    </div>
  </nav>

