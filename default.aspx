<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="sopping_cart._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style6 {
            height: 929px;
            position: relative;
            left: -31px;
            top: 0px;
            width: 642px;
            margin-right: 0px;
            background-color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="LMS Shopping Cart"></asp:Label>
            <br />
            <br />
        <div>
            <asp:Label ID="Label2" runat="server" ForeColor="Blue" Text="Welcome To Shopping Website "></asp:Label>
            <br />
            <br />
            <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="auto-style6" DataSourceID="SqlDataSource1" GridLines="Both" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatColumns="3" RepeatDirection="Horizontal">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <ItemTemplate>
                    <span class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PRODUCT:ID</span><asp:Label ID="Label3" runat="server" Text='<%# Eval("Product_ID") %>' CssClass="auto-style7"></asp:Label>
                    <br class="auto-style7" />
                    <table class="auto-style1">
                        <tr>
                            <td><span class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("Title") %>' CssClass="auto-style7"></asp:Label>
                                <span class="auto-style7">&nbsp;</span></td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("product_image") %>' Width="200px" CssClass="auto-style7" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5"><span class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Price") %>' CssClass="auto-style7"></asp:Label>
                                <span class="auto-style7">&nbsp;</span></td>
                        </tr>
                        <tr>
                            <td class="auto-style3"><span class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="80px" ImageUrl="~/images/image-1.jpg" Width="210px" CommandArgument="add to cart" CssClass="auto-style7"   />
                                <span class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</span></td>
                        </tr>
                        <tr>
                            <td class="auto-style7">&nbsp;</td>
                        </tr>
                        <tr>
                            <td></td>
                        </tr>
                    </table>
                    <br class="auto-style7" />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LikhithaConnectionString %>" SelectCommand="SELECT [Product_ID], [Title], [Price], [product_image] FROM [Product_details]"></asp:SqlDataSource>
            <br />
            <br />
        </div>
        </div>
    </form>
</body>
</html>
