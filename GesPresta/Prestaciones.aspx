<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prestaciones.aspx.cs" Inherits="GesPresta.Prestaciones" %>

<%@ Register src="Cabecera.ascx" tagname="Cabecera" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Prestaciones</title>
    <link rel="stylesheet" href="HojaEstilos.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:Cabecera ID="Cabecera1" runat="server" />
        </div>
        <div class="tituloCuerpo">
            <h3>DATOS DE LAS PRESTACIONES</h3>
        </div>
        <div class="cuerpo">
            <ul>
                <li>
                    <asp:Label ID="Label1" runat="server" Text="Código Prestación" CssClass="etiqueta"></asp:Label>
                    <asp:TextBox ID="txtCodPre" runat="server" CssClass="introTexto"></asp:TextBox>
                </li>
                <li>
                    <asp:Label ID="Label2" runat="server" Text="Descripción" CssClass="etiqueta"></asp:Label>
                    <asp:TextBox ID="txtDesPre" runat="server" CssClass="introTexto"></asp:TextBox>
                </li>
                <li>
                    <asp:Label ID="Label3" runat="server" Text="Importe Fijo" CssClass="etiqueta"></asp:Label>
                    <asp:TextBox ID="txtImpPre" runat="server" CssClass="introTexto"></asp:TextBox>
                </li>
                <li>
                    <asp:Label ID="Label4" runat="server" Text="Porcentaje del Importe" CssClass="etiqueta">
                    </asp:Label><asp:TextBox ID="txtPorPre" runat="server" CssClass="introTexto"></asp:TextBox>
                </li>
                <li>
                    <asp:Label ID="Label5" runat="server" Text="Tipo de Prestación" CssClass="etiqueta"></asp:Label>
                    <asp:DropDownList ID="ddlTipPre" runat="server" CssClass="introTexto">
                        <asp:ListItem>Dentaria</asp:ListItem>
                        <asp:ListItem>Familiar</asp:ListItem>
                        <asp:ListItem Selected="True">Ocular</asp:ListItem>
                        <asp:ListItem>Otras</asp:ListItem>
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
