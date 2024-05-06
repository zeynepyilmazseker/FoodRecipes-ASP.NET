<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="YemekTarifleriSitem.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style21 {
            height: 26px;
        }
        .auto-style22 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style23 {
            height: 26px;
            text-align: right;
            width: 114px;
        }
        .auto-style24 {
            text-align: right;
            width: 114px;
        }
        .auto-style25 {
            height: 26px;
            text-align: center;
        }
        .auto-style26 {
            font-size: x-large;
        }
        .auto-style27 {
            height: 26px;
            width: 114px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style19">
        <tr>
            <td class="auto-style26" colspan="2"><strong><em>Yorum Onayla</em></strong></td>
        </tr>
        <tr>
            <td class="auto-style24"><strong>Ad Soyad:</strong></td>
            <td>
                <asp:TextBox ID="TxtAdSoyad" runat="server" Height="25px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style24"><strong>Mail Adresi:</strong></td>
            <td>
                <asp:TextBox ID="TxtMail" runat="server" Height="25px" TextMode="Email" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style24"><strong>Yorum:</strong></td>
            <td>
                <asp:TextBox ID="TxtYorum" runat="server" Height="100px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style23"><strong>Yemek:</strong></td>
            <td class="auto-style21">
                <asp:TextBox ID="TxtYemek" runat="server" Height="25px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style25">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style22" OnClick="Button1_Click" Text="Onayla" Width="150px" />
            </td>
        </tr>
    </table>
</asp:Content>
