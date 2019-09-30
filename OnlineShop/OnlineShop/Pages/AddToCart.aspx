<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddToCart.aspx.cs" Inherits="OnlineShop.Pages.AddToCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <table class="nav-justified">
        <tr>
            <td style="width: 162px">&nbsp;</td>
            <td style="width: 410px">&nbsp;</td>
            <td style="width: 464px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 162px">&nbsp;</td>
            <td colspan="2">
                <asp:Image ID="Image1" runat="server" Height="347px" ImageUrl="~/OtherImages/ShoppingCart.jpeg" Width="869px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 162px">&nbsp;</td>
            <td style="width: 410px">&nbsp;</td>
            <td style="width: 464px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 162px">&nbsp;</td>
            <td style="width: 410px">You Have&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LabelItem2" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
            &nbsp; Items In Your&nbsp;Cart&nbsp;
                <asp:HyperLink ID="HyperLinkContShoping" runat="server" NavigateUrl="~/Pages/MenProducts.aspx">Continue Shoping</asp:HyperLink>
            </td>
            <td style="width: 464px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 162px">&nbsp;</td>
            <td style="width: 410px">&nbsp;</td>
            <td style="width: 464px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 162px">&nbsp;</td>
            <td colspan="2">
                <asp:GridView CssClass="table table-bordered table-hover" ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting" ShowFooter="True" Width="868px">
                    <Columns>
                        <asp:BoundField DataField="sno" HeaderText="Serial No">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="productid" HeaderText="Product ID">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:ImageField DataImageUrlField="productimage" HeaderText="Product Image">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:ImageField>
                        <asp:BoundField DataField="productname" HeaderText="Product Name">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="price" HeaderText="Price">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="quantity" HeaderText="Quantity">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="totalprice" HeaderText="Total Price">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
                    </Columns>
                    <HeaderStyle Height="40px" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 162px">&nbsp;</td>
            <td style="width: 410px">
                <asp:Button ID="ButtonCheckOut" runat="server" OnClick="ButtonCheckOut_Click" Text="Check Out" CssClass="btn-block" Width="203px" />
            </td>
            <td style="width: 464px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 162px">&nbsp;</td>
            <td style="width: 410px">&nbsp;</td>
            <td style="width: 464px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 162px; height: 33px;"></td>
            <td style="width: 410px; height: 33px;">
                <asp:Label ID="Label1" runat="server" CssClass="alert-info" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="#33CC33" Text="Cash On Delivery"></asp:Label>
            </td>
            <td style="width: 464px; height: 33px;"></td>
            <td style="height: 33px"></td>
        </tr>
        <tr>
            <td style="width: 162px">&nbsp;</td>
            <td style="width: 410px">&nbsp;</td>
            <td style="width: 464px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
