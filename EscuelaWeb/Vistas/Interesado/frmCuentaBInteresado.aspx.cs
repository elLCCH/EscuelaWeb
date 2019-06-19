using EscuelaWeb.Controlador;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EscuelaWeb.Vistas.Interesado
{
	public partial class frmCuentaBInteresado : System.Web.UI.Page
	{
        AlumnoController alumno = new AlumnoController();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            int ci_Int = Convert.ToInt32(Session["ID"]);
            alumno.MostrarCuentaInteresado(ci_Int, txtNombre, txtApellidos);
        }

        protected void lbtnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmBInteresado.aspx");
        }

        protected void lbtnPrimerB_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bimestres/PrimerBim.aspx");
        }

        protected void lbtnSegundoB_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bimestres/SegundoBim.aspx");
        }

        protected void lbtnTerceroB_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bimestres/TercerBim.aspx");
        }

        protected void lbtnCuartoB_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bimestres/CuartoBim.aspx");
        }

        protected void lbtnAvisos_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmAvisosInteresado.aspx");
        }

        protected void lbtnCuenta_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmCuentaBInteresado.aspx");
        }

        protected void lbtnCerrarSesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("../index.aspx");
        }

        protected void btnGuardarCambios_Click(object sender, EventArgs e)
        {
            if(txtContrasenia.Text==txtContrasenia1.Text)
            {
                int ci_Int = Convert.ToInt32(Session["ID"]);
                alumno.ModificarContrasenia(ci_Int, txtContrasenia.Text);
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