<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PlaceOrder.aspx.cs" Inherits="OnlineShop.Pages.PlaceOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <table class="nav-justified">
        <tr>
            <td style="width: 161px">&nbsp;</td>
            <td style="width: 120px">&nbsp;</td>
            <td style="width: 729px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 161px">&nbsp;</td>
            <td colspan="2">
                <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl="~/OtherImages/CrediteCard.jpeg" Width="842px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 161px">&nbsp;</td>
            <td style="width: 120px">&nbsp;</td>
            <td style="width: 729px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 161px">&nbsp;</td>
            <td style="width: 120px">
                <asp:Label ID="Label1" runat="server" Text="Order ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td style="width: 729px">
                <asp:Label ID="LabelOrderID" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 161px">&nbsp;</td>
            <td style="width: 120px">
                <asp:Label ID="Label2" runat="server" Text="Order Date"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; :</td>
            <td style="width: 729px">
                <asp:Label ID="LabelOrderDate" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 161px">&nbsp;</td>
            <td style="width: 120px">&nbsp;</td>
            <td style="width: 729px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 161px">&nbsp;</td>
            <td colspan="2">
                <asp:GridView CssClass="table table-bordered table-hover" ID="GridView1" runat="server" AutoGenerateColumns="False" ShowFooter="True" Width="841px">
                    <Columns>
                        <asp:BoundField DataField="sno" HeaderText="Serial No" />
                        <asp:BoundField DataField="productid" HeaderText="Product ID" />
                        <asp:BoundField DataField="productname" HeaderText="Product Name" />
                        <asp:ImageField DataImageUrlField="productimage" HeaderText="Product Image">
                        </asp:ImageField>
                        <asp:BoundField DataField="price" HeaderText="Price" />
                        <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="totalprice" HeaderText="Total Price" />
                    </Columns>
                    <HeaderStyle Height="40px" />
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 161px">&nbsp;</td>
            <td style="width: 120px">&nbsp;</td>
            <td style="width: 729px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 161px">&nbsp;</td>
            <td style="width: 120px">&nbsp;</td>
            <td style="width: 729px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 161px">&nbsp;</td>
            <td style="width: 120px">
                <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
            </td>
            <td style="width: 729px">
                <asp:TextBox ID="TextBoxAddress" runat="server" TextMode="MultiLine" Width="311px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 161px">&nbsp;</td>
            <td style="width: 120px">
                <asp:Label ID="Label4" runat="server" Text="Mobile No"></asp:Label>
            </td>
            <td style="width: 729px">
                <asp:TextBox ID="TextBoxMobileNo" runat="server" Width="303px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 161px">&nbsp;</td>
            <td style="width: 120px">&nbsp;</td>
            <td style="width: 729px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 161px">&nbsp;</td>
            <td style="width: 120px">&nbsp;</td>
            <td style="width: 729px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 161px">&nbsp;</td>
            <td style="width: 120px">&nbsp;</td>
            <td style="width: 729px">
                <asp:Button ID="ButtonPlaceOrder" runat="server" OnClick="ButtonPlaceOrder_Click" Text="Place Order" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 161px">&nbsp;</td>
            <td style="width: 120px">&nbsp;</td>
            <td style="width: 729px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 161px">&nbsp;</td>
            <td style="width: 120px">&nbsp;</td>
            <td style="width: 729px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
