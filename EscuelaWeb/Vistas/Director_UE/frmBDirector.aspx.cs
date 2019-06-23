﻿using EscuelaWeb.Controlador;
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
        AdministrativoController ObjAdministrativoController = new AdministrativoController();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Convert.ToBoolean(Session["ID"]) == false)
                {   //esta inactivo
                    Response.Redirect("../index.aspx");
                }
            }
            catch (Exception)
            {
                //esta activo
                ///String Valor = Request.QueryString["ID"]; //obteniendo valor desde el otro form
                int ci_Int = Convert.ToInt32(Session["ID"]);
                ObjAdministrativoController.ObtenerNombreCompleto(lblSaludo, ci_Int);
            }
            
        }
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