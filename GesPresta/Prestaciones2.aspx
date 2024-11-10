<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prestaciones2.aspx.cs" Inherits="GesPresta.Prestaciones2" %>

<%@ Register Src="Cabecera.ascx" TagName="Cabecera" TagPrefix="uc1" %>

<%@ Register src="prestacionesBuscar.ascx" tagname="prestacionesBuscar" tagprefix="uc2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
            <div class="secciones">
                <asp:Label ID="Label1" runat="server" Text="Código Prestación" CssClass="etiqueta"></asp:Label>
                <asp:TextBox ID="txtCodPre" runat="server" CssClass="introTexto"></asp:TextBox>
                <asp:Button ID="btnVerPrestaciones" runat="server" Text="Ver prestaciones" CssClass="boton" CausesValidation="False" OnClick="btnVerPrestaciones_Click" />
             </div>
            <div class="secciones prestaciones">                
                <uc2:prestacionesBuscar ID="prestacionesBuscar1" runat="server" Visible="False" />
                <asp:Button ID="btnSeleccionar" runat="server" Text="Seleccionar" CssClass="boton" CausesValidation="False" Visible="False" OnClick="btnSeleccionar_Click"/>
             </div>
            <div class="secciones mensajeError">
                <asp:RequiredFieldValidator ID="rqdTxtCodPre" runat="server" ControlToValidate="txtCodPre" ErrorMessage="El Código De Prestación es obligatorio" ForeColor="Red" CssClass="mensajeError">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regTxtCodPre" runat="server" ControlToValidate="txtCodPre" ErrorMessage="El formato de los datos a introducir debe ser: 111-111-111" ForeColor="Green" ValidationExpression="\d{3}-\d{3}-\d{3}"></asp:RegularExpressionValidator>
            </div>
            <div class="secciones">
                <asp:Label ID="Label2" runat="server" Text="Descripción" CssClass="etiqueta"></asp:Label>
                <asp:TextBox ID="txtDesPre" runat="server" CssClass="introTexto"></asp:TextBox>
                
            </div>
            <div class="secciones">
                <asp:Label ID="Label3" runat="server" Text="Importe Fijo" CssClass="etiqueta"></asp:Label>
                <asp:TextBox ID="txtImpPre" runat="server" CssClass="introTexto"></asp:TextBox>
            </div>
            <div class="secciones mensajeError">
                <asp:RequiredFieldValidator ID="rqdTxtImpPre" runat="server" ControlToValidate="txtImpPre" ErrorMessage="El Importe Fijo es obligatorio" ForeColor="Red" CssClass="mensajeError"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rngtxtImpPre" runat="server" ErrorMessage="El valor introducido debe estar comprendido entre 0 y 500" ControlToValidate="txtImpPre" ForeColor="Red" MaximumValue="500" MinimumValue="0" Type="Double" CssClass="mensajeError"></asp:RangeValidator>
            </div>
                <div class="secciones">
                <asp:Label ID="Label4" runat="server" Text="Porcentaje del Importe" CssClass="etiqueta">
                </asp:Label><asp:TextBox ID="txtPorPre" runat="server" CssClass="introTexto"></asp:TextBox>
            </div>
        <div class="secciones mensajeError">    
                <asp:RequiredFieldValidator ID="rqdTxtPorPre" runat="server" ControlToValidate="txtPorPre" ErrorMessage="El Porcentaje del Importe es obligatorio" ForeColor="Red" CssClass="mensajeError"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rngtxtPorPre" runat="server" ErrorMessage="El valor introducido debe estar comprendido entre el 0,00 y el 15,00 %" ControlToValidate="txtPorPre" ForeColor="Red" MaximumValue="15" MinimumValue="0" Type="Double" CssClass="mensajeError"></asp:RangeValidator>
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
                <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" CssClass="boton" />
            </div>
        </div>
    </form>
</body>
</html>
