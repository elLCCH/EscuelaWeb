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
        public void modificar(string Ptitulo, string Pcontenido, int PId)
        {
            ObjAviso.Update(Ptitulo, Pcontenido, PId);
        }

    }
}