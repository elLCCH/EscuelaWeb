using EscuelaWeb.Data.dsEscuelaTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace EscuelaWeb.Controlador
{
    public class ProfesorController
    {
        ProfesorTableAdapter ObjProfesor = new ProfesorTableAdapter();
        private int ci_profesor;
        private string nombre;
        private string ap_paterno;
        private string ap_materno;
        private string contrasenia;
        private int celular;
        private DateTime fecha_nac;
        private string direccion;

        public int Ci_profesor { get => ci_profesor; set => ci_profesor = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public string Ap_paterno { get => ap_paterno; set => ap_paterno = value; }
        public string Ap_materno { get => ap_materno; set => ap_materno = value; }
        public string Contrasenia { get => contrasenia; set => contrasenia = value; }
        public int Celular { get => celular; set => celular = value; }
        public DateTime Fecha_nac { get => fecha_nac; set => fecha_nac = value; }
        public string Direccion { get => direccion; set => direccion = value; }

        public void MostrarCuenta(int Pci,TextBox txtNombre, TextBox txtApellidos)
        {
            txtNombre.Text = Convert.ToString(ObjProfesor.ScalarQueryCuentaMostrarNombre(Pci));
            txtApellidos.Text = Convert.ToString(ObjProfesor.ScalarQueryCuentaMostrarApellidos(Pci));
            //txtContrasenia.Text = Convert.ToString(ObjProfesor.ScalarQueryCuentaMostrarContrasenia(Pci));
        }
        public void ModificarContrasenia(int Pci, string Pcontrasenia)
        {
            ObjProfesor.ModificarContrasenia(Pci, Pcontrasenia, Pci);
        }
    }
}