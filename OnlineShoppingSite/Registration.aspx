<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="OnlineShoppingSite.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

   <style type="text/css">

       .body1 {
     justify-content: center;
     justify-items: center;
     display: flex;
     height: 100vh;
     position: center;
     background-image: url("Images/Register.png");
    }

    .container1 {
        display: flex;
        position: center; 

        
    }
       


   </style>

</head>
<body class="body1" style="height: 566px">
    <form id="form1" runat="server">
        <div class="container1">
            <table align="center" style="width: 750px; height: 744px; backdrop-filter: blur(10px); border-radius: 10px;"  >
                <tr>
                    <td colspan="2" align="center">
                        <h2>Register Here </h2>
                    </td>                    
                </tr>
                <tr>
                    <td style="width:50%" >
                        <b>First Name:</b>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="331px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name is empty" ForeColor="Red" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Only Characters Required" ForeColor="Red" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:50%">
                        <b>Last Name:</b>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="331px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last Name is empty" ForeColor="Red" ControlToValidate="TextBox2">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Only Characters Required" ForeColor="Red" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:50%">
                        <strong>Email_ID</strong><b>:</b>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="331px" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email id is empty" ForeColor="Red" ControlToValidate="TextBox3">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:50%">
                        <strong>Gender</strong><b>:</b>  
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="221px">
                            <asp:ListItem>Select Gender</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                            <asp:ListItem>Other</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please select your gender" ForeColor="Red" ControlToValidate="DropDownList1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td  style="width:50%">
                        Address:
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Height="25px" Width="331px" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Address is empty" ForeColor="Red" ControlToValidate="TextBox4">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:50%">
                        <b>Phone_No:</b>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" Height="25px" Width="331px" TextMode="Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Phone number is empty" ForeColor="Red" ControlToValidate="TextBox5">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Invalid Phone Number" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td cstyle="width:50%">
                        <b>Password:</b>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" Height="25px" Width="331px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Password is empty" ForeColor="Red" ControlToValidate="TextBox6">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:50%">
                        <b>Confirm Password: </b>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" Height="25px" Width="331px" TextMode="Password"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Confirm Password is empty" ForeColor="Red" ControlToValidate="TextBox7">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox6" ControlToValidate="TextBox7" ErrorMessage="Password Does Not Match" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Register" Font-Bold="True" 
                            Font-Size="Large" Height="30px" Width="119px" OnClick="Button1_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Clear" Font-Bold="True" 
                            Font-Size="Large" Height="30px" Width="119px" OnClick="Button2_Click" />

                    </td>
                </tr>
                <tr> 
                    <td colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Login Here..</asp:LinkButton>
                    </td>
                    
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
