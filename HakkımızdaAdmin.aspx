<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkımızdaAdmin.aspx.cs" Inherits="YemekTarifleriSitem.HakkımızdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style30 {
            background-color:lightgray;
            font-size: large;
            margin-top:10px;
        }
        .auto-style39 {
            text-align: left;
            width: 231px;
            font-size: large;
            background-color: #CCCCCC;
        }
        .auto-style35 {
            text-align: left;
            width: 33px;
            background-color: #CCCCCC;
        }
        .auto-style33 {
            font-weight: bold;
            font-size: x-large;
            background-color: #FFCC66;
        }
        .auto-style29 {
            text-align: left;
            background-color: #CCCCCC;
        }
        .auto-style34 {
            font-weight: bold;
            font-size: x-large;
            margin-left: 0px;
            background-color: #FFCC66;
        }
        .auto-style40 {
            margin-left: 160px;
        }
        .auto-style41 {
            margin-left: 160px;
            text-align: center;
        }
        .auto-style42 {
            font-weight: bold;
            font-size: large;
        background-color: #FF9900;
    }
        .auto-style43 {
        font-size: large;
        font-weight: bold;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style30">
        <div class="auto-style6">
            <span>
            <td class="auto-style29"></td>
            </span>
            <table class="auto-style19">
                <tr>
                    <td class="auto-style39"><strong>&nbsp;Hakkımızda Güncelleme&nbsp; </strong></td>
                    <td class="auto-style35"><strong>
                        <asp:Button ID="Button1" runat="server" BorderStyle="Solid" CssClass="auto-style33" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" />
                        </strong></td>
                    <td class="auto-style29"><strong>
                        <asp:Button ID="Button2" runat="server" BorderStyle="Solid" CssClass="auto-style34" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click" />
                        </strong></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style19">
            <tr>
                <td class="auto-style40">
                    <em><strong>
                    <asp:TextBox ID="TxtHakkimizda" runat="server" CssClass="auto-style43" Height="250px" TextMode="MultiLine" Width="435px"></asp:TextBox>
                    </strong></em>
                </td>
            </tr>
            <tr>
                <td class="auto-style41"><strong>
                    <asp:Button ID="BtnHakkimizdaGuncelle" runat="server" CssClass="auto-style42"  Text="Güncelle" Height="30px" OnClick="BtnHakkimizdaGuncelle_Click" Width="100px" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style40">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
