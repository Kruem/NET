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
   public class CRoPropiedadIntelectual
    {
       public bool CrearoPropiedadIntelectual(tblOPropiedadIntelectual intelectual)
       {
           try
           {
               CDoPropiedadIntelectual oDss = new CDoPropiedadIntelectual();
               return oDss.CrearOPropiedadIntelectual(intelectual);
           }
           catch (Exception error)
           {

               throw new Exception(error.Message);
           }
       }
    }
}
