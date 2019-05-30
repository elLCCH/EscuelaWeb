using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EscuelaWeb.Vistas
{
    public partial class frmBInteresado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
    }
}