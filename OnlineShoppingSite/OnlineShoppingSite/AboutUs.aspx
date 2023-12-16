<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="OnlineShoppingSite.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 50px;
        }
        .auto-style4 {
            height: 52px;
        }
    </style>
</head>
<body style="background-color:cornflowerblue">
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style2" style=" border-radius:10px;">
                <tr >
                    <td colspan="2" align="center">
                        <h2 style="font-style:italic">ABOUT US</h2>
                    </td>
                    
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        
<h3 style="font-size:x-large">Welcome to Online Shopping Hub, your ultimate destination for cutting-edge electronics.<br /> We pride ourselves on being a premier online shopping hub dedicated exclusively to the latest and most innovative tech products. Our carefully curated selection ensures that you have access to top-quality gadgets, devices, and accessories from renowned brands.<br /><br />

At Online Shopping Hub, we prioritize your satisfaction. Our user-friendly interface makes your shopping experience seamless, and our commitment to quality means that every product undergoes rigorous testing.<br /><br />

Stay ahead of the curve with our range of cutting-edge and trendsetting solutions designed to enrich your digital lifestyle. Our customer support team is always ready to assist you, providing a personalized experience from product inquiries to post-purchase support.<br /><br />

Shop with confidence knowing that your transactions are secured by state-of-the-art encryption technology. Join our community of tech enthusiasts and experience the future of electronics with Online Shopping Hub. Thank you for choosing us as your trusted source for all things tech.</h3>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="auto-style4">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" ForeColor="#003300">Electronic Shopping Hub Pvt. | All Rights Reserved.</asp:HyperLink>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td align="center" class="auto-style3">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Login.aspx" ForeColor="#003300">Login Here...</asp:HyperLink>
                        <br />
                    </td>

                </tr>

                <tr>
                    <td align="center" class="auto-style4">
                       <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Registration.aspx" ForeColor="#003300">Register Here...</asp:HyperLink><br />

                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
