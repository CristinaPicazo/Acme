<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prestaciones1Respuesta.aspx.cs" Inherits="GesPresta.Prestaciones1Respuesta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Respuesta Prestaciones</title>
    <link rel="stylesheet" href="HojaEstilos.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="tituloCuerpo">
            <h3>DATOS DE LAS PRESTACIONES</h3>
        </div>
        <div class="cuerpoEtiqueta">
            <asp:Label ID="lblValores" runat="server" Text="Label" BackColor="#C0FFFF" Width="70%" CssClass="etiqueta"></asp:Label>
        </div>
    </form>
</body>
</html>
