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
   public class CRoEscalabilidad
    {
       public bool CrearoEscalabilidad(tblOEscalabilidad escalabilidad)
       {
           try
           {
               CDoEscalabilidad oDss = new CDoEscalabilidad();
               return oDss.CrearOEscalabilidad(escalabilidad);
           }
           catch (Exception)
           {
               
               throw;
           }
       }
    }
}
