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
   public class CDoCanales
    {
       CDconexion oconexion = new CDconexion();
       public bool CearOCanales(tblOCanales canales)
       {
           try
           {
               SqlCommand ocmd = new SqlCommand();
               ocmd.CommandType = CommandType.StoredProcedure;
               ocmd.Parameters.Add("@pidEmpresaCan", canales.idEmpresaCan);
               ocmd.Parameters.Add("@pfechaCan", canales.fechaCan);
               ocmd.Parameters.Add("@pvalorPorcCan", canales.valorPorcCan);
               ocmd.Parameters.Add("@pvalorPor1CAN", canales.valorPor1CAN);
               ocmd.Parameters.Add("@pvalorPor2CAN", canales.valorPor2CAN);
               ocmd.Parameters.Add("@pvalorPor3CAN", canales.valorPor3CAN);
               ocmd.Parameters.Add("@pvalorPor4CAN", canales.valorPor4CAN);
               ocmd.Parameters.Add("@pvalorPor5CAN", canales.valorPor5CAN);
               ocmd.Parameters.Add("@pvalorPor6CAN", canales.valorPor6CAN);
               ocmd.Parameters.Add("@pvalorPor7CAN", canales.valorPor7CAN);
               ocmd.Parameters.Add("@pvalorPor8CAN", canales.valorPor8CAN);
               ocmd.Parameters.Add("@pvalorPor9CAN", canales.valorPor9CAN);
               ocmd.Parameters.Add("@pvalorPor10CAN", canales.valorPor10CAN);
               ocmd.Parameters.Add("@pvalorPor11CAN", canales.valorPor11CAN);
               ocmd.Parameters.Add("@pvalorPor12CAN", canales.valorPor12CAN);
               ocmd.Parameters.Add("@pvalorPor13CAN", canales.valorPor13CAN);
               ocmd.Parameters.Add("@pvalorPor14CAN", canales.valorPor14CAN);
               ocmd.Parameters.Add("@pvalorPor15CAN", canales.valorPor15CAN);
               ocmd.Parameters.Add("@pvalorPor16CAN", canales.valorPor16CAN);
               ocmd.Parameters.Add("@pvalorPor17CAN", canales.valorPor17CAN);
               ocmd.Parameters.Add("@pvalorPor18CAN", canales.valorPor18CAN);
               ocmd.Parameters.Add("@pvalorPor19CAN", canales.valorPor19CAN);
               ocmd.CommandText = "pa_crearTblOCanales";
               ocmd.Connection = oconexion.Conectar();
               ocmd.ExecuteNonQuery();
               return true;
           }
           catch (Exception erro)
           {

               throw new Exception(erro.Message);
           }
          
         
       }
    }
}
