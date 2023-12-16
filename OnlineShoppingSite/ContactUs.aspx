<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="OnlineShoppingSite.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .contact{
            font-style: italic;
            font-size: x-large;
        }

        .mail{
            color: darkblue;
        }
         
        .body{
            justify-content: center;
            align-items: center;
            display: flex;
            height: 100vh;
            background-image:url("ContactImages/contactus.png"); 
        }
        
        .container{
            position: center;
            display: flex;       
        }

        #Button1{
            border-radius:5px;
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
        
        #TextBox3{
            background-color:transparent;
            border-left: none;
            border-right: none;
            border-top: none;
        }
        
        #TextBox4{
            background-color:transparent;
            border-left: none;
            border-right: none;
            border-top: none;
        }
        
        #TextBox5{
            background-color:transparent;
            border-left: none;
            border-right: none;
            border-top: none;
        }

        #FileUpload1{
            background-color:transparent;
        }
    </style>
</head>
<body class="body" >
    <form id="form1" runat="server">
        <div class="container">
            <table align="center" style="width: 750px;  border-radius:10px; backdrop-filter: blur(10px);">
                <tr>
                    <td class="contact" colspan="2" align="center">Contact Us:</td>
                </tr>
                <tr style="height:60px;">
                    <td class="mail" colspan="2" align="center">
                       Please Contact Us On Our Mail ID - <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Onlinesh@site.in</asp:LinkButton>(Please Copy the Mail ID) Or 
                        <br />
                        Enter the Details Given Below And Click On Submit.<br />
                        (Please <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="blue" OnClick="LinkButton2_Click">Login</asp:LinkButton> With Your Account Before Entering Any Details)
                    </td>
                </tr>   
                <tr style="height:50px;">
                    <td style="width:50%">
                        <b>Enter Your Name:</b>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="330px" Height="25px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is Compulsory" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr style="height:50px;">
                    <td style="width:50%">
                        <b>Enter Your Email ID:</b> 
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="330px" Height="25px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email ID is Compulsory" ControlToValidate="TextBox2" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr style="height:50px;">
                    <td style="width:50%">
                        <b>Enter Your Phone Number: </b> 
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Width="330px" Height="25px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Phone Number is Compulsory" ControlToValidate="TextBox3" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr style="height:60px;">
                    <td style="width:50%">
                        <b>Enter Your Address:</b> 
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Width="330px" Height="35px" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Address is Compulsory" ControlToValidate="TextBox4" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr style="height:50px;">
                    <td style="width:50%">
                        <b>Describe Your Issue:</b> 
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" Width="330px" Height="35px" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please Describe Your Issue..." ControlToValidate="TextBox5" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr style="height:50px;">
                    <td style="width:50%">
                        <b>Please Add Screenshot:</b>
                    </td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="330px"/>
                    </td>
                </tr>
                <tr style="height:50px;">
                    <td colspan="2" align="center">
                        <asp:Button ID="Button1" runat="server" Text="Submit" width="100px" Height="35px" BorderStyle="Solid" OnClick="Button1_Click1"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Clear" width="100px" Height="35px" BorderStyle="Solid" OnClick="Button2_Click"/>


                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" forecolor="Red"
                                headertext="Fix the Following Error"/>                             
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
