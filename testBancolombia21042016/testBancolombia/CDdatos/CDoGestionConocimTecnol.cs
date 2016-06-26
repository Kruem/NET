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
   public class CDoGestionConocimTecnol
    {
        CDconexion ocnonexion = new CDconexion();
        public bool CrearOGestionConocimTecnol(tblOGestionConocimTecnol tec)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresaGCT",tec.idEmpresaGCT);
                ocmd.Parameters.Add("@pfechaGCT", tec.fechaGCT);
                ocmd.Parameters.Add("@pvalorPorcGCT", tec.valorPorcGCT);
                ocmd.Parameters.Add("@pvalorPor1GCT", tec.valorPor1GCT);
                ocmd.Parameters.Add("@pvalorPor2GCT", tec.valorPor2GCT);
                ocmd.Parameters.Add("@pvalorPor3GCT", tec.valorPor3GCT);
                ocmd.Parameters.Add("@pvalorPor4GCT", tec.valorPor4GCT);
                ocmd.CommandText = "pa_crearTblOGestionConocimTecnol";
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
