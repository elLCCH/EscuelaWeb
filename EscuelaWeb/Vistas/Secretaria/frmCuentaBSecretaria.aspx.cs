using EscuelaWeb.Controlador;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EscuelaWeb.Vistas.CuentaPerfil
{
    public partial class frmCuentaBSecretaria : System.Web.UI.Page
    {
        AdministrativoController admin = new AdministrativoController();
        protected void Page_Load(object sender, EventArgs e)
        {
            int ci_Admin = Convert.ToInt32(Session["ID"]);
            admin.MostrarCuentaAdministrativo(ci_Admin, txtNombre, txtApellidos);
        }

        protected void lbtnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmBSecretaria.aspx");
        }

        protected void lbtnCuenta_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmCuentaBSecretaria.aspx");
        }

        protected void lbtnAlumnos_Click(object sender, EventArgs e)
        {
            Response.Redirect("Usuarios/Alumnos.aspx");
        }

        protected void lbtnProfesores_Click(object sender, EventArgs e)
        {
            Response.Redirect("Usuarios/Profesores.aspx");
        }

        protected void lbtnAdministrativo_Click(object sender, EventArgs e)
        {
            Response.Redirect("Usuarios/Administrativos.aspx");
        }

        protected void lbtnAvisos_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmAvisosSecretaria.aspx");
        }

        protected void lbtnCerrarSesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("../index.aspx");
        }

        protected void lbtnCuenta_Click1(object sender, EventArgs e)
        {
            Response.Redirect("frmCuentaBSecretaria.aspx");
        }

        protected void btnGuardarCambios_Click(object sender, EventArgs e)
        {
            int ci_Admin = Convert.ToInt32(Session["ID"]);
            if (txtContrasenia.Text == txtContrasenia1.Text)
            {
                admin.ModificarContrasenia(ci_Admin, txtContrasenia.Text);
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