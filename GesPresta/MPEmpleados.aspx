<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MPEmpleados.aspx.cs" Inherits="GesPresta.MPEmpleados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="tituloCuerpo">
    <h3>DATOS DE LOS EMPLEADOS</h3>
 </div>
<div class="cuerpo">
<div class="secciones">
    <asp:Label ID="Label1" runat="server" Text="Código Empleado" CssClass="etiqueta"></asp:Label>
    <asp:TextBox ID="txtCodEmp" runat="server" CssClass="introTexto"></asp:TextBox>
    </div>
<div class="secciones">
    <asp:Label ID="Label2" runat="server" Text="NIF" CssClass="etiqueta"></asp:Label>
    <asp:TextBox ID="txtNifEmp" runat="server" CssClass="introTexto"></asp:TextBox>
  </div>
    <div class="secciones">
        <asp:Label ID="Label3" runat="server" Text="Apellidos y Nombre" CssClass="etiqueta"></asp:Label>
        <asp:TextBox ID="txtNomEmp" runat="server" CssClass="introTexto"></asp:TextBox>
  </div>
    <div class="secciones">
        <asp:Label ID="Label4" runat="server" Text="Dirección" CssClass="etiqueta"></asp:Label>
        <asp:TextBox ID="txtDirEmp" runat="server" CssClass="introTexto"></asp:TextBox>
  </div>
    <div class="secciones">
        <asp:Label ID="Label5" runat="server" Text="Ciudad" CssClass="etiqueta"></asp:Label>
        <asp:TextBox ID="txtCiuEmp" runat="server" CssClass="introTexto"></asp:TextBox>
  </div>
    <div class="secciones">
        <asp:Label ID="Label6" runat="server" Text="Teléfonos" CssClass="etiqueta"></asp:Label>
        <asp:TextBox ID="txtTelEmp" runat="server" CssClass="introTexto"></asp:TextBox>
  </div>
    <div class="secciones">
        <asp:Label ID="Label7" runat="server" Text="Fecha de Nacimiento" CssClass="etiqueta"></asp:Label>
        <asp:TextBox ID="txtFnaEmp" runat="server" CssClass="introTexto"></asp:TextBox>
  </div>
    <div class="secciones">
        <asp:Label ID="Label8" runat="server" Text="Fecha de Ingreso" CssClass="etiqueta"></asp:Label>
        <asp:TextBox ID="txtFinEmp" runat="server" CssClass="introTexto"></asp:TextBox>
  </div>
    <div class="secciones">
        <asp:Label ID="Label9" runat="server" Text="Sexo" CssClass="etiqueta"></asp:Label>
        <asp:RadioButtonList ID="rblSexEmp" runat="server" CssClass="introTexto opcionesIntro" RepeatDirection="Horizontal">
            <asp:ListItem Selected="True" Value="H">Hombre</asp:ListItem>
            <asp:ListItem Value="M">Mujer</asp:ListItem>
        </asp:RadioButtonList>
  </div>
    <div class="secciones">
        <asp:Label ID="Label10" runat="server" Text="Departamento" CssClass="etiqueta"></asp:Label>
        <asp:DropDownList ID="ddlDepEmp" runat="server" CssClass="introTexto">
            <asp:ListItem Selected="True">Investigación</asp:ListItem>
            <asp:ListItem>Desarrollo</asp:ListItem>
            <asp:ListItem>Innovación</asp:ListItem>
            <asp:ListItem>Administración</asp:ListItem>
        </asp:DropDownList>
  </div>
    <div class="secciones">
        <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" CssClass="boton" />
  </div>
</div>
</asp:Content>
