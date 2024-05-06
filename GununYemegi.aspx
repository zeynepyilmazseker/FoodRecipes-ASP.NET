<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemekTarifleriSitem.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {
            text-align: left;
            height: 8px;
        }
        .auto-style14 {
            height: 22px;
        }
        .auto-style15 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList3" runat="server">
        <ItemTemplate>
            <table class="auto-style9">
                <tr>
                    <td class="auto-style6"><strong>
                        <asp:Label ID="Label11" runat="server" CssClass="auto-style11" Text='<%# Eval("YemekAd") %>' style="font-size: x-large"></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td><strong>Malzemeler:</strong><asp:Label ID="Label12" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13"><strong>Tarif:</strong><asp:Label ID="Label13" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Image ID="Image2" runat="server" Height="250px" ImageUrl='<%# Eval("YemekResim") %>' Width="250px" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15"><strong>Puan:</strong><asp:Label ID="Label14" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14"><strong>Tarih:</strong><asp:Label ID="Label15" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
