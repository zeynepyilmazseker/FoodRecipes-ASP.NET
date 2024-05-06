<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="YemekTarifleriSitem.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style24 {
            width: 100%;
        }
        .auto-style25 {
            height: 25px;
        }
        .auto-style26 {
            font-size: 28pt;
            color: #CC3300;
        }
        .auto-style27 {
            font-size: x-small;
        }
        .auto-style28 {
            font-weight: bold;
            font-size: medium;
        }
        .auto-style29 {
            text-align: right;
        }
        .auto-style30 {
            text-align: center;
            font-size: large;
        }
        .auto-style31 {
            font-size: large;
            color: #3333CC;
        }
        .auto-style32 {
            color: #000099;
            margin-bottom: 0px;
        }
        .auto-style33 {
            height: 25px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div>
        <table class="auto-style24">
            <tr>
                <td><strong>
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style26" Text="Label"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style25"><strong>Malzemeler:</strong><asp:Label ID="TxtMalzemeler" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style25"><strong>
                    <asp:Label runat="server" Text="Yapılış"></asp:Label>
                    :</strong><asp:Label ID="TxtYapilis" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Puan:</strong>
                    <asp:Label ID="TxtPuan" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style25"><strong>Tarih:</strong><asp:Label ID="TxtTarih" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style33">
                    <asp:Image ID="Image2" runat="server" Height="250px" Width="250px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style30" style="border-bottom-style: inset; border-bottom-width: thin; border-bottom-color: #000000"><strong>Yorumlar</strong></td>
            </tr>
        </table>
    </div>
    <div>

        <asp:DataList ID="DataList3" runat="server" Width="419px">
            <ItemTemplate>
                <table class="auto-style24">
                    <tr>
                        <td><strong>
                            <asp:Label ID="TxtAdSoyad" runat="server" CssClass="auto-style31" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </strong></td>
                    </tr>
                    <tr>
                        <td style="border-bottom-style: inset; border-bottom-width: thin">
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("YorumIcerik") %>'></asp:Label>
                            &nbsp;<asp:Label ID="Label6" runat="server" CssClass="auto-style27" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>


    </div>
    <br />
    <div style="background-color:lightgray; border-bottom-style: inset; border-bottom-width: medium; border-bottom-color: #000000;" class="auto-style30">  <strong><em>Tarifimizi Denediniz mi ?&nbsp; </em> </strong> </div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style24">
            <tr>
                <td class="auto-style29"><strong>Ad Soyad:</strong></td>
                <td>
                    <asp:TextBox ID="TxtBoxAdSoyad" runat="server" Height="30px" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style29"><strong>Mail:</strong></td>
                <td>
                    <asp:TextBox ID="TxtBoxMail" runat="server" Height="30px" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style29"><strong>Yorumunuz:</strong></td>
                <td>
                    <asp:TextBox ID="TxtBoxYorum" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style28" Text="Yorum Yap" OnClick="Button1_Click" Width="200px" />
                    </strong></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><strong>
                    <asp:Label ID="LabelMessage" runat="server" CssClass="auto-style32" Height="20px" Width="200px"></asp:Label>
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>


