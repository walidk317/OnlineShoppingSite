<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProductStatus.aspx.cs" Inherits="OnlineShoppingSite.UserProductStatus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <style>
        .progress{
            /*margin: 300px auto;*/
        }
        ul{
            text-align : center;
        }
        ul li{
            display: inline-block;
            width: 200px;
            position: relative;
        }
        ul li .fa{
            background: #ccc;
            width: 16px;
            height: 16px;
            color: white;
            border-radius: 50%;
            padding: 5px;
        }
        ul li .fa::after{
            content: '';
            background: #ccc;
            height: 5px;
            width: 205px;
            display: block;
            position: absolute;
            left: 0;
            top: 10px;
            z-index: -1;
        }
        ul li:nth-child(1) .fa{
            background: #148e14;
        }

        ul li:nth-child(1) .fa::after{
            background: #148e14;
        }
        ul li:first-child .fa::after{
            width: 105px;
            left: 100px;
        }

        ul li:last-child .fa::after{
            width:105px;        }
    </style>
</head>
<body style=" background-image: url(Images/deliverytruck.png); background-position:right; background-repeat:no-repeat; height:90vh">
    <form id="form1" runat="server">
        <div align="center">

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <marquee direction="left" scrollamount='<%# val %>' runat="server">
                <center>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/deliverytlogo.png" />
                </center>
            </marquee>
            <hr style="color:red; border:solid"/>
            &nbsp;&nbsp;<h1 style="color:#ff0000">Recent Delivery Status</h1>
            <b>Order ID:</b><asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#9933ff" Font-Bold="true"></asp:Label>
        </div>
        <br />
        <div class="progress">
            <ul>
                <li>
                    <i class="fa fa-check" aria-hidden="true"></i>
                    <p><b>Dispatched</b></p>
                </li>
                <li>
                    <i class="fa fa-check" aria-hidden="true"></i>
                    <p><b>Delivered</b></p>
                </li>            
            </ul>
        </div>
        <div align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/UserProductList.aspx" BackColor="#009900" Font-Bold="True" Font-Size="Large"
                ForeColor="White" BorderColor="White">Want to check All ordered Products</asp:HyperLink>
            <br />
        </div>
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Default.aspx" BackColor="DarkOrchid" Font-Bold="true"
                font-size="Large" ForeColor="WhiteSmoke" BorderColor="White">Back to HOME page</asp:HyperLink>
        </div>
    </form>
</body>
</html>
