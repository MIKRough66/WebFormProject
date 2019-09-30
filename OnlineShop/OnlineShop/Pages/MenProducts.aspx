<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MenProducts.aspx.cs" Inherits="OnlineShop.Pages.MenProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../jsImgSlider/themes/2/js-image-slider.css" rel="stylesheet" />
    <script src="../jsImgSlider/themes/2/js-image-slider.js"></script>
    <link href="../jsImgSlider/generic.css" rel="stylesheet" />
    
    <table class="nav-justified">
        <tr>
            <td style="width: 115px">&nbsp;</td>
            <td class="modal-sm" style="width: 558px">&nbsp;</td>
            <td class="modal-sm" style="width: 82px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 115px">&nbsp;</td>
            <td class="modal-sm" style="width: 558px">&nbsp;</td>
            <td class="modal-sm" style="width: 82px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="5"><div id="sliderFrame">
        <div id="slider">
            <a href="http://www.menucool.com/jquery-slider" target="_blank">
                <img src="../SliderImages/Image1.jpg" alt="Welcome To Online Shop" />
            </a>
            <a class="lazyImage" href="../SliderImages/Image2.jpg" title="Find Your Daily Necessaries">Pure JavaScript</a>
            <a href="http://www.menucool.com/javascript-image-slider"><b data-src="../SliderImages/Image3.jpg">Image Slider</b></a>
            <a class="lazyImage" href="../SliderImages/Image4.jpg" title="">Slide 4</a>
        </div>
        <!--thumbnails-->
        <div id="thumbs">
            <div class="thumb">
                <div class="frame"><img src="../SliderImages/ThumbImage1.jpg" /></div>
                <div class="thumb-content"><p>Easy Shopping</p>Make your shopping easy with online shop</div>
                <div style="clear:both;"></div>
            </div>
            <div class="thumb">
                <div class="frame"><img src="../SliderImages/ThumbImage2.jpg" /></div>
                <div class="thumb-content"><p>Easy Find</p>Find Your Product Easily</div>
                <div style="clear:both;"></div>
            </div>
            <div class="thumb">
                <div class="frame"><img src="../SliderImages/ThumbImage3.jpg" /></div>
                <div class="thumb-content"><p>Quality</p>Find Your Quality Goods</div>
                <div style="clear:both;"></div>
            </div>
            <div class="thumb">
                <div class="frame"><img src="../SliderImages/ThumbImage4.jpg" /></div>
                <div class="thumb-content"><p>Delivary</p>Cash on Delivary</div>
                <div style="clear:both;"></div>
            </div>
        </div>
        <!--clear above float:left elements. It is required if above #slider is styled as float:left. -->
        <div style="clear:both;height:0;"></div>
    </div></td>
        </tr>
        <tr>
            <td style="width: 115px">&nbsp;</td>
            <td class="modal-sm" style="width: 558px">&nbsp;</td>
            <td class="modal-sm" style="width: 82px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 115px">&nbsp;</td>
            <td class="modal-sm" style="width: 558px">You Have&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LabelItem" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
            &nbsp; Items In Your&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLinkCart" runat="server" NavigateUrl="~/Pages/AddToCart.aspx">Chart</asp:HyperLink>
            </td>
            <td class="modal-sm" style="width: 82px">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="5" style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 115px">&nbsp;</td>
            <td colspan="4">
                <asp:DataList CssClass="table table-bordered table-hover" ID="DataListProduct" runat="server" DataKeyField="ProductID" DataSourceID="SqlDataSourceProduct" Width="950px" OnItemCommand="DataListProduct_ItemCommand" style="margin-right: 41px">
                    <ItemTemplate>
                        <table class="nav-justified" style="width: 99%; height: 144px;">
                            <tr>
                                <td style="width: 348px" class="modal-sm">
                                    <asp:Label ID="Label1" runat="server" Text="Product ID"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label>
                                </td>
                                <td style="width: 286px">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 348px" class="modal-sm">
                                    <asp:Label ID="Label3" runat="server" Text="Product Name"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                                </td>
                                <td style="width: 286px">
                                    <asp:Label ID="Label5" runat="server" Text="Category"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;:&nbsp;
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("Category") %>'></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 348px" class="modal-sm">
                                    <asp:Image ID="Image1" runat="server" Height="89px" ImageUrl='<%# Eval("ProductImage") %>' Width="202px" />
                                </td>
                                <td style="width: 286px">
                                    <asp:Label ID="Label7" runat="server" Text="Price"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 348px" class="modal-sm">
                                    <asp:Label ID="Label9" runat="server" Text="Available"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("Available") %>'></asp:Label>
                                </td>
                                <td style="width: 286px">
                                    <asp:Label ID="Label11" runat="server" Text="Quantity"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:DropDownList ID="DropDownListQty" runat="server">
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:ImageButton ID="ImageButtonAddtoCart" runat="server" CommandArgument='<%# Eval("productid")%>' Height="26px" ImageUrl="~/ProductImages/Cart01.png" Width="35px" CommandName="addtocart" />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td style="width: 115px">&nbsp;</td>
            <td class="modal-sm" style="width: 558px">
                &nbsp;<asp:Label ID="lblCurrentPage" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="ButtonPrev" runat="server" OnClick="ButtonPrev_Click" Text="&lt;" />
&nbsp;
                <asp:Button ID="ButtonNext" runat="server" OnClick="ButtonNext_Click" Text="&gt;" />
            </td>
            <td class="modal-sm" style="width: 82px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 115px">&nbsp;</td>
            <td colspan="4">
                <asp:SqlDataSource ID="SqlDataSourceProduct" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Product] ORDER BY [ProductName]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 115px">&nbsp;</td>
            <td class="modal-sm" style="width: 558px">&nbsp;</td>
            <td class="modal-sm" style="width: 82px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 115px">&nbsp;</td>
            <td class="modal-sm" style="width: 558px">&nbsp;</td>
            <td class="modal-sm" style="width: 82px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 115px">&nbsp;</td>
            <td class="modal-sm" style="width: 558px">&nbsp;</td>
            <td class="modal-sm" style="width: 82px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>



</asp:Content>
