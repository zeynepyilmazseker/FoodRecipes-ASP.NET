<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="YemekTarifleriSitem.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style20 {
        width: 100%;
    }
    .auto-style21 {
        height: 26px;
    }
    .auto-style23 {
        text-align: right;
    }
    .auto-style24 {
        height: 26px;
        text-align: right;
    }
    .auto-style25 {
        text-align: center;
        font-size: x-large;
    }
    .auto-style26 {
        border: 2px solid #456879;
        border-radius: 10px;
        height: 22px;
        width: 230px;
        font-weight: bold;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style20">
    <tr>
        <td class="auto-style25" colspan="2"><em><strong>Bize Mesaj Gönder</strong></em></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style24"><strong>Ad Soyad:</strong></td>
        <td class="auto-style21">
            <asp:TextBox ID="TBAdSoyad" runat="server" CssClass="tb5" Height="20px" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style23"><strong>Mail Adresi:</strong></td>
        <td>
            <asp:TextBox ID="TBMail" runat="server" CssClass="tb5" Height="20px" Width="200px" TextMode="Email"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style23"><strong>Konu:</strong></td>
        <td>
            <asp:TextBox ID="TBKonu" runat="server" CssClass="tb5" Height="20px" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style23"><strong>Mesajınız:</strong></td>
        <td>
            <asp:TextBox ID="TBMesaj" runat="server" CssClass="tb5" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td><strong>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style26" Height="30px" Text="Mesaj Gönder" Width="200px" OnClick="Button1_Click" />
            </strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td><strong>
            <asp:Label ID="LblMessage" runat="server" CssClass="auto-style7"></asp:Label>
            </strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
