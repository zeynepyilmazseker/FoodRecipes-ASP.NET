<%@ Page Title="" Language="C#" MasterPageFile="~/Rapor.Master" AutoEventWireup="true" CodeBehind="Raporlama.aspx.cs" Inherits="YemekTarifleriSitem.Raporlama" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<rsweb:ReportViewer ID="ReportViewer2" runat="server" Width="1495px">
</rsweb:ReportViewer>
    </asp:Content>
