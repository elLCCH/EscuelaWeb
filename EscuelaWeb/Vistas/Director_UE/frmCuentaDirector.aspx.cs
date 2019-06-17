﻿using EscuelaWeb.Controlador;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EscuelaWeb.Vistas.Director_UE
{
    public partial class frmCuentaDirector : System.Web.UI.Page
    {
        AdministrativoController admin = new AdministrativoController();
        int ci_Admin = 552343;
        protected void Page_Load(object sender, EventArgs e)
        {
            admin.MostrarCuentaAdministrativo(ci_Admin, txtNombre, txtApellidos);

        }

        protected void lbtnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmBDirector.aspx");
        }

        protected void lbtnRealizarAvisos_Click(object sender, EventArgs e)
        {
            Response.Redirect("Avisos/frmRealizarAvisoDirector.aspx");
        }

        protected void lbtnVerAvisos_Click(object sender, EventArgs e)
        {
            Response.Redirect("Avisos/frmVerAvisosDirector.aspx");
        }

        protected void lbtnCerrarSesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("../index.aspx");
        }

        protected void lbtnCuenta_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmCuentaDirector.aspx");
        }

        protected void btnGuardarCambios_Click(object sender, EventArgs e)
        {
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