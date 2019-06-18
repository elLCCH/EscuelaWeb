using EscuelaWeb.Data.dsEscuelaTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EscuelaWeb.Controlador
{
    public class AvisosController
    {
        AvisosTableAdapter ObjAviso = new AvisosTableAdapter();

        public void PublicarAvisoProfesor(string Ptitulo, string Pcontenido,int Pci)
        {
            ObjAviso.Insert(Ptitulo,Pcontenido,Pci,null);
        }
        public void modificarAvisoProfesor(string Ptitulo, string Pcontenido, int PCiProf, int pCiAdmin, int pIDAviso)
        {
            ObjAviso.Update(Ptitulo, Pcontenido, PCiProf, pCiAdmin, pIDAviso);
        }
        public void modificarAvisoProfesor(int pIDAviso)
        {
            ObjAviso.Delete(pIDAviso);
        }

    }
}