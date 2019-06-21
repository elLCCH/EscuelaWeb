using EscuelaWeb.Controlador;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EscuelaWeb.Vistas.Director_UE
{
    public partial class frmRealizarAvisoDirector : System.Web.UI.Page
    {
        AvisosDirectorController ADir = new AvisosDirectorController();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void lbtnRealizarAvisos_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmRealizarAvisoDirector.aspx");
        }

        protected void lbtnVerAvisos_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmVerAvisosDirector.aspx");
        }

        protected void lbtnCuenta_Click(object sender, EventArgs e)
        {
            Response.Redirect("../frmCuentaDirector.aspx");
        }

        protected void lbtnCerrarSesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("../../index.aspx");
        }

        protected void lbtnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("../frmBDirector.aspx");
        }

        protected void btnPublicar_Click(object sender, EventArgs e)
        {
            //ADir.publicarAvisoDirector(txtTitulo.Text, txtDescripcion, CIProf, CIAdmin);
            ADir.publicarAvisoDirector(txtTitulo.Text, txtDescripcion.Text,0, 3);
        }
    }
}