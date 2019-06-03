using EscuelaWeb.Controlador;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EscuelaWeb.Vistas.Acciones.SecretarioAcciones
{
    public partial class Usuarios : System.Web.UI.Page
    {
        AlumnoController cAlumno = new AlumnoController();
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("../frmBSecretaria.aspx");
        }

        protected void lbtnCuenta_Click(object sender, EventArgs e)
        {
            Response.Redirect("../frmCuentaBSecretaria.aspx");
        }

        protected void lbtnCerrarSesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("../../index.aspx");
        }

        protected void lbtnAlumnos_Click(object sender, EventArgs e)
        {
            Response.Redirect("Alumnos.aspx");
        }

        protected void lbtnProfesores_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profesores.aspx");
        }

        protected void lbtnAdministrativo_Click(object sender, EventArgs e)
        {
            Response.Redirect("Administrativos.aspx");
        }

        protected void lbtnUsuarios_Click(object sender, EventArgs e)
        {

        }

        protected void lbtnAvisos_Click(object sender, EventArgs e)
        {
            Response.Redirect("../frmAvisosSecretaria.aspx");
        }

        protected void lbtnCuenta_Click1(object sender, EventArgs e)
        {
            Response.Redirect("../frmCuentaBSecretaria.aspx");
        }

        protected void txtApMaterno_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnNuevo_Click(object sender, EventArgs e)
        {
            cAlumno.insertar_alumno(txtNombre.Text, txtApPaterno.Text, txtApMaterno.Text, txtCOntrasenia.Text, Convert.ToInt32(txtCelular.Text), Convert.ToDateTime(txtFechNac.Text), txtDireccion.Text, 2);
            GridView1.DataBind();
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            cAlumno.eliminar(Convert.ToInt32(txtci.Text));
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            //cAlumno.modificar(txtApPaterno.Text, txtApMaterno.Text, txtCOntrasenia.Text, Convert.ToInt32(txtCelular.Text), Convert.ToDateTime(txtFechNac.Text), txtDireccion.Text, 2)
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}