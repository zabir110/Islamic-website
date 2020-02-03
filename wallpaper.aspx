<%@ Page Language="C#" AutoEventWireup="true" CodeFile="wallpaper.aspx.cs" Inherits="wallpaper" %>

<%@ Register Src="~/Header.ascx" TagPrefix="uc1" TagName="Header" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
          <style>
       
    .center-div
{
     margin: 0 auto;
     width: 150px;
            height: 345px;
        }
        .auto-style1 {
            width: 100%;
            
        }
        .auto-style2 {
            width: 99%;
        }
        .auto-style3 {            color: #000066;
        }
        .auto-style4 {
            width: 40%;
            color: #FFFFCC;
        }
        .auto-style5 {
            width: 56%;
            height: 117px;
        }
        .auto-style6 {
            height: 66px;
        }
        .auto-style7 {
            height: 47px;
        }
        .auto-style9 {
            width: 99%;
            height: 136px;
        }
        .auto-style11 {
            width: 56%;
            color: #FFFFCC;
        }
    </style>

    	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/style.css">
	<link href='https://fonts.googleapis.com/css?family=Cookie' rel='stylesheet'>
	<link rel="stylesheet" type="text/css" href="css/owl.carousel.min.css">
	<link rel="stylesheet" type="text/css" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.1.20/jquery.fancybox.min.css" />
	<script src="js/jquery-3.2.0.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/custome.js"></script>
	<script src="js/mixitup.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.1.20/jquery.fancybox.min.js"></script>
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50">
      <form id="form1" runat="server">
          <uc1:Header runat="server" ID="Header" />



    <div id="portfolio" style="background-color:#333" class="container-fluid content-padding portfolio">

  <div class="row section-heading">
   <h2 class="text-center" style="color:white" ><strong >wallpaper</strong></h2>
 </div>

        
           <% if (Convert.ToString(Session["uname"]) == "Admin") 
              { %>

        
         <div class="center-div">
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [wallpaper]"></asp:SqlDataSource>
          <table class="nav-justified" >
              <tr>
                  <td class="auto-style11">Wallpaper name</td>
                  <td class="auto-style2">
                      <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="167px" CssClass="auto-style3"></asp:TextBox>
                  </td>
              </tr>
            
              <tr>
                  <td class="auto-style11">Upload image</td>
                  <td class="auto-style2">
                      <asp:FileUpload ID="FileUpload1" runat="server" Height="34px" Width="256px" CssClass="auto-style3" />
                  </td>
              </tr>
             
              <tr>
                  
                  <td class="auto-style5">
                      <asp:Button ID="Button1" runat="server" Text="Save " OnClick="Button1_Click" CssClass="auto-style3" Width="105px" />
                      <span class="auto-style3">
                      <br />
                      <br />
                      </span>
                      <asp:Label ID="Label1" runat="server" Text="Label" CssClass="auto-style4"></asp:Label>

                  </td>
              </tr>
          </table>
      </div> 


        <%} %>

          <% if (Session["uname"] == null && Request.Cookies["Login"] == null ) { %>    
          
            <div class="content-padding">
             <h3 class="text-center" style="color:purple" ><strong>You need to log in to download</strong></h3>
             </div>

          <%} %>

               <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" SelectCommand="SELECT * FROM [wallpaper]"></asp:SqlDataSource>


        <div class="row portfolio-images" >
     
               <asp:DataList ID="DataList1" runat="server" DataKeyField="BookID" DataSourceID="SqlDataSource1" RepeatColumns="1" ShowFooter="False" ShowHeader="False" style="margin-top: 63px" RepeatLayout="Flow" RepeatDirection="Horizontal">
                  <ItemTemplate>
                   
                      <table class="auto-style1">
                       
                          <tr>
                              <td style="text-align:center" class="auto-style6">&nbsp;<asp:Literal ID="Literal1" runat="server" Text='<%# Eval("imagelink") %>'></asp:Literal>
                                  &nbsp;</td>
                          </tr>
                          <tr>
                              <td style="text-align: center" class="auto-style7">
                                  <h4 style="color:white"> 
                                  <asp:Label ID="Label3" runat="server" Text='<%# Eval("wallname") %>'></asp:Label></h4>
                              </td>
                          </tr>
                          <tr>
                       <td style="text-align: center">

                            <button style="color:black;">  
                 <% if (Session["uname"] != null || Request.Cookies["Login"] !=null ) { %>    
            <a href= "<%# Eval("dpath") %>" download>  <%} %>

                <%   else { %>  <a href= "#">   <%} %>
                     Download 
                </a>  
                    </button>
                              </td>
                          </tr>
                       

                      </table>
                   
                      <br />
                      <br />
                  </ItemTemplate>
              </asp:DataList>
         
            </div>

</div>


<%-- <div class="row portfolio-images" >

 <div class="col-sm-3 mix walpaper">
       <a data-fancybox="gallery" href="img/y.jpg">
    <div class="thumbnail con ">

            <% if (Session["uname"] != null || Request.Cookies["Login"] !=null ) { %>
        <a href="img/y.jpg" download > <img src="img/y.jpg" alt="thumbnail"  class="image"/>   </a>
      <%} %>

        <%else { %>
        <img src="img/y.jpg" alt="">
        <%} %>

    </div>
      </a>
  </div>


     

    <div class="col-sm-3 mix walpaper">
       <a data-fancybox="gallery" href="img/book.jpg">
    <div class="thumbnail con ">

            <% if (Session["uname"] != null || Request.Cookies["Login"] !=null ) { %>
        <a href="img/book.jpg" download > <img src="img/book.jpg" alt="thumbnail"  class="image"/>   </a>
      <%} %>

        <%else { %>
        <img src="img/book.jpg" alt="">
        <%} %>

    </div>
      </a>
  </div>

   

   <div class="col-sm-3 mix walpaper">
       <a data-fancybox="gallery" href="img/6.jpg">
    <div class="thumbnail con ">

            <% if (Session["uname"] != null || Request.Cookies["Login"] !=null ) { %>
        <a href="img/6.jpg" download > <img src="img/6.jpg" alt="thumbnail"  class="image"/>   </a>
      <%} %>

        <%else { %>
        <img src="img/6.jpg" alt="">
        <%} %>

    </div>
      </a>
  </div>



  <div class="col-sm-3 mix walpaper">
       <a data-fancybox="gallery" href="img/v.jpg">
    <div class="thumbnail con ">

            <% if (Session["uname"] != null || Request.Cookies["Login"] !=null ) { %>
        <a href="img/v.jpg" download > <img src="img/v.jpg" alt="thumbnail"  class="image"/>   </a>
      <%} %>

        <%else { %>
        <img src="img/v.jpg" alt="">
        <%} %>

    </div>
      </a>
  </div>


   <div class="col-sm-3 mix walpaper">
       <a data-fancybox="gallery" href="img/had.jpg">
    <div class="thumbnail con ">

            <% if (Session["uname"] != null || Request.Cookies["Login"] !=null ) { %>
        <a href="img/had.jpg" download > <img src="img/had.jpg" alt="thumbnail"  class="image"/>   </a>
      <%} %>

        <%else { %>
        <img src="img/had.jpg" alt="">
        <%} %>

    </div>
      </a>
  </div>

   <div class="col-sm-3 mix walpaper">
       <a data-fancybox="gallery" href="img/w.jpg">
    <div class="thumbnail con ">

            <% if (Session["uname"] != null || Request.Cookies["Login"] !=null ) { %>
        <a href="img/w.jpg" download > <img src="img/w.jpg" alt="thumbnail"  class="image"/>   </a>
      <%} %>

        <%else { %>
        <img src="img/w.jpg" alt="">
        <%} %>

    </div>
      </a>
  </div>
 

      <div class="col-sm-3 mix walpaper">
       <a data-fancybox="gallery" href="img/2.jpg">
    <div class="thumbnail con ">

            <% if (Session["uname"] != null || Request.Cookies["Login"] !=null ) { %>
        <a href="img/2.jpg" download > <img src="img/2.jpg" alt="thumbnail"  class="image"/>   </a>
      <%} %>

        <%else { %>
        <img src="img/2.jpg" alt="">
        <%} %>

    </div>
      </a>
  </div>
      <div class="col-sm-3 mix walpaper">
       <a data-fancybox="gallery" href="img/3.jpg">
    <div class="thumbnail con ">

            <% if (Session["uname"] != null || Request.Cookies["Login"] !=null ) { %>
        <a href="img/3.jpg" download > <img src="img/3.jpg" alt="thumbnail"  class="image"/>   </a>
      <%} %>

        <%else { %>
        <img src="img/3.jpg" alt="">
        <%} %>

    </div>
      </a>
  </div>

</div>--%>

              <footer  class="footer">
				<div class="footer-inner text-center">
					<p><a href="https://www.facebook.com/"><span class="fa fa-facebook fa-2x"></span></a></p>
					<p><a href="https://twitter.com/"><span class="fa fa-twitter fa-2x"></span></a></p>
					<p><a href="https://www.google.com/"><span class="fa fa-google fa-2x"></span></a></p>
					<p><a href="https://www.linkedin.com/"><span class="fa fa-linkedin fa-2x"></span></a></p>
				</div>
			</footer>

           <script>
               $("[data-fancybox]").fancybox({
                   // Options will go here
               });
   </script>
    </form>
   
</body>
</html>
