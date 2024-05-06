<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="YemekTarifleriSitem.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style20 {
            font-size: x-large;
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style20">
        <strong><em>Hakkkımızda</em></strong></p>
    <p class="auto-style20">
        <asp:DataList ID="DataList2" runat="server" CssClass="auto-style7" Width="449px">
            <ItemTemplate>
                <strong><em>
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
                </em></strong>
            </ItemTemplate>
        </asp:DataList>
    </p>
    <asp:Image ID="Image1" runat="server" Height="288px" ImageUrl="~/resimler/team.jpg" Width="450px" />
</asp:Content>
