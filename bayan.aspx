<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bayan.aspx.cs" Inherits="tilawat" %>

<%@ Register Src="~/Header.ascx" TagPrefix="uc1" TagName="Header" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
    <title></title>
    <style>
        body {
   
            margin: 0;
            padding: 0;
            font-family: sans-serif;
            background-attachment: fixed;
            background-repeat: no-repeat;
            background-size: 100% 100%;
            background-image: url('images/nature-bench-blur-wallpaper-44620-45750-hd-wallpapers.jpg');
            color: #FFFFFF;
        }
        .center-div
{
     margin: 0 auto;
     width: 150px; 
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
            width: 18%;
            color: #FFFFCC;
        }
        .auto-style5 {
            width: 18%;
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
        .auto-style10 {
            width: 18%;
            height: 136px;
            color: #FFFFFF;
        }
    </style>
</head>
<body  data-spy="scroll" data-target=".navbar" data-offset="50">
      <form id="form1" runat="server">
          <uc1:Header runat="server" ID="Header" />
    


   
<div  class=" content-padding" >

   <h2 class="text-center" style="color:white" ><strong>Bayan</strong></h2>

    </div>

   
           <% if (Convert.ToString(Session["uname"]) == "Admin" ) 
              { %>
<div class="center-div">
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [bvideo]"></asp:SqlDataSource>
          <table class="nav-justified" >
              <tr>
                  <td class="auto-style4">Vedio name</td>
                  <td class="auto-style2">
                      <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="167px" CssClass="auto-style3"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style4">Author name</td>
                  <td class="auto-style9">
                      <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="171px" CssClass="auto-style3"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style4">Upload file</td>
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
          
            <div>
             <h3 class="text-center" style="color:purple" ><strong>You need to log in to download</strong></h3>
             </div>

          <%} %>
          
            
          <div class=" content-padding" >
              
               <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" SelectCommand="SELECT * FROM [bvideo]"></asp:SqlDataSource>
              
               <asp:DataList ID="DataList1" runat="server" DataKeyField="VedioID" DataSourceID="SqlDataSource1" RepeatColumns="1" RepeatDirection="Horizontal" ShowFooter="False" ShowHeader="False" style="margin-top: 63px" RepeatLayout="Flow">
                  <ItemTemplate>
                   
                      <table class="auto-style1">
                       
                          <tr>
                              <td style="text-align: center" class="auto-style6">&nbsp;<asp:Literal ID="Literal1" runat="server" Text='<%# Eval("vediolink") %>'></asp:Literal>
                                  &nbsp;</td>
                          </tr>
                          <tr>
                              <td style="text-align: center" class="auto-style7">
                                  <h4 style="color:white"> 
                                  <asp:Label ID="Label3" runat="server" Text='<%# Eval("Vedioname") %>'></asp:Label></h4>
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
          <footer  class="footer">
				<div class="footer-inner text-center">
					<p><a href="https://www.facebook.com/"><span class="fa fa-facebook fa-2x"></span></a></p>
					<p><a href="https://twitter.com/"><span class="fa fa-twitter fa-2x"></span></a></p>
					<p><a href="https://www.google.com/"><span class="fa fa-google fa-2x"></span></a></p>
					<p><a href="https://www.linkedin.com/"><span class="fa fa-linkedin fa-2x"></span></a></p>
				</div>
			</footer>


</form>
</body>
</html>
