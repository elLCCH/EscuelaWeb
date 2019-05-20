using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EscuelaWeb.Vistas.Acciones.SecretarioAcciones
{
    public partial class Administrativos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("../../ingreso/frmBSecretaria.aspx");
        }

        protected void lbtnCuenta_Click(object sender, EventArgs e)
        {
            Response.Redirect("../../CuentaPerfil/frmCuentaBSecretaria.aspx");
        }
        
        protected void lbtnCerrarSesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("../../Index.aspx");
        }

        protected void lbtnAlumnos_Click(object sender, EventArgs e)
        {
            Response.Redirect("../SecretarioAcciones/Alumnos.aspx");
        }

        protected void lbtnProfesores_Click(object sender, EventArgs e)
        {
            Response.Redirect("../SecretarioAcciones/Profesores.aspx");
        }

        protected void lbtnAdministrativo_Click(object sender, EventArgs e)
        {
            Response.Redirect("../SecretarioAcciones/Administrativos.aspx");
        }
    }
}