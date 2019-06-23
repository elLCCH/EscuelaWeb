using EscuelaWeb.Data.dsEscuelaTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EscuelaWeb.Controlador
{
    public class AvisosDirectorController
    {
        AvisosTableAdapter avDir = new AvisosTableAdapter();

        private string titulo;
        private string contenido;
        private int ciProf;
        private int ciAdmin;

        public string Titulo { get => titulo; set => titulo = value; }
        public string Contenido { get => contenido; set => contenido = value; }
        public int CiProf { get => ciProf; set => ciProf = value; }
        public int CiAdmin { get => ciAdmin; set => ciAdmin = value; }

        public void publicarAvisoDirector(string pTitulo, string pContenido, int pCIProf,int pCIAdmin)
        {
            avDir.Insert(pTitulo, pContenido, pCIProf, pCIAdmin);
        }
        public void eliminarAviso(int pCod)
        {
            avDir.Delete(pCod);
        }
    }
}