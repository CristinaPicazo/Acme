<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MPPrestaciones.aspx.cs" Inherits="GesPresta.MPPrestaciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="tituloCuerpo">
    <h3>DATOS DE LAS PRESTACIONES</h3>
</div>
<div class="cuerpo">
    <div class="secciones">
        <asp:Label ID="Label1" runat="server" Text="Código Prestación" CssClass="etiqueta"></asp:Label>
        <asp:TextBox ID="txtCodPre" runat="server" CssClass="introTexto"></asp:TextBox>
        </div>
        <div class="secciones">
            <asp:Label ID="Label2" runat="server" Text="Descripción" CssClass="etiqueta"></asp:Label>
            <asp:TextBox ID="txtDesPre" runat="server" CssClass="introTexto"></asp:TextBox>
        </div>
        <div class="secciones">
            <asp:Label ID="Label3" runat="server" Text="Importe Fijo" CssClass="etiqueta"></asp:Label>
            <asp:TextBox ID="txtImpPre" runat="server" CssClass="introTexto"></asp:TextBox>
        </div>
        <div class="secciones">
            <asp:Label ID="Label4" runat="server" Text="Porcentaje del Importe" CssClass="etiqueta"></asp:Label>
            <asp:TextBox ID="txtPorPre" runat="server" CssClass="introTexto"></asp:TextBox>
        </div>
       <div class="secciones">
           <asp:Label ID="Label5" runat="server" Text="Tipo de Prestación" CssClass="etiqueta"></asp:Label>
           <asp:DropDownList ID="ddlTipPre" runat="server" CssClass="introTexto">
               <asp:ListItem>Dentaria</asp:ListItem>
               <asp:ListItem>Familiar</asp:ListItem>
               <asp:ListItem Selected="True">Ocular</asp:ListItem>
               <asp:ListItem>Otras</asp:ListItem>
           </asp:DropDownList>
            </div>
        <div class="secciones">
            <asp:Button ID="Button1" runat="server" Text="Button" CssClass="boton" />

        </div>
 </div>
</asp:Content>
