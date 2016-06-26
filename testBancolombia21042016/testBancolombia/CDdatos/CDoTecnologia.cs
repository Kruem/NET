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
   public class CDoTecnologia
    {
        CDconexion ocnonexion = new CDconexion();
        public bool CrearOTecnologia(tblOTecnologia tecno)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresaT", tecno.idEmpresaT);
                ocmd.Parameters.Add("@pfechaT", tecno.fechaT);
                ocmd.Parameters.Add("@pvalorPorcT", tecno.valorPorcT);
                ocmd.Parameters.Add("@pvalorPor1T", tecno.valorPor1T);
                ocmd.Parameters.Add("@pvalorPor2T", tecno.valorPor2T);
                ocmd.Parameters.Add("@pvalorPor3T", tecno.valorPor3T);
                ocmd.Parameters.Add("@pvalorPor4T", tecno.valorPor4T);
                ocmd.Parameters.Add("@pvalorPor5T", tecno.valorPor5T);
                ocmd.Parameters.Add("@pvalorPor6T", tecno.valorPor6T);
                ocmd.Parameters.Add("@pvalorPor7T", tecno.valorPor7T);
                ocmd.Parameters.Add("@pvalorPor8T", tecno.valorPor8T);
                ocmd.Parameters.Add("@pvalorPor9T", tecno.valorPor9T);
                ocmd.Parameters.Add("@pvalorPor10T", tecno.valorPor10T);
                ocmd.Parameters.Add("@pvalorPor11T", tecno.valorPor11T);
                ocmd.CommandText = "pa_crearTblOTecnologia";
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
