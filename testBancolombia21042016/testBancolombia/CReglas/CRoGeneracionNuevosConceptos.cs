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
   public class CRoGeneracionNuevosConceptos
    {
       public bool CrearoGeneracionNuevosConceptos(tblOGeneracionNuevosConceptos conceptos)
       {
           try
           {
               CDoGeneracionNuevosConceptos oDss = new CDoGeneracionNuevosConceptos();
               return oDss.CrearOGeneracionNuevosConceptos(conceptos);
           }
           catch (Exception error)
           {

               throw new Exception(error.Message);
           }

       }
    }
}
