<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="YemekTarifleriSitem.YemekDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style21 {
            text-align: right;
        }
        .auto-style23 {
            height: 25px;
        }
        .auto-style24 {
            height: 25px;
            text-align: right;
        }
        .auto-style26 {
            text-align: left;
            height: 26px;
        }
        .auto-style27 {
            text-align: right;
            height: 26px;
        }
        .auto-style28 {
            height: 26px;
        }
        .auto-style29 {
            font-weight: bold;
        }
        .auto-style30 {
            font-weight: bold;
            font-size: large;
            background-color: #FF9933;
        }
        .auto-style31 {
            font-weight: bold;
            font-size: large;
            margin-bottom: 0px;
            background-color: #CC3300;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style19">
        <tr>
            <td class="auto-style20" colspan="2"><strong><em>YEMEK TARİFİ DÜZENLEME</em></strong></td>
        </tr>
        <tr>
            <td class="auto-style27"><strong>Yemek Ad:</strong></td>
            <td class="auto-style28">
                <asp:TextBox ID="TxtAd" runat="server" Width="300px" Height="20px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style21"><strong>Yemek Malzeme:</strong></td>
            <td>
                <asp:TextBox ID="TxtMalzeme" runat="server" Height="150px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style21"><strong>Yemek Tarif:</strong></td>
            <td>
                <asp:TextBox ID="TxtTarif" runat="server" Height="200px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style24"><strong>Kategori:</strong></td>
            <td class="auto-style23"><strong><em>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style29" Height="30px" Width="300px">
                </asp:DropDownList>
                </em></strong></td>
        </tr>
        <tr>
            <td class="auto-style24"><strong>Yemek Fotoğrafı:</strong></td>
            <td class="auto-style23">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="20px" Width="300px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style28"></td>
            <td class="auto-style26"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style30" Height="30px" OnClick="Button1_Click" Text="Güncelle" Width="150px" />
                <asp:Button ID="gununyemegi" runat="server" CssClass="auto-style31" Height="30px" OnClick="gununyemegi_Click" Text="Günün Yemeği" Width="150px" />
                </strong></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
