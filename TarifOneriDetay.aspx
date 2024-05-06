<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOneriDetay.aspx.cs" Inherits="YemekTarifleriSitem.TarifOneriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style24 {
            width: 100%;
        }
        .auto-style29 {
            text-align: right;
        }
        .auto-style28 {
            font-weight: bold;
            font-size: medium;
        }
        .auto-style32 {
            color: #000099;
            margin-bottom: 0px;
        }
        .auto-style33 {
            text-align: left;
            font-size: large;
        }
        .auto-style34 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style24">
            <tr>
                <td class="auto-style33" colspan="2"><em><strong>TARİF ÖNERİ DÜZENLEME FORMU</strong></em></td>
            </tr>
            <tr>
                <td class="auto-style29"><strong>Tarif Ad:</strong></td>
                <td>
                    <asp:TextBox ID="TxtTarifAd" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style29"><strong>Tarif Malzemeler:</strong></td>
                <td>
                    <asp:TextBox ID="TxtMalzemeler" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style29"><strong>Yapılış:</strong></td>
                <td>
                    <asp:TextBox ID="TxtYapilis" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style29"><strong>Tarif Resmi:</strong></td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style29"><strong>Tarif Öneren:</strong></td>
                <td>
                    <asp:TextBox ID="TxtOneren" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style29"><strong>Mail Adresi</strong></td>
                <td>
                    <asp:TextBox ID="TxtMail" runat="server" Height="20px" TextMode="Email" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style29"><strong>Kategori:</strong></td>
                <td><strong>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style34" Height="30px" Width="200px">
                    </asp:DropDownList>
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="BtnTarifOnayla" runat="server" CssClass="auto-style28" OnClick="BtnTarifOnayla_Click" Text="Tarifi Onayla" Width="200px" />
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Label ID="LabelMessage0" runat="server" CssClass="auto-style32" Height="20px" Width="200px"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
