<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Cabecera.ascx.cs" Inherits="GesPresta.Cabecera" %>
<header>
    <nav>
        <ul>
            <li><asp:LinkButton ID="Default" PostBackUrl="~/Default.aspx" runat="server">Inicio</asp:LinkButton></li>
            <li><asp:LinkButton ID="LinkButton2"  PostBackUrl="~/Empleados.aspx" runat="server">Empleados</asp:LinkButton></li>
            <li><asp:LinkButton ID="LinkButton3" PostBackUrl="~/Prestaciones.aspx" runat="server">Prestaciones</asp:LinkButton></li>
        </ul>   
    </nav>
    <div class="titulos">
        <h2>Acame Innovación, S. Fig</h2>
        <h4>Gestión de Prestaciones Sociales</h4>
    </div>
</header>