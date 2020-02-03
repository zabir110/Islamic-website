<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<%@ Register Src="~/Header.ascx" TagPrefix="uc1" TagName="Header" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>FREE RESPONSIVE HORIZONTAL ADMIN</title>
    <!-- BOOTSTRAP CORE STYLE  -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME STYLE  -->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLE  -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
  

</head>
<body>
    <form id="form1" runat="server">
   <div class="navbar navbar-inverse set-radius-zero" >
       
    </div>



        <uc1:Header runat="server" ID="Header" />

       
     <!-- MENU SECTION END-->
    <div class="content-wrapper">
         <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line">ADMIN DASHBOARD</h4>
                
                            </div>
        </div>
          
           

            

              <div class="col-sm-12">
                    <div id="carousel-example" class="carousel slide slide-bdr" data-ride="carousel" >
                   
                    <div class="carousel-inner">
                        <div class="item active">

                            <img src="images/grand-mosque-abu-dhabi-wallpaper-full-hd-islam-image-wallpaper-1920-1080.jpg" alt="" />
                           
                        </div>
                        <div class="item">
                            <img src="images/back.jpg" alt="" />
                          
                        </div>
                        <div class="item">
                            <img src="images/aa.jpg" alt="" />
                           
                        </div>
                    </div>



                    <!--INDICATORS-->
                     <ol class="carousel-indicators">
                        <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example" data-slide-to="1"></li>
                        <li data-target="#carousel-example" data-slide-to="2"></li>
                    </ol>
                    <!--PREVIUS-NEXT BUTTONS-->
                     <a class="left carousel-control" href="#carousel-example" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
  </a>
  <a class="right carousel-control" href="#carousel-example" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
  </a>
                </div>
              </div>


  


            
    </section>
      <!-- FOOTER SECTION END-->
    <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY  -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS  -->
    <script src="assets/js/bootstrap.js"></script>
      <!-- CUSTOM SCRIPTS  -->
    <script src="assets/js/custom.js"></script>


             <div  class="container-fluid content-padding" >
                   <div class="row ">
                 <h2 class="text-center"><strong><span class="color-me-yellow">My </span>Users</strong></h2>       <div class="line" ></div>
     
                 <asp:ListView ID="ListView1" runat="server" DataSourceID="XmlDataSource1">
                     <LayoutTemplate>
                         <div id="itemPlaceHolderContainer" runat="server" >
                             <span id ="ItemPlaceHolder" runat="server"></span>
                         </div>
                     </LayoutTemplate>
                     <ItemTemplate>
                         <div style="text-align:center">
                           <p style="padding:2px">
                              
                          <%#XPath("Name") %> 
                         <%#XPath("password") %>
                          <%#XPath("email") %>
                          <%#XPath("phone") %>
                                 
                               </p> 
                                      
                             </div>
                     </ItemTemplate>
                 </asp:ListView>
                 </div>
                 </div>
                 <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/XMLFile.xml"></asp:XmlDataSource>

             
<div id="aboutus" class="container-fluid content-padding" >
  <div class="row ">
      
<h2 class="text-center"><strong><span class="color-me-yellow">My </span>Profile</strong></h2>       <div class="line" ></div>
     
     
    <div class="col-sm-12" >
        
     <p class="text-justify"> 
    Salamun alaika , this is Zabir . Interested to do something for islam so dua for me. Salamun alaika , this is Zabir . Interested to do something for islam so dua for me. Salamun alaika , this is Zabir . Interested to do something for islam so dua for me.
          Salamun alaika , this is Zabir . Interested to do something for islam so dua for me.
          Salamun alaika , this is Zabir . Interested to do something for islam so dua for me. Salamun alaika , this is Zabir . Interested to do something for islam so dua for me.
          Salamun alaika , this is Zabir . Interested to do something for islam so dua for me. Salamun alaika , this is Zabir . Interested to do something for islam so dua for me.
     </p>
    
   
   </div>
      </div>
</div>
    </form>
</body>
</html>
