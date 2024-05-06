<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="AdminKayıtOl.aspx.cs" Inherits="YemekTarifleriSitem.AdminKayıtOl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style21 {
        font-size: large;
        text-align: right;
    }
        .auto-style22 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style23 {
            font-weight: bold;
            font-size: large;
            background-color: #FFCC66;
        }
        .auto-style24 {
            display: inline-block;
            margin-bottom: 0;
            font-weight: bold;
            text-align: center;
            white-space: nowrap;
            vertical-align: middle;
            -ms-touch-action: manipulation;
            touch-action: manipulation;
            cursor: pointer;
            background-image: none;
            border: 1px solid transparent;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            border-radius: 4px;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
    <asp:Label ID="Label1" runat="server" Text="Admin Kayıt Ol" CssClass="auto-style7"></asp:Label>
    &nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" CssClass="auto-style23" OnClick="Button1_Click" Text="+" Width="30px" />
&nbsp;
    <asp:Button ID="Button2" runat="server" CssClass="auto-style22" OnClick="Button2_Click" Text="-" Width="30px" />
        <br />
    </strong>&nbsp;<asp:Panel ID="Panel1" runat="server">
           <table class="nav-justified">
  <tr>
    <td class="text-left" colspan="2">&nbsp;</td>
</tr>
<tr>
    <td class="text-right"></span><strong><span class="auto-style7">Ad:</span></strong></td>
    <td>
        <asp:TextBox ID="TxtAd" runat="server" Height="25px" Width="200px" CssClass="auto-style7"></asp:TextBox>
    </td>
</tr>
<tr>
    <td class="auto-style21"><strong>Soyad:</strong></td>
    <td>
        <asp:TextBox ID="TxtSoyad" runat="server" Height="25px" Width="200px" CssClass="auto-style7"></asp:TextBox>
    </td>
</tr>
<tr>
    <td class="auto-style21"><strong>Mail:</strong></td>
    <td>
        <asp:TextBox ID="TxtMail" runat="server" Height="25px" TextMode="Email" Width="200px" CssClass="auto-style7"></asp:TextBox>
    </td>
</tr>
<tr>
    <td class="auto-style21"><strong>Şifre:</strong></td>
    <td>
        <asp:TextBox ID="TxtSifre" runat="server" Height="25px" TextMode="Password" Width="200px" CssClass="auto-style7"></asp:TextBox>
    </td>
</tr>
<tr>
    <td>&nbsp;</td>
    <td><strong>
        <asp:Button ID="kayitol" runat="server" CssClass="btn" OnClick="kayitol_Click" Text="Kayıt Ol" Width="200px" style="font-weight: bold; font-size: large;" Height="41px" />
        </strong></td>
</tr>
<tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
</tr>
   </table>
    </asp:Panel>
    <strong>
    <asp:Label ID="Label2" runat="server" Text="Admin Giriş Yap" CssClass="auto-style7"></asp:Label>

    &nbsp;<asp:Button ID="Button3" runat="server" CssClass="auto-style23"  Text="+" Width="30px" OnClick="Button3_Click" />
&nbsp;
    <asp:Button ID="Button4" runat="server" CssClass="auto-style22"  Text="-" Width="30px" OnClick="Button4_Click" />
    </strong>

    <asp:Panel ID="Panel2" runat="server">
        <table class="nav-justified">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21"><strong>Mail:</strong></td>
                <td>
                    <asp:TextBox ID="TxtGirisMail" runat="server" Height="25px" TextMode="Email" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style21"><strong>Şifre:</strong></td>
                <td>
                    <asp:TextBox ID="TxtSifreGiris" runat="server" Height="25px" TextMode="Password" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td><strong>
                    <asp:Button ID="GirisYap" runat="server" CssClass="auto-style24" Text="Giriş Yap" Width="200px" OnClick="GirisYap_Click" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </asp:Panel>
</asp:Content>
