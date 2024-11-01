using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GesPresta
{
    public partial class EmpleadosCalendar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                DateTime dtHoy = System.DateTime.Now;
                txtFnaEmp.Text = dtHoy.ToString("dd-MM-yyyy");
                txtFinEmp.Text = dtHoy.ToString("dd-MM-yyyy");
            }
        }

        protected void cmdEnviar_Click(object sender, EventArgs e)
        {
            lblValores.Visible = true;
            lblValores.Text = "VALORES DEL FORMULARIO" +
                "<br/> Código Empleado: " + txtCodEmp.Text +
                "<br/> NIF: " + txtNifEmp.Text +
                "<br/> Apellidos y Nombre: " + txtNomEmp.Text +
                "<br/> Dirección: " + txtDirEmp.Text +
                "<br/> Ciudad: " + txtCiuEmp.Text +
                "<br/> Teléfonos: " + txtTelEmp.Text +
                "<br/> Fecha de Nacimiento: " + txtFnaEmp.Text +
                "<br/> Fecha de Incorporación: " + txtFinEmp.Text +
                "<br/> Sexo: " + rblSexEmp.SelectedItem.Value +
                "<br/> Departamento: " + ddlDepEmp.Text;
        }


        protected void CalendarioFnaEmp_SelectionChanged(object sender, EventArgs e)
        {
            try
            {

                //Pasar del calendario al textbox
                DateTime fechaCalendario = Convert.ToDateTime(CalendarioFnaEmp.SelectedDate).Date;
                txtFnaEmp.Text = fechaCalendario.ToString("dd-MM-yyyy");

                comprobaciones();
            }
            catch(ArgumentException ae)
            {
                Console.WriteLine($"Argumento incorrecto: {ae.Message}");
            }

            catch(Exception ex)
            {
                Console.WriteLine($"El programa ha fallado: {ex.Message}");
            }

        }

        protected void txtFnaEmp_TextChanged(object sender, EventArgs e)
        {
            try
            {
                //Poner fecha del textbox en calendario
                CalendarioFnaEmp.SelectedDate = Convert.ToDateTime(txtFnaEmp.Text);
                CalendarioFnaEmp.VisibleDate = Convert.ToDateTime(txtFnaEmp.Text);

                comprobaciones();

            }
            catch(Exception ex)
            {
                Console.WriteLine($"El programa ha fallado: {ex.Message}");
            }
        }

        protected void CalendarioFinEmp_SelectionChanged(object sender, EventArgs e)
        {
            try
            {

                //Pasar del calendario al textbox
                DateTime fechaCalendario = Convert.ToDateTime(CalendarioFinEmp.SelectedDate).Date;
                txtFinEmp.Text = fechaCalendario.ToString("dd-MM-yyyy");

                comprobaciones();             

            }
            catch(ArgumentException ae)
            {
                Console.WriteLine($"Argumento incorrecto: {ae.Message}");
            }

            catch(Exception ex)
            {
                Console.WriteLine($"El programa ha fallado: {ex.Message}");
            }

        }


        protected void txtFinEmp_TextChanged(object sender, EventArgs e)
        {
            try
            {
                //Poner fecha del textbox en calendario
                CalendarioFinEmp.SelectedDate = Convert.ToDateTime(txtFinEmp.Text);
                CalendarioFinEmp.VisibleDate = Convert.ToDateTime(txtFinEmp.Text);

                comprobaciones();
            }
            catch(Exception ex)
            {
                Console.WriteLine($"El programa ha fallado: {ex.Message}");
            }

        }

        protected void comprobaciones()
        {
            DateTime fechaNacimiento = Convert.ToDateTime(txtFnaEmp.Text).ToUniversalTime();
            DateTime fechaIngreso = Convert.ToDateTime(txtFinEmp.Text).ToUniversalTime();
            DateTime dtHoy = System.DateTime.Now;

            ocultarEtiquetas();
            if(fechaIngreso < fechaNacimiento)
            {
                lblError1.Visible = true;
                lblError1.Text = "La fecha de ingreso no puede ser menor que la fecha de nacimiento.";
            }
            else if(fechaIngreso > dtHoy)
            {
                lblError2.Visible = true;
                lblError2.Text = "La fecha de ingreso no puede ser mayor que la fecha actual.";
            }
            else if(fechaNacimiento > dtHoy)
            {
                lblError3.Visible = true;
                lblError3.Text = "La fecha de nacimiento no puede ser mayor que la fecha actual.";
            }
            comprobarAntiguedad();

        }

        protected void comprobarAntiguedad()
        {

            DateTime dtHoy = System.DateTime.Now;
            TimeSpan diferencia = dtHoy - CalendarioFinEmp.SelectedDate;
            DateTime fechamin = new DateTime(1, 1, 1);

            txtAños.Text = ((fechamin + diferencia).Year - 1).ToString();
            TxtMeses.Text = ((fechamin + diferencia).Month - 1).ToString();
            txtDias.Text = ((fechamin + diferencia).Day).ToString();

        }

        protected void ocultarEtiquetas()
        {
            lblError1.Visible = false;
            lblError2.Visible = false;
            lblError3.Visible = false;
        }
    }
}