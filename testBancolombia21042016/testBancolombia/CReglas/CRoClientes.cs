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
   public class CRoClientes
    {

       public bool CrearoClientes(tblOClientes clientes)
       {
           try
           {
               CDoClientes oDss = new CDoClientes();
               return oDss.CrearOClientes(clientes);
           }
           catch (Exception error)
           {

               throw new Exception(error.Message);
           }
          

       }
    }
}
