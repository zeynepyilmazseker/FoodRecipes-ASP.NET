<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajDetay.aspx.cs" Inherits="YemekTarifleriSitem.MesajDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style21 {
            height: 25px;
        }
        .auto-style22 {
            height: 25px;
            text-align: right;
        }
        .auto-style23 {
            text-align: right;
        }
        .auto-style24 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style19">
        <tr>
            <td class="auto-style24" colspan="2"><strong><em>Mesaj Detay</em></strong></td>
        </tr>
        <tr>
            <td class="auto-style23"><strong>Ad Soyad:</strong></td>
            <td>
                <asp:TextBox ID="TxtAdSoyad" runat="server" Height="25px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style23"><strong>Mail:</strong></td>
            <td>
                <asp:TextBox ID="TxtMail" runat="server" Height="25px" TextMode="Email" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style22"><strong>Mesaj Konu:</strong></td>
            <td class="auto-style21">
                <asp:TextBox ID="TxtKonu" runat="server" Height="25px" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style22"><strong>Mesaj:</strong></td>
            <td class="auto-style21">
                <asp:TextBox ID="TxtMesaj" runat="server" Height="150px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
