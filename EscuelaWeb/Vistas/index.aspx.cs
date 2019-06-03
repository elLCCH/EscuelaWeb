using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EscuelaWeb.Vistas
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnIniciar_Click(object sender, EventArgs e)
        {
            if (cbValidar.Checked==true)
            {
                //Response.Redirect("Secretaria/frmBSecretaria.aspx");
                //Response.Redirect("Profesor/frmBProfesor.aspx");
                Response.Redirect("Interesado/frmBInteresado.aspx");
                //Response.Redirect("Director_UE/frmBDirector.aspx");
            }
            
        }
    }
}