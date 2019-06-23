using EscuelaWeb.Controlador;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EscuelaWeb.Vistas.Profesor.Avisos
{
    public partial class frmRealizarAvisoMiCursoProfesor : System.Web.UI.Page
    {
        AvisosController objAvisosController = new AvisosController();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Convert.ToBoolean(Session["ID"]) == false)
                {   //esta inactivo
                    Response.Redirect("../../index.aspx");
                }
            }
            catch (Exception)
            {
                //esta activo
            }
        }

        protected void lbtnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("../frmBProfesor.aspx");
        }

        protected void lbtnRegCalificaciones_Click(object sender, EventArgs e)
        {
            Response.Redirect("../frmRegistroCalificaciones.aspx");
        }

        protected void lbtnVerAvisosG_Click(object sender, EventArgs e)
        { 
            Response.Redirect("frmVerAvisoGeneralProfesor.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmRealizarAvisoMiCursoProfesor.aspx");
        }

        protected void lbtnCerrarSesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("../../index.aspx");
        }

        protected void btnRegistrarAviso_Click(object sender, EventArgs e)
        {
            int _ci_profesor = Convert.ToInt32(Session["ID"]);
            objAvisosController.PublicarAvisoProfesor(txtTitulo.Text,txtDescripcion.Text,_ci_profesor);
            txtTitulo.Text = "";
            txtDescripcion.Text = "";
        }
    }
}