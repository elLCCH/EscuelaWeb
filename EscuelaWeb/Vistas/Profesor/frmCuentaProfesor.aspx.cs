using EscuelaWeb.Controlador;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EscuelaWeb.Vistas.Profesor
{
    public partial class frmCuentaProfesor : System.Web.UI.Page
    {
        ProfesorController objProfesorController = new ProfesorController();
        public int _ci_profesor;
        protected void Page_Load(object sender, EventArgs e)
        {
            objProfesorController.MostrarCuenta(_ci_profesor,txtNombre,txtApellidos,txtContrasenia);
        }

        protected void lbtnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmBProfesor.aspx");
        }

        protected void lbtnRegCalificaciones_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmRegistroCalificaciones.aspx");
        }

        protected void lbtnVerAvisosG_Click(object sender, EventArgs e)
        {
            Response.Redirect("Avisos/frmRealizarAvisoMiCursoProfesor.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Avisos/frmVerAvisoGeneralProfesor.aspx");
        }

        protected void lbtnCerrarSesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("../index.aspx");
        }

        protected void txtContrasenia_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void btnGuardarCambios_Click(object sender, EventArgs e)
        {
            
        }
    }
}