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
    public  class CDoGeneracionNuevosConceptos
    {
        CDconexion ocnonexion = new CDconexion();

        public bool CrearOGeneracionNuevosConceptos(tblOGeneracionNuevosConceptos concep)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresaGNC",concep.idEmpresaGNC);
                ocmd.Parameters.Add("@pfechaGNC", concep.fechaGNC);
                ocmd.Parameters.Add("@pvalorPorcGNC", concep.valorPorcGNC);
                ocmd.Parameters.Add("@pvalorPor1GNC", concep.valorPor1GNC);
                ocmd.Parameters.Add("@pvalorPor2GNC", concep.valorPor2GNC);
                ocmd.Parameters.Add("@pvalorPor3GNC", concep.valorPor3GNC);
                ocmd.Parameters.Add("@pvalorPor4GNC", concep.valorPor4GNC);
                ocmd.Parameters.Add("@pvalorPor5GNC", concep.valorPor5GNC);
                ocmd.CommandText = "pa_crearTblOGeneracionNuevosConceptos";
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
