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
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Convert.ToBoolean(Session["ID"]) == false)
                {   //esta inactivo
                    Response.Redirect("../index.aspx");
                }
            }
            catch (Exception)
            {
                //esta activo
                int _ci_profesor = Convert.ToInt32(Session["ID"]);
                objProfesorController.MostrarCuenta(_ci_profesor, txtNombre, txtApellidos);
            }
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
            if (txtContrasenia.Text == txtContrasenia1.Text)
            {
                int _ci_profesor = Convert.ToInt32(Session["ID"]);
                objProfesorController.ModificarContrasenia(_ci_profesor, txtContrasenia.Text);
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "clave", "alert('La contraseña ha sido cambiada Correctamente');", true);
                txtContrasenia1.Text = "";
                txtContrasenia.Text = "";
            }
            else
            {
                Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "clave", "alert('Las contraseñas no son iguales');", true);
                txtContrasenia1.Text = "";
                txtContrasenia.Text = "";
            }
        }
    }
}