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
   public class CDoEscalabilidad
    {

       CDconexion ocnonexion = new CDconexion();

       public bool CrearOEscalabilidad(tblOEscalabilidad esca)
       {
           try
           {
               SqlCommand ocmd = new SqlCommand();
               ocmd.CommandType = CommandType.StoredProcedure;
               ocmd.Parameters.Add("@pidEmpresaESC",esca.idEmpresaESC);
               ocmd.Parameters.Add("@pfechaESC", esca.fechaESC);
               ocmd.Parameters.Add("@pvalorPorcESC", esca.valorPorcESC);
               ocmd.Parameters.Add("@pvalorPor1ESC", esca.valorPor1ESC);
               ocmd.Parameters.Add("@pvalorPor2ESC", esca.valorPor2ESC);
               ocmd.Parameters.Add("@pvalorPor3ESC", esca.valorPor3ESC);
               ocmd.Parameters.Add("@pvalorPor4ESC", esca.valorPor4ESC);
               ocmd.Parameters.Add("@pvalorPor5ESC", esca.valorPor5ESC);
               ocmd.Parameters.Add("@pvalorPor6ESC", esca.valorPor6ESC);
               ocmd.Parameters.Add("@pvalorPor7ESC", esca.valorPor7ESC);
               ocmd.Parameters.Add("@pvalorPor8ESC", esca.valorPor8ESC);
               ocmd.Parameters.Add("@pvalorPor9ESC", esca.valorPor9ESC);
               ocmd.CommandText = "pa_crearTblOEscalabilidad";
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
