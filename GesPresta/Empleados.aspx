<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Empleados.aspx.cs" Inherits="GesPresta.Empleados" %>

<%@ Register src="Cabecera.ascx" tagname="Cabecera" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Empleados</title>
    <link rel="stylesheet" href="HojaEstilos.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:Cabecera ID="Cabecera1" runat="server" />
        </div>   
        <div class="tituloCuerpo">
            <h3>DATOS DE LOS EMPLEADOS</h3>
         </div>
        <div class="cuerpo">
            <ul>
                <li>
                    <asp:Label ID="Label1" runat="server" Text="Código Empleado" CssClass="etiqueta"></asp:Label>
                    <asp:TextBox ID="txtCodEmp" runat="server" CssClass="introTexto"></asp:TextBox>
                </li>
                <li>
                    <asp:Label ID="Label2" runat="server" Text="NIF" CssClass="etiqueta"></asp:Label>
                    <asp:TextBox ID="txtNifEmp" runat="server" CssClass="introTexto"></asp:TextBox>
                </li>
                <li>
                    <asp:Label ID="Label3" runat="server" Text="Apellidos y Nombre" CssClass="etiqueta"></asp:Label>
                    <asp:TextBox ID="txtNomEmp" runat="server" CssClass="introTexto"></asp:TextBox>
                </li>
                <li>
                    <asp:Label ID="Label4" runat="server" Text="Dirección" CssClass="etiqueta"></asp:Label>
                    <asp:TextBox ID="txtDirEmp" runat="server" CssClass="introTexto"></asp:TextBox>
                </li>
                <li>
                    <asp:Label ID="Label5" runat="server" Text="Ciudad" CssClass="etiqueta"></asp:Label>
                    <asp:TextBox ID="txtCiuEmp" runat="server" CssClass="introTexto"></asp:TextBox>
                </li>
                <li>
                    <asp:Label ID="Label6" runat="server" Text="Teléfonos" CssClass="etiqueta"></asp:Label>
                    <asp:TextBox ID="txtTelEmp" runat="server" CssClass="introTexto"></asp:TextBox>
                </li>
                <li>
                    <asp:Label ID="Label7" runat="server" Text="Fecha de Nacimiento" CssClass="etiqueta"></asp:Label>
                    <asp:TextBox ID="txtFnaEmp" runat="server" CssClass="introTexto"></asp:TextBox>
                </li>
                <li>
                    <asp:Label ID="Label8" runat="server" Text="Fecha de Ingreso" CssClass="etiqueta"></asp:Label>
                    <asp:TextBox ID="txtFinEmp" runat="server" CssClass="introTexto"></asp:TextBox>
                </li>
                <li>
                    <asp:Label ID="Label9" runat="server" Text="Sexo" CssClass="etiqueta"></asp:Label>
                    <asp:RadioButtonList ID="rblSexEmp" runat="server" RepeatDirection="Horizontal" CssClass="introTexto opcionesIntro">
                        <asp:ListItem Selected="True" Value="H">Hombre</asp:ListItem>
                        <asp:ListItem Value="M">Mujer</asp:ListItem>
                    </asp:RadioButtonList>
                </li>
                <li>
                    <asp:Label ID="Label10" runat="server" Text="Departamento" CssClass="etiqueta"></asp:Label>
                    <asp:DropDownList ID="ddlDepEmp" runat="server" CssClass="introTexto">
                        <asp:ListItem Selected="True">Investigación</asp:ListItem>
                        <asp:ListItem>Desarrollo</asp:ListItem>
                        <asp:ListItem>Innovación</asp:ListItem>
                        <asp:ListItem>Administración</asp:ListItem>
                    </asp:DropDownList>
                </li>
                <li>
                    <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" CssClass="boton" />
                </li>
            </ul>
        </div>
    </form>
</body>
</html>
