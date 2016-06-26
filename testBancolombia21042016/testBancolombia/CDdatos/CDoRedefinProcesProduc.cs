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
    public class CDoRedefinProcesProduc
    {
        CDconexion ocnonexion = new CDconexion();
        public bool CrearORedefinProcesProduc(tblORedefinProcesProduc produc)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresaRPP", produc.idEmpresaRPP);
                ocmd.Parameters.Add("@pfechaRPP", produc.fechaRPP);
                ocmd.Parameters.Add("@pvalorPorcRPP", produc.valorPorcRPP);
                ocmd.Parameters.Add("@pvalorPor1RPP", produc.valorPor1RPP);
                ocmd.Parameters.Add("@pvalorPor2RPP", produc.valorPor2RPP);
                ocmd.Parameters.Add("@pvalorPor3RPP", produc.valorPor3RPP);
                ocmd.Parameters.Add("@pvalorPor4RPP", produc.valorPor4RPP);
                ocmd.Parameters.Add("@pvalorPor5RPP", produc.valorPor5RPP);
                ocmd.CommandText = "pa_crearTblORedefinProcesProduc";
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
