﻿using EscuelaWeb.Data.dsEscuelaTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EscuelaWeb.Controlador
{
    public class Profesorescontroller
    {
        ProfesorTableAdapter prof = new ProfesorTableAdapter();
        private int ci_estudiante;
        private string nombre;
        private string ap_paterno;
        private string ap_materno;
        private string contrasenia;
        private int celular;
        private DateTime fecha_nac;
        private string direccion;

        public int Ci_estudiante { get => ci_estudiante; set => ci_estudiante = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public string Ap_paterno { get => ap_paterno; set => ap_paterno = value; }
        public string Ap_materno { get => ap_materno; set => ap_materno = value; }
        public string Contrasenia { get => contrasenia; set => contrasenia = value; }
        public int Celular { get => celular; set => celular = value; }
        public DateTime Fecha_nac { get => fecha_nac; set => fecha_nac = value; }
        public string Direccion { get => direccion; set => direccion = value; }

        public void insertar_Profesor(int PCiProf, string Pnombre, string Pap_paterno, string Pap_materno, string Pcontrasenia, int Pcel, DateTime Pfec, string Pdir)
        {
            prof.Insert(PCiProf, Pnombre, Pap_paterno, Pap_materno, Pcontrasenia, Pcel, Pfec, Pdir);
        }
        public void modificar_Profesor(int Pci, string Pnombre, string Pap_paterno, string Pap_materno, string Pcontrasenia, int Pcel, DateTime Pfec, string Pdir)
        {
            prof.Update(Pci, Pnombre, Pap_paterno, Pap_materno, Pcontrasenia, Pcel, Pfec, Pdir, Pci);
        }
        public void eliminar_Profesor(int pCI)
        {
            prof.Delete(pCI);
        }
    }

}