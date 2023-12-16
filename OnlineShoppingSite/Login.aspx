<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OnlineShoppingSite.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <style type="text/css">
        .auto-style1 {
            height: 68px;
            width: 269px;
        }
        .auto-style2 {
            width: 547px;
            height: 439px;
        }
        .auto-style3 {
            width: 50%;
            height: 68px;
        }
        .auto-style4 {
            width: 50%;
            height: 94px;
        }
        .auto-style5 {
            height: 94px;
            width: 269px;
        }

        .main{
            justify-content: center;
            align-items: center;
            display: flex;
            height: 100vh;
            background-image:url("Images/loginbg1.png"); 
            background-size: cover;
            background-position: center;
        }

        #TextBox1{
            background-color:transparent;
            border-left: none;
            border-right: none;
            border-top: none;
        }

        #TextBox2{
            background-color:transparent;
            border-left: none;
            border-right: none;
            border-top: none;
        }

        #Button1{
            border-radius:5px;
            background-image:url("Images/loginbg.png");
            
        }
    </style>
    
</head>
<body class="main">
    <form id="form1" runat="server">
        <div>

            <table align="center" class="auto-style2" style=" border-radius:10px; backdrop-filter: blur(10px);">
                <tr>
                    <td colspan="2" align="center">
                        <h2 style="color:white;">Login Page</h2>
                        </td>
                    
                </tr>
                <tr>
                    <td align="center" class="auto-style4">
                        <b style="color:white;">Email ID:</b></td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox1" runat="server" Height="41px" Width="235px"  TextMode="SingleLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="auto-style3">
                        <b style="color:white;">Password:</b></td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox2" runat="server" Height="35px" Width="232px"  TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="Button1" runat="server" Height="37px" Text="Login" Width="113px" Font-Bold="True" Font-Italic="True" Font-Size="Larger" OnClick="Button1_Click" ForeColor="White" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">

                        <asp:Label ID="Label1" runat="server" Text="" style="color:white;"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" ForeColor="#660033" NavigateUrl="~/Registration.aspx" style="color:blue;">Register Here..</asp:HyperLink>
                    </td>

                </tr>
            </table>

        </div>
    </form>
</body>
</html>
