<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProductList.aspx.cs" Inherits="OnlineShoppingSite.UserProductList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-image:url(/Images/CartBg.png); background-size:contain; background-position:center">
    <form id="form1" runat="server">
        <div align="center">
            <div align="right">
            <asp:LinkButton ID="AllOrder" runat="server" OnClick="AllOrder_Click" BackColor="DarkOrchid" ForeColor="WhiteSmoke">Show All Order List</asp:LinkButton>
            &nbsp;
        </div>

        <b>Select Date</b>
        <asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="168px"></asp:TextBox>
        &nbsp;

        <asp:Button ID="Button1" runat="server" Text="Click" OnClick="Button1_Click" 
            CssClass="button" Font-Bold="true" Height="39px" Width="72px" BackColor="DarkOrchid" ForeColor="White"/>
        <br />
        <br />

        <asp:GridView ID="GridView1" runat="server" OnRowDataBound="GridView1_RowDataBound" 
            backcolor="#FF6699" BorderColor="#333333" BorderWidth="5px" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:TemplateField HeaderText="PrdtImage">
                    <ItemTemplate>
                       <%-- <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' height="105px" Width="105px"/>--%>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("Image") %>' height="105px" Width="105px" CommandName="ViewPDF" CommandArgument='<%# Eval("OrderId") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        <HeaderStyle backcolor="DarkOrchid" ForeColor="White"/>
        </asp:GridView>
        <br />
        <br />
        <div align="center">
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx" backcolor="DarkOrchid" Font-Bold="true" font-size="Large"
                forecolor="WhiteSmoke" BorderColor="White">Back To Home Page</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/UserProductStatus.aspx" backcolor="DarkOrchid" Font-Bold="true" Font-Size="Large"
                forecolor="WhiteSmoke" BorderColor="White">Back TO previous Page</asp:HyperLink>

        </div>
       </div>
    </form>
</body>
</html>
