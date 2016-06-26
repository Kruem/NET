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
   public class CRoCulturaDeLaInnovacion
    {
       public bool CrearoCulturaDeLaInnovacion(tblOCulturaDeLaInnovacion innovacion)
       {
           try
           {
               CDoCulturaDeLaInnovacion oDss = new CDoCulturaDeLaInnovacion();
               return oDss.CrearOCulturaDeLaInnovacion(innovacion);
           }
           catch (Exception error)
           {

               throw new Exception(error.Message);
           }
       }
    }
}
