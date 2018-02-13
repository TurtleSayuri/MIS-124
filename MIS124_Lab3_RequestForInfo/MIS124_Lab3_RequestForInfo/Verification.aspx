<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/CSUS.Master" CodeBehind="Verification.aspx.vb" Inherits="MIS124_Lab3_RequestForInfo.Verification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Dear
    <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>
    ,<p>
        We have received your request for information relating to your
        <asp:Label ID="lblMajor" runat="server" Text="Label"></asp:Label>
&nbsp;major for
        <asp:Label ID="lblRequests" runat="server" Text="lblRequests"></asp:Label>
        .</p>
    <asp:Button ID="btnMore" runat="server" Text="More Requests" />
    <p>
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
    </p>
</asp:Content>
