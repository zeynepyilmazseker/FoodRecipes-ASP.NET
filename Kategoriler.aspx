<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="YemekTarifleriSitem.Kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style21 {
            background-color: #99CCFF;
        }
    .auto-style25 {
        font-size: large;
    }
        .auto-style26 {
            text-align: right;
        }
        .auto-style27 {
            text-align: left;
            width: 294px;
        }
        .auto-style29 {
            text-align: left;
            background-color: #CCCCCC;
        }
        .auto-style30 {
            background-color:lightgray;
            font-size: large;
            margin-top:10px;
        }
        .auto-style33 {
            font-weight: bold;
            font-size: x-large;
            background-color: #FFCC66;
        }
        .auto-style34 {
            font-weight: bold;
            font-size: x-large;
            margin-left: 0px;
            background-color: #FFCC66;
        }
        .auto-style35 {
            text-align: left;
            width: 33px;
            background-color: #CCCCCC;
        }
        .auto-style36 {
            text-align: left;
            width: 144px;
            font-size: large;
            background-color: #CCCCCC;
        }
        .auto-style38 {
            border: 2px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 230px;
            font-weight: bold;
            font-size: 12pt;
        }
        .auto-style39 {
            text-align: left;
            width: 148px;
            font-size: large;
            background-color: #CCCCCC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style30">
        <div class="auto-style6">
            <span>
            <td class="auto-style29"></td>
            </span>
            <table class="auto-style19">
                <tr>
                    <td class="auto-style39"><strong>&nbsp;Kategori Listesi&nbsp; </strong></td>
                    <td class="auto-style35"><strong>
                        <asp:Button ID="Button1" runat="server" BorderStyle="Solid" CssClass="auto-style33" Height="30px" OnClick="Button1_Click" Text="+" Width="30px" />
                        </strong></td>
                    <td class="auto-style29"><strong>
                        <asp:Button ID="Button2" runat="server" BorderStyle="Solid" CssClass="auto-style34" Height="30px" OnClick="Button2_Click" Text="-" Width="30px" />
                        </strong></td>
                </tr>
            </table>
        </div>
        
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="449px" CssClass="auto-style21">
            <ItemTemplate>
                <table class="auto-style19">
                    <tr>
                        <td class="auto-style27"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style25" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style26">
                           <a href="Kategoriler.aspx?Kategoriid=<%#Eval("Kategoriid")%>&islem=sil"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/resimler/delete.png" Width="30px" /></a>
                        </td>
                        <td class="auto-style26">
                           <a href="KategoriDuzenle.aspx?Kategoriid=<%#Eval("Kategoriid")%>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/resimler/update.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style30">
        <div class="auto-style6">
            <span>
            <td class="auto-style29"></td>
            </span>
            <table class="auto-style19">
                <tr>
                    <td class="auto-style36"><strong>&nbsp;Kategori Ekleme</strong></td>
                    <td class="auto-style35"><strong>
                        <asp:Button ID="Button3" runat="server" BorderStyle="Solid" CssClass="auto-style33" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click" />
                        </strong></td>
                    <td class="auto-style29"><strong>
                        <asp:Button ID="Button4" runat="server" BorderStyle="Solid" CssClass="auto-style34" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" />
                        </strong></td>
                </tr>
            </table>
        </div>
        
    </asp:Panel>

    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style19">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><strong>Kategori Ad:</strong></td>
                <td>
                    <asp:TextBox ID="TxtAd" runat="server" Height="25px" Width="218px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>Kategori İkon:</strong></td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="25px" Width="224px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="BtnEkle" runat="server" CssClass="auto-style38" Height="30px" Text="Ekle" Width="100px" OnClick="BtnEkle_Click" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
    </asp:Content>
