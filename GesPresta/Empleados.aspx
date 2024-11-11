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
             <div class="secciones">
                    <asp:Label ID="Label1" runat="server" Text="Código Empleado" CssClass="etiqueta"></asp:Label>
                    <asp:TextBox ID="txtCodEmp" runat="server" CssClass="introTexto"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="rqdTxtCodEmp" runat="server" ErrorMessage="El Código Empleado es obligatorio" ControlToValidate="txtCodEmp" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="regTxtCodEmp" runat="server" ControlToValidate="txtCodEmp" ErrorMessage="El formato de los datos a introducir debe ser: A11111" ForeColor="Green" ValidationExpression="\w\d{5}">*</asp:RegularExpressionValidator>
              </div>
              <div class="secciones">                    
                  <asp:Label ID="Label2" runat="server" Text="NIF" CssClass="etiqueta"></asp:Label>
                    <asp:TextBox ID="txtNifEmp" runat="server" CssClass="introTexto"></asp:TextBox>
                  <br />
                  <asp:RequiredFieldValidator ID="rqdTxtNifEmp" runat="server" ErrorMessage="El NIF de Empleado es obligatorio" ControlToValidate="txtNifEmp" ForeColor="Red">*</asp:RequiredFieldValidator>
                  <br />
                  <asp:RegularExpressionValidator ID="regTxtNifEmp" runat="server" ControlToValidate="txtNifEmp" ErrorMessage="El formato de los datos a introducir debe ser: 11111111-A" ForeColor="Green" ValidationExpression="\d{8}-\w">*</asp:RegularExpressionValidator>
              </div>
              <div class="secciones">                    
                  <asp:Label ID="Label3" runat="server" Text="Apellidos y Nombre" CssClass="etiqueta"></asp:Label>
                    <asp:TextBox ID="txtNomEmp" runat="server" CssClass="introTexto"></asp:TextBox>
                  <br />
                  <asp:RequiredFieldValidator ID="rqdTxtNomEmp" runat="server" ErrorMessage="El Nombre y Apelidos son obligatorios" ControlToValidate="txtNomEmp" ForeColor="Red">*</asp:RequiredFieldValidator>
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
                  <br />
                  <asp:RequiredFieldValidator ID="rqdTxtTelEmp" runat="server" ErrorMessage="El Teléfono es obligatorio" ControlToValidate="txtTelEmp" ForeColor="Red">*</asp:RequiredFieldValidator>
              </div>
              <div class="secciones">                    
                  <asp:Label ID="Label7" runat="server" Text="Fecha de Nacimiento" CssClass="etiqueta"></asp:Label>
                   <asp:TextBox ID="txtFnaEmp" runat="server" CssClass="introTexto"></asp:TextBox>
                  <br />
                  <asp:RequiredFieldValidator ID="rqdTxtFnaEmp" runat="server" ErrorMessage="La fecha de naciemiento es obligatoria" ControlToValidate="txtFnaEmp" ForeColor="Red">*</asp:RequiredFieldValidator>
                  <br />
                  <asp:CompareValidator ID="cmpTxtFnaEmp" runat="server" ErrorMessage="La Fecha de Ingreso del Empleado debe ser mayor que la Fecha de Nacimiento" ForeColor="Red" ControlToCompare="txtFinEmp" Type="Date" ControlToValidate="txtFnaEmp" Operator="LessThan">*</asp:CompareValidator>
                  <br />
                  <asp:RegularExpressionValidator ID="regTxtFnaEmp" runat="server" ControlToValidate="txtFnaEmp" ErrorMessage="El formato de los datos a introducir debe ser: dd/mm/aaaa" ForeColor="Green" ValidationExpression="\d\d\/\d\d\/\d\d\d\d">*</asp:RegularExpressionValidator>
              </div>
              <div class="secciones">
                    <asp:Label ID="Label8" runat="server" Text="Fecha de Ingreso" CssClass="etiqueta"></asp:Label>
                    <asp:TextBox ID="txtFinEmp" runat="server" CssClass="introTexto"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="rqdTxtFinEmp" runat="server" ErrorMessage="La fecha de ingreso es obligatoria" ControlToValidate="txtFinEmp" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="regTxtFinEmp" runat="server" ControlToValidate="txtFinEmp" ErrorMessage="El formato de los datos a introducir debe ser: dd/mm/aaaa" ForeColor="Green" ValidationExpression="\d\d\/\d\d\/\d\d\d\d">*</asp:RegularExpressionValidator>
              </div>
              <div class="secciones">                    <asp:Label ID="Label9" runat="server" Text="Sexo" CssClass="etiqueta"></asp:Label>
                    <asp:RadioButtonList ID="rblSexEmp" runat="server" RepeatDirection="Horizontal" CssClass="introTexto opcionesIntro">
                        <asp:ListItem Selected="True" Value="H">Hombre</asp:ListItem>
                        <asp:ListItem Value="M">Mujer</asp:ListItem>
                    </asp:RadioButtonList>
              </div>
              <div class="secciones">                    <asp:Label ID="Label10" runat="server" Text="Departamento" CssClass="etiqueta"></asp:Label>
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
            <div class="secciones">

                <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ForeColor="Red" CssClass="cajaValidacion"/>

                </div>
        </div>
    </form>
</body>
</html>
