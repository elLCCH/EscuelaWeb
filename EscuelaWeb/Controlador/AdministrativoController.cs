using EscuelaWeb.Data.dsEscuelaTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace EscuelaWeb.Controlador
{
    public class AdministrativoController
    {
        AdministrativoTableAdapter admin = new AdministrativoTableAdapter();

        private int ci_estudiante;
        private string nombre;
        private string ap_paterno;
        private string ap_materno;
        private string contrasenia;
        private int celular;
        private DateTime fecha_nac;
        private string direccion;
        private string ocupacion;

        public int Ci_estudiante { get => ci_estudiante; set => ci_estudiante = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public string Ap_paterno { get => ap_paterno; set => ap_paterno = value; }
        public string Ap_materno { get => ap_materno; set => ap_materno = value; }
        public string Contrasenia { get => contrasenia; set => contrasenia = value; }
        public int Celular { get => celular; set => celular = value; }
        public DateTime Fecha_nac { get => fecha_nac; set => fecha_nac = value; }
        public string Direccion { get => direccion; set => direccion = value; }
        public string Ocupacion { get => ocupacion; set => ocupacion = value; }

        public void insertar_Administrativo(int PCiEst, string Pnombre, string Pap_paterno, string Pap_materno, string Pcontrasenia, int Pcel, DateTime Pfec, string Pdir,string Pocupacion)
        {
            admin.Insert(PCiEst, Pnombre, Pap_paterno, Pap_materno, Pcontrasenia, Pcel, Pfec, Pdir, Pocupacion);
        }
        public void modificar_Administrativo(int Pci, string Pnombre, string Pap_paterno, string Pap_materno, string Pcontrasenia, int Pcel, DateTime Pfec, string Pdir, string Pocupacion)
        {
            admin.Update(Pci, Pnombre, Pap_paterno, Pap_materno, Pcontrasenia, Pcel, Pfec, Pdir, Pocupacion, Pci);
        }
        public void eliminar_Administrativo(int pCI)
        {
            admin.Delete(pCI);
        }
        public void MostrarCuentaAdministrativo(int Pci, TextBox txtNombre, TextBox txtApellidos)
        {
            txtNombre.Text = Convert.ToString(admin.obtenerNombreAdmin(Pci));
            txtApellidos.Text = Convert.ToString(admin.obtenerApellidos(Pci));
            //txtContrasenia.Text = Convert.ToString(admin.obtenerContrasenia(Pci));
        }
        public void ModificarContrasenia(int Pci, string Pcontrasenia)
        {
            admin.ModificarContrasenia(Pci, Pcontrasenia, Pci);
        }

    }

}