using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CEntidades;
using CDdatos;
using System.Data;

namespace CReglas
{
   public class CRoGestionConocimTecnol
    {
       public bool CrearoGestionConocimTecnol(tblOGestionConocimTecnol tecnologica)
       {
           try
           {
               CDoGestionConocimTecnol oDss = new CDoGestionConocimTecnol();
               return oDss.CrearOGestionConocimTecnol(tecnologica);
           }
           catch (Exception error)
           {

               throw new Exception(error.Message);
           }
       }
    }
}
