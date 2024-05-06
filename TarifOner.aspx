<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="YemekTarifleriSitem.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
       
      
        .auto-style20 {
            width: 100%;
        }
        .auto-style21 {
            height: 26px;
        }
        .auto-style22 {
            text-align: right;
        }
        .auto-style23 {
            height: 26px;
            text-align: right;
        }
        .auto-style25 {
            text-align: right;
            height: 160px;
        }
        .auto-style26 {
            height: 160px;
        }
       
      
        .auto-style27 {
            border: 2px solid #456879;
            border-radius: 10px;
            height: 22px;
            width: 230px;
            font-weight: bold;
        }
        .auto-style28 {
            height: 17px;
            text-align: center;
            font-size: x-large;
        }
       
      
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <table class="auto-style20">
        <tr>
            <td class="auto-style28" colspan="2"><strong><em>Tarif Öner</em></strong></td>
        </tr>
        <tr>
            <td class="auto-style22"><strong>Tarif Ad:</strong></td>
            <td>
                <asp:TextBox ID="TxtTarifAd" runat="server" Width="270px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style23"><strong>Malzemeler:</strong></td>
            <td class="auto-style21">
                <asp:TextBox ID="TxtMalzemeler" runat="server" Height="80px" TextMode="MultiLine" Width="270px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>Yapılış:</strong></td>
            <td class="auto-style26">
                <asp:TextBox ID="TxtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="270px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style22"><strong>Resim:</strong></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="270px" CssClass="tb5" />
            </td>
        </tr>
        <tr>
            <td class="auto-style22"><strong>Tarif Öneren</strong></td>
            <td>
                <asp:TextBox ID="TxtTarifOneren" runat="server" Width="270px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style22"><strong>Mail Adresi</strong></td>
            <td>
                <asp:TextBox ID="TxtMailAdresi" runat="server" TextMode="Email" Width="270px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong>
                <asp:Button ID="Btn_TarifOner" runat="server" CssClass="auto-style27" Height="40px" OnClick="BtnTarifOner_Click" Text="Tarif Öner" Width="150px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>


