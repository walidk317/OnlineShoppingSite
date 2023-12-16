<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="OnlineShoppingSite.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:cornflowerblue">
    <form id="form1" runat="server">
        <div>
            <table align="center" class="auto-style2" style=" border-radius:10px; ">
                <tr colspan="2" align="center">
                    <td>
                        <h2 style="color:black; font-style:italic; font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif" >ABOUT US</h2>
                        <br />
                    </td>

                </tr>
                
                <tr colspan="2" align="center">
                    <td>
                        <h3 style="font-size: x-large">Welcome to ELECTRONIC SHOPPING HUB, your ultimate destination for cutting-edge electronics.<br/> 
                            We pride ourselves on being a premier online shopping hub dedicated exclusively to the latest and most innovative tech products. Our carefully curated selection ensures that you have access to top-quality gadgets, devices, and accessories from renowned brands.<br /><br />

At ELECTRONIC SHOPPING HUB, we prioritize your satisfaction. Our user-friendly interface makes your shopping experience seamless, and our commitment to quality means that every product undergoes rigorous testing.<br /><br />

Stay ahead of the curve with our range of cutting-edge and trendsetting solutions designed to enrich your digital lifestyle. Our customer support team is always ready to assist you, providing a personalized experience from product inquiries to post-purchase support.<br /><br />

Shop with confidence knowing that your transactions are secured by state-of-the-art encryption technology. Join our community of tech enthusiasts and experience the future of electronics with ELECTRONIC SHOPPING HUB. Thank you for choosing us as your trusted source for all things tech.</h3>
                    </td>
                </tr>

                <tr colspan="2" align="center">
                    <td>
                        <br />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" ForeColor="#003300" Font-Underline="true">Electronic Shopping Hub Pvt. | All Rights Reserved.</asp:HyperLink>
                    </td>
                    
                </tr>
                
                <tr colspan="2" align="center">
                    <td>
                        <br />
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Registration.aspx" ForeColor="#003300" Font-Underline="true">Register Here...</asp:HyperLink>
                    </td>
                    
                </tr>
                
                <tr colspan="2" align="center">
                    <td>
                        <br />
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ContactUs.aspx" ForeColor="#003300" Font-Underline="True">Contact Us...</asp:HyperLink>
                    </td>
                    
                </tr>
            </table>
        </div>
    </form>
</body>
</html>