using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CEntidades;
using System.Data.SqlClient;
using System.Data;

namespace CDdatos
{
    public class CDresultOGestionConocimTecnol
    {
        CDconexion oconexion = new CDconexion();
        public bool crearResultGestionConocimTecnol(tblResultOGestionConocimTecnol oEResGCT)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresResultGCT", oEResGCT.idEmpresResultGCT);
                ocmd.Parameters.Add("@pfechaResultGCT", oEResGCT.fechaResultGCT);
                ocmd.Parameters.Add("@ptotalResultGCT", oEResGCT.totalResultGCT);
                ocmd.Parameters.Add("@presult1GCT", oEResGCT.result1GCT);
                ocmd.Parameters.Add("@presult2GCT", oEResGCT.result2GCT);
                ocmd.Parameters.Add("@presult3GCT", oEResGCT.result3GCT);
                ocmd.Parameters.Add("@presult4GCT", oEResGCT.result4GCT);
                ocmd.Parameters.Add("@presult5GCT", oEResGCT.result5GCT);
                ocmd.Parameters.Add("@pobservaciones", oEResGCT.observaciones);
                ocmd.CommandText = "pa_crearTblResultOGestionConocimTecnol";
                ocmd.Connection = oconexion.Conectar();
                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (SqlException ErrorDB)
            {
                throw new Exception(ErrorDB.Message);
            }
            catch (Exception Errorlenguaje)
            {
                throw new Exception(Errorlenguaje.Message);
            }


        }
    }
}