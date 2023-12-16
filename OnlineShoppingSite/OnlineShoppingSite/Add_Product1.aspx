<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Add_Product1.aspx.cs" Inherits="OnlineShoppingSite.Add_Product1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="navbar" style="border-width:3px; border-color:#333333; height:auto">
        <table style="width:700px; height:390px; background-color:#5f98f3;" align="center">
            <tr>
                <td align="center" width="50%" colspan="2">
                    <h1>
                        Adding Product
                    </h1>
                    <hr />
                </td>
            </tr>
            <tr>
                <td align="center" width="50%">
                   <h3>Category:</h3>
                </td>
                <td width="50%">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="CategoryName" DataValueField="CategoryName">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Category is Mandatory" ControlToValidate="DropDownList1" Display="Dynamic"
                        forecolor="Red" InitialValue="Select">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center" width="50%">
                     <h3>Product Name:</h3>
                </td>
                <td width="50%">
                    <asp:TextBox ID="txtName" runat="server">
                    </asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Product Name is Mandatory" ControlToValidate="txtName" Display="Dynamic"
                        forecolor="Red">*</asp:RequiredFieldValidator>     
                </td>
            </tr>
            <tr>
                <td align="center" width="50%">
                    <h3>Product Desc:</h3>
                </td>
                <td width="50%">
                    <asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine">
                    </asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="Product Description is Mandatory" ControlToValidate="txtDesc" Display="Dynamic"
                        forecolor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center" width="50%">
                    <h3>Image:</h3>
                </td>
                <td width="50%">
                    <asp:FileUpload ID="imageUpload" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="Image is Mandatory" ControlToValidate="imageUpload" Display="Dynamic"
                        forecolor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center" width="50%">
                    <h3>Product Price(Rs):</h3>
                </td>
                <td width="50%">
                    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ErrorMessage="Price is Mandatory" ControlToValidate="txtPrice" Display="Dynamic"
                        forecolor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="Price is Invalid" ControlToValidate="txtPrice" Display="Dynamic"
                        forecolor="Red" ValidationExpression="[0-9]*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td align="center" width="50%">
                    <h3>Product Quantity:</h3>
                </td>
                <td width="50%">
                    <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ErrorMessage="Quantity is Mandatory" ControlToValidate="txtQuantity" Display="Dynamic"
                        forecolor="Red">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ErrorMessage="Quantity is Invalid" ControlToValidate="txtQuantity" Display="Dynamic"
                        forecolor="Red" ValidationExpression="[0-9]*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td align="center" width="50%" colspan="2">
                    <asp:Button ID="btnSubmit" runat="server" Text="Add" font-bold="true"
                        forecolor="Black" Height="36px" Width="88px" OnClick="btnSubmit_Click"/>
                </td>
            </tr>
            <tr>
                <td align="center" width="50%" colspan="2">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" forecolor="Red"
                        headertext="Fix the Following Error"/>
                </td>
            </tr>
        </table>
    </div>
<div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RecordDBConnectionString %>" SelectCommand="SELECT * FROM [Category1]"></asp:SqlDataSource>
</div>
</asp:Content>
