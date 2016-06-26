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
   public class CRoCanales
    {
       public bool CrearoCanales(tblOCanales canales)
       {
           try
           {
               CDoCanales oDss = new CDoCanales();
               return oDss.CearOCanales(canales);
           }
           catch (Exception error)
           {

               throw new Exception(error.Message);
           }
       }
    }
}
