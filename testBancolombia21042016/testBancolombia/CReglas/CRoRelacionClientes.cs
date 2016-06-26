using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CEntidades;
using CDdatos;

namespace CReglas
{
   public class CRoRelacionClientes
    {
       public bool CrearoRelacionClientes(tblORelacionClientes clientes)
       {
           try
           {
               CDoRelacionClientes oDss = new CDoRelacionClientes();
               return oDss.CrearORelacionClientes(clientes);
           }
           catch (Exception error)
           {

               throw new Exception(error.Message);
           }

       }
    }
}
