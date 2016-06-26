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
   public class CRoPropuestaDeValor
    {
       public bool CrearoPropuestaDeValor(tblOPropuestaDeValor pvalor)
       {
           try
           {
               CDoPropuestaDeValor oDss = new CDoPropuestaDeValor();
               return oDss.CrearOPropuestaDeValor(pvalor);
           }
           catch (Exception error)
           {

               throw new Exception(error.Message);
           }
       }
    }
}
