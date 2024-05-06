<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="YemekTarifleriSitem.AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {
            width: 100%;
        }

        .auto-style14 {
            font-size: x-large;
            background-color: #CCCCCC;
        }

        .auto-style15 {
            height: 25px;
        }

        .auto-style16 {
            text-align: left;
            height: 36px;
            background-color: #CCCCCC;
        }

        .auto-style18 {
            height: 25px;
            background-color: #FFFFCC;
        }

       

       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:DataList ID="DataList2" runat="server" Width="441px" Height="533px" CssClass="auto-style21" Style="margin-left: 7px">
    <ItemTemplate>
        <table class="auto-style13">
            <tr>
                <td class="auto-style16"><strong><a href="YemekDetay.aspx?Yemekid=<%# Eval("Yemekid") %>">
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style14" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </a></strong></td>
            </tr>
            <tr>
                <td style="height:auto;"><strong>Malzemeler:</strong>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="height:auto;"><strong>Yapılış:</strong>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Tarih:</strong>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        &nbsp;<strong> Puan:</strong> <strong>
                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Image ID="Image2" runat="server" Height="250px" ImageUrl='<%# Eval("YemekResim") %>' Width="250px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>


</asp:Content>
