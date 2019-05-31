using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EscuelaWeb.Vistas.Director_UE
{
    public partial class frmBDirector : System.Web.UI.Page
    {
        protected void lbtnCerrarSesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("../index.aspx");
        }

        protected void lbtnRealizarAvisos_Click(object sender, EventArgs e)
        {
            Response.Redirect("Avisos/frmRealizarAvisoDirector.aspx");
        }

        protected void lbtnVerAvisos_Click(object sender, EventArgs e)
        {
            Response.Redirect("Avisos/frmVerAvisosDirector.aspx");
        }

        protected void lbtnCuenta_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmCuentaDirector.aspx");
        }
    }
}