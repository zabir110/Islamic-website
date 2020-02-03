<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forget.aspx.cs" Inherits="forget" %>

<%@ Register Src="~/Header.ascx" TagPrefix="uc1" TagName="Header" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
       body {
   
            margin: 0;
            padding: 0;
            font-family: sans-serif;
            background-attachment: fixed;
            background-repeat: no-repeat;
            background-size: 100% 100%;
            background-image: url(images/jjj.jpg);

        }
        
    .center-div
{
     margin: 0 auto;
     width: 350px;
    height: 345px;
        }
         .auto-style1 {
             width: 100%;
             height: 161px;
         }
         .auto-style2 {
             width: 87px;
             height: 41px;
         }
         .auto-style3 {
             width: 87px;
             height: 32px;
         }
         .auto-style4 {
             height: 32px;
             color:white;
         }
         .auto-style5 {
             width: 87px;
             height: 48px;
             color:white;
         }
         .auto-style6 {
             height: 48px;
         }
         .auto-style7 {
             height: 41px;
             color:black;
         }
         </style>
</head>
<body>
    <form id="form1" runat="server">


        <uc1:Header runat="server" ID="Header" />

        <div  class=" content-padding" >

   <h2 class="text-center" style="color:white" ><strong>Forgot password ??</strong></h2>

    </div>

     <div class="center-div">

          <table class="auto-style1">
              <tr>
                  <td class="auto-style5"><h4><strong>Email:</strong></h4></td>
                  <td class="auto-style6">
                      <asp:TextBox ID="TextBox1" runat="server" Height="34px" Width="204px"></asp:TextBox>
                  </td>
              </tr>
              <tr>
                  <td class="auto-style2"></td>
                  <td class="auto-style7">
                      <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Send" Height="27px" Width="81px" />
                  </td>
              </tr>
              <tr>
                  <td class="auto-style3"></td>
                  <td class="auto-style4">
                      <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                  </td>
              </tr>
          </table>
      </div> 
    </form>
</body>
</html>
