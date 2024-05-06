<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriDuzenle.aspx.cs" Inherits="YemekTarifleriSitem.KategoriDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style21 {
            font-weight: bold;
            font-size: medium;
        }
        .auto-style22 {
            font-size: large;
        }
        .auto-style23 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style19">
        <tr>
            <td class="auto-style22" colspan="2"><strong>Kategori Güncelle</strong></td>
        </tr>
        <tr>
            <td class="auto-style23"><strong>Kategori Ad:</strong></td>
            <td>
                <asp:TextBox ID="TxtAd" runat="server" Height="25px" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style23"><strong>Adet:</strong></td>
            <td>
                <asp:TextBox ID="TxtAdet" runat="server" Height="25px" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style23"><strong>Kategori İkon:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Height="25px" Width="150px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>
                <asp:Button ID="BtnGuncelle" runat="server" CssClass="auto-style21" Height="25px" OnClick="BtnGuncelle_Click" Text="Güncelle" Width="150px" />
                </strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
