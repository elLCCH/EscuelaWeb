using EscuelaWeb.Controlador;
using System;
using System.Web.UI.WebControls;

namespace EscuelaWeb.Vistas.Profesor
{
    public partial class frmRegistroCalificaciones : System.Web.UI.Page
    {
        AvisosController objAvisosController = new AvisosController();
        public int _ciProfesor = 3555914, _idAviso;
        public string _titulo, _descripcion;
        Parameter pTi = new Parameter();
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
            }
        }

        protected void lbtnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmBProfesor.aspx");
        }

        protected void lbtnRegCalificaciones_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmRegistroCalificaciones.aspx");
        }

        protected void lbtnVerAvisosG_Click(object sender, EventArgs e)
        {
            Response.Redirect("Avisos/frmRealizarAvisoMiCursoProfesor.aspx");
        }

        protected void lbtnRealizarAviso_Click(object sender, EventArgs e)
        {
            Response.Redirect("Avisos/frmVerAvisoGeneralProfesor.aspx");
        }

        protected void lbtnCerrarSesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("../index.aspx");
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //objAvisosController.modificar(,);
            GridView1.EditIndex = e.NewEditIndex;
        }

        protected void bntSiguiente_Click(object sender, EventArgs e)
        {
        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            /*Label lblId = (Label)GridView1.Rows[e.RowIndex].FindControl("lblId");
            TextBox txtName = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtName");
            CheckBox chkActive =
              (CheckBox)GridView1.Rows[e.RowIndex].FindControl("chkActive");
            DropDownList cmbType =
              (DropDownList)GridView1.Rows[e.RowIndex].FindControl("cmbType");
            DropDownList ddlSex =
              (DropDownList)GridView1.Rows[e.RowIndex].FindControl("ddlSex");
            objAvisosController.modificar();
            GridView1.EditIndex = -1;*/
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label5.Text = GridView1.SelectedRow.Cells[2].Text;
            Label6.Text = GridView1.SelectedRow.Cells[3].Text;
            Label7.Text = (GridView1.SelectedRow.Cells[1].Text);
        }

        
    }
}