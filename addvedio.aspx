<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addvedio.aspx.cs" Inherits="addvedio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 68%;
            height: 215px;
        }
        .auto-style2 {
            width: 203px;
        }
        .auto-style3 {
            width: 203px;
            height: 93px;
        }
        .auto-style4 {
            height: 93px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table border="1" class="auto-style1">
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;upload vedio</td>
                <td class="auto-style4">
                    <asp:FileUpload ID="FileUpload1" runat="server" style="margin-left: 53px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" />
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        <p>
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        </p>
    </form>
</body>
</html>
