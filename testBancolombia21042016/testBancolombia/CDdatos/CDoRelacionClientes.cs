using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using CEntidades;

namespace CDdatos
{
   public class CDoRelacionClientes
    {
       CDconexion ocnonexion = new CDconexion();

       public bool CrearORelacionClientes(tblORelacionClientes cliente)
       {
           try
           {
               SqlCommand ocmd = new SqlCommand();
               ocmd.CommandType = CommandType.StoredProcedure;
               ocmd.Parameters.Add("@pidEmpresaRC", cliente.idEmpresaRC);
               ocmd.Parameters.Add("@pfechaRC", cliente.fechaRC);
               ocmd.Parameters.Add("@pvalorPorcRC", cliente.valorPorcRC);
               ocmd.Parameters.Add("@pvalorPorc1RC", cliente.valorPorc1RC);
               ocmd.Parameters.Add("@pvalorPorc2RC", cliente.valorPorc2RC);
               ocmd.Parameters.Add("@pvalorPorc3RC", cliente.valorPorc3RC);
               ocmd.Parameters.Add("@pvalorPorc4RC", cliente.valorPorc4RC);
               ocmd.Parameters.Add("@pvalorPorc5RC", cliente.valorPorc5RC);
               ocmd.Parameters.Add("@pvalorPorc6RC", cliente.valorPorc6RC);
               ocmd.Parameters.Add("@pvalorPorc7RC", cliente.valorPorc7RC);
               ocmd.Parameters.Add("@pvalorPorc8RC", cliente.valorPorc8RC);
               ocmd.Parameters.Add("@pvalorPorc9RC", cliente.valorPorc9RC);
               ocmd.CommandText = "pa_crearTblORelacionClientes";
               ocmd.Connection = ocnonexion.Conectar();
               ocmd.ExecuteNonQuery();
               return true;
           }
           catch (Exception error)
           {

               throw new Exception(error.Message);
           }
       }
    }
}
