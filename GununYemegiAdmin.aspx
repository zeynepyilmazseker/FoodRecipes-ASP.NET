<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="YemekTarifleriSitem.GununYemegiAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style30 {
            background-color:lightgray;
            font-size: large;
            margin-top:10px;
        }
        .auto-style39 {
            text-align: left;
            width: 148px;
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
            text-align: right;
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
                    <td class="auto-style39"><strong>&nbsp;Yemek Listesi&nbsp; </strong></td>
                    <td class="auto-style35"><strong>
                        <asp:Button ID="Button1" runat="server" BorderStyle="Solid" CssClass="auto-style33" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click"  />
                        </strong></td>
                    <td class="auto-style29"><strong>
                        <asp:Button ID="Button2" runat="server" BorderStyle="Solid" CssClass="auto-style34" Height="30px"  Text="-" Width="30px" OnClick="Button2_Click"  />
                        </strong></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="449px" CssClass="auto-style21">
            <ItemTemplate>
                <table class="auto-style19">
                    <tr>
                        <td class="auto-style27"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style25" Text='<%# Eval("YemekAd") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style40">
                           <a href="YemekDuzenle.aspx?Yemekid=<%#Eval("Yemekid")%>"> <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/resimler/choose.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
</asp:Content>
