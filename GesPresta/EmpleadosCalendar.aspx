<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmpleadosCalendar.aspx.cs" Inherits="GesPresta.EmpleadosCalendar" %>

<%@ Register src="Cabecera.ascx" tagname="Cabecera" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Calendario</title>
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
                <div class="calendarios">
                    <div class="fechaNacimiento">
                        <asp:Label ID="Label7" runat="server" Text="Fecha de Nacimiento" CssClass="etiqueta"></asp:Label>
                        <asp:TextBox ID="txtFnaEmp" runat="server" CssClass="introTexto" OnTextChanged="txtFnaEmp_TextChanged" AutoPostBack="True"></asp:TextBox>

                        <asp:Calendar ID="CalendarioFnaEmp" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" OnSelectionChanged="CalendarioFnaEmp_SelectionChanged" TitleFormat="Month" Width="400px" CssClass="calendario">
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                            <DayStyle Width="14%" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                            <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                            <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                            <TodayDayStyle BackColor="#CCCC99" />
                        </asp:Calendar>
                    </div>
                    <div class="fechaIngreso">
                        <asp:Label ID="Label8" runat="server" Text="Fecha de Ingreso" CssClass="etiqueta"></asp:Label>
                        <asp:TextBox ID="txtFinEmp" runat="server" CssClass="introTexto" OnTextChanged="txtFinEmp_TextChanged" AutoPostBack="True"></asp:TextBox>
                        <asp:Calendar ID="CalendarioFinEmp" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" OnSelectionChanged="CalendarioFinEmp_SelectionChanged" TitleFormat="Month" Width="400px" CssClass="calendario">
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                            <DayStyle Width="14%" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                            <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                            <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                            <TodayDayStyle BackColor="#CCCC99" />
                        </asp:Calendar>
                        </div>
                        <div class="antiguedad">
                            <asp:Label ID="Label11" runat="server" Text="Antigüedad:"></asp:Label>
                            <asp:Label ID="Label12" runat="server" Text="Años"></asp:Label>
                            <asp:TextBox ID="txtAños" runat="server" Enabled="False"></asp:TextBox>
                            <asp:Label ID="Label13" runat="server" Text="Meses"></asp:Label>
                            <asp:TextBox ID="TxtMeses" runat="server" Enabled="False"></asp:TextBox>
                            <asp:Label ID="Label14" runat="server" Text="Días"></asp:Label>
                            <asp:TextBox ID="txtDias" runat="server" Enabled="False"></asp:TextBox>
                        </div>
                    </div>
                <div class="secciones">
                    <asp:Label ID="Label9" runat="server" Text="Sexo" CssClass="etiqueta"></asp:Label>
                    <asp:RadioButtonList ID="rblSexEmp" runat="server" RepeatDirection="Horizontal" CssClass="introTexto opcionesIntro">
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
                    <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" CssClass="boton" OnClick="cmdEnviar_Click" />
                </div>   

            <div class="etiqueta">
                <asp:Label ID="lblValores" runat="server" Text="Label" BackColor="#66FFFF" Visible="False" Width="60%"></asp:Label>
                <asp:Label ID="lblError1" runat="server" Text="Label" BackColor="#990000" ForeColor="White" Visible="False" Width="60%" CssClass="etiquetaError"></asp:Label>
                <asp:Label ID="lblError2" runat="server" Text="Label" BackColor="#990000" ForeColor="White" Visible="False" Width="60%" CssClass="etiquetaError"></asp:Label>
                <asp:Label ID="lblError3" runat="server" Text="Label" BackColor="#990000" ForeColor="White" Visible="False" Width="60%" CssClass="etiquetaError"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
