using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GesPresta
{
    public partial class Empleados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Trace.Write("Evento", "Entrando en Page_Load");

            txtCodEmp.Focus();

            //Error de programación (txtNifEmp.Text = 11111111)
            txtNifEmp.Text = "11111111"; // Establece un valor por defecto para el campo

            //Error en tiempo de ejecución
            //int a = 3; 
            //int b = 0;
            //int c = a / b;

            Trace.Warn("Asignación", "Cambiado el valor de txtNifEmp a: " + txtNifEmp.Text);
            Trace.Write("Evento", "Saliendo de Page_Load");

        }
    }
}