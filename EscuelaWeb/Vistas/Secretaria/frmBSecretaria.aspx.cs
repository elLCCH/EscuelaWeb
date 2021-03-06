﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EscuelaWeb.Vistas.ingreso
{
    public partial class frmBSecretaria : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void lbtnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmBSecretaria.aspx");
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


        protected void lbtnCerrarSesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("../index.aspx");
        }

        protected void lbtnCuenta_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmCuentaBSecretaria.aspx");
        }
    }
}