<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOneriAdmin.aspx.cs" Inherits="YemekTarifleriSitem.TarifOneriAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style21 {
            font-size: large;
            
        }
        .auto-style22 {
            text-align: left;
            width: 361px;
        }
        .auto-style23 {
            width: 291px;
        }
        .auto-style24 {
            text-align: left;
            width: 356px;
        }
        .auto-style25 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style30" BackColor="LightGray">
        <div class="auto-style6">
            <span>
            <td class="auto-style29"></td>
            </span>
            <table class="auto-style19">
                <tr>
                    <td class="auto-style24"><strong><span class="auto-style21">Onaylanmayan Tarif Listesi&nbsp; </span></strong></td>
                    <td class="auto-style35"><strong>
                        <asp:Button ID="Button1" runat="server" BorderStyle="Solid" CssClass="auto-style33" Height="30px"  Text="+" Width="30px" OnClick="Button1_Click" style="font-size: large; font-weight: bold; background-color: #FF9900;" />
                        </strong></td>
                    <td class="auto-style29">
                        <asp:Button ID="Button2" runat="server" BorderStyle="Solid" CssClass="auto-style34" Height="30px" OnClick="Button2_Click" style="font-weight: bold; font-size: large; background-color: #FF9900" Text="-" Width="30px" />
                    </td>
                </tr>
            </table>
        </div>
    </asp:Panel>
       
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="449px" CssClass="auto-style21">
            <ItemTemplate>
                <table class="auto-style19">
                    <tr>
                        <td class="auto-style23"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style25" Text='<%# Eval("TarifAd") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style26">
                         
   <a href="TarifOneriAdmin.aspx?Tarifid=<%#Eval("Tarifid")+"&islem=sil" %>"> <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/resimler/delete.png" Width="30px" /></a>


                        </td>
                        <td class="auto-style26">
                          <a href="TarifOneriDetay.aspx?Tarifid=<%#Eval("Tarifid") %>">  <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/resimler/recommended.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
    <br />
        <asp:Panel ID="Panel3" runat="server"  CssClass="auto-style30" BackColor="LightGray">
        <div class="auto-style6">
            <span>
            <td class="auto-style29"></td>
            </span>
            <table class="auto-style19">
                <tr>
                    <td class="auto-style22"><strong><span class="auto-style21">Onaylanan Tarif Listesi&nbsp; </span></strong></td>
                    <td class="auto-style35"><strong>
                        <asp:Button ID="Button3" runat="server" BorderStyle="Solid" CssClass="auto-style33" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click" style="font-size: large; font-weight: bold; background-color: #FF9900;"  />
                        </strong></td>
                    <td class="auto-style29"><strong>
                        <asp:Button ID="Button4" runat="server" BorderStyle="Solid" CssClass="auto-style34" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" style="font-size: large; font-weight: bold; background-color: #FF9900;"  />
                        </strong></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
       
    <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="449px" CssClass="auto-style21">
            <ItemTemplate>
                <table class="auto-style19">
                    <tr>
                        <td class="auto-style23"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style25" Text='<%# Eval("TarifAd") %>'></asp:Label>
                            </strong></td>
                        <td class="auto-style25">
                         
                            <a href='TarifOneriDetay.aspx?Tarifid=<%#Eval("Tarifid") %>'>
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/resimler/recommended.png" Width="30px" />
                            </a>


                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
</asp:Panel>
</asp:Content>
