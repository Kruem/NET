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
   public class CDoPropuestaDeValor
    {
       CDconexion ocnonexion = new CDconexion();

       public bool CrearOPropuestaDeValor(tblOPropuestaDeValor valor)
       {
        
           try
           {
               SqlCommand ocmd = new SqlCommand();
               ocmd.CommandType = CommandType.StoredProcedure;
               ocmd.Parameters.Add("@pidEmpresaPDV", valor.idEmpresaPDV);
               ocmd.Parameters.Add("@pfechaPDV", valor.fechaPDV);
               ocmd.Parameters.Add("@pvalorPorcPDV", valor.valorPorcPDV);
               ocmd.Parameters.Add("@pvalorPor1PDV", valor.valorPor1PDV);
               ocmd.Parameters.Add("@pvalorPor2PDV", valor.valorPor2PDV);
               ocmd.Parameters.Add("@pvalorPor3PDV", valor.valorPor3PDV);
               ocmd.Parameters.Add("@pvalorPor4PDV", valor.valorPor4PDV);
               ocmd.Parameters.Add("@pvalorPor5PDV", valor.valorPor5PDV);
               ocmd.Parameters.Add("@pvalorPor6PDV", valor.valorPor6PDV);
               ocmd.Parameters.Add("@pvalorPor7PDV", valor.valorPor7PDV);
               ocmd.Parameters.Add("@pvalorPor8PDV", valor.valorPor8PDV);
               ocmd.Parameters.Add("@pvalorPor9PDV", valor.valorPor9PDV);
               ocmd.Parameters.Add("@pvalorPor10PDV", valor.valorPor10PDV);
               ocmd.Parameters.Add("@pvalorPor11PDV", valor.valorPor11PDV);
               ocmd.Parameters.Add("@pvalorPor12PDV", valor.valorPor12PDV);
               ocmd.Parameters.Add("@pvalorPor13PDV", valor.valorPor13PDV);
               ocmd.Parameters.Add("@pvalorPor14PDV", valor.valorPor14PDV);
               ocmd.Parameters.Add("@pvalorPor15PDV", valor.valorPor15PDV);
               ocmd.Parameters.Add("@pvalorPor16PDV", valor.valorPor16PDV);
               ocmd.Parameters.Add("@pvalorPor17PDV", valor.valorPor17PDV);
               ocmd.Parameters.Add("@pvalorPor18PDV", valor.valorPor18PDV);
               ocmd.Parameters.Add("@pvalorPor19PDV", valor.valorPor19PDV);
               ocmd.Parameters.Add("@pvalorPor20PDV", valor.valorPor20PDV);
               ocmd.Parameters.Add("@pvalorPor21PDV", valor.valorPor21PDV);
               ocmd.Parameters.Add("@pvalorPor22PDV", valor.valorPor22PDV);
               ocmd.Parameters.Add("@pvalorPor23PDV", valor.valorPor23PDV);
               ocmd.Parameters.Add("@pvalorPor24PDV", valor.valorPor24PDV);
               ocmd.Parameters.Add("@pvalorPor25PDV", valor.valorPor25PDV);
               ocmd.Parameters.Add("@pvalorPor26PDV", valor.valorPor26PDV);
               ocmd.Parameters.Add("@pvalorPor27PDV", valor.valorPor27PDV);
               ocmd.Parameters.Add("@pprodEmpresa", valor.prodEmpresa);
               ocmd.CommandText = "pa_crearTblOPropuestaDeValor";
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
