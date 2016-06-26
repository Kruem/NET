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
   public class CRoRedefinProcesProduc
    {
       public bool CrearoRedefinProcesProduc(tblORedefinProcesProduc producto)
       {
           try
           {
               CDoRedefinProcesProduc oDss = new CDoRedefinProcesProduc();
              return oDss.CrearORedefinProcesProduc(producto);
           }
           catch (Exception error)
           {
               
               throw new Exception (error.Message);
           }
       }
    }
}
