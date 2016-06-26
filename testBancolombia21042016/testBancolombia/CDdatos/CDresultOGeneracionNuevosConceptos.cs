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
    public class CDresultOGeneracionNuevosConceptos
    {
        CDconexion oconexion = new CDconexion();
        public bool crearResultGeneracionNuevosConceptos(tblResultOGeneracionNuevosConceptos oEResultGNC)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresResultGNC", oEResultGNC.idEmpresResultGNC);
                ocmd.Parameters.Add("@pfechaResultGNC", oEResultGNC.fechaResultGNC);
                ocmd.Parameters.Add("@ptotalResultGNC", oEResultGNC.totalResultGNC);
                ocmd.Parameters.Add("@presult1GNC", oEResultGNC.result1GNC);
                ocmd.Parameters.Add("@presult2GNC", oEResultGNC.result2GNC);
                ocmd.Parameters.Add("@presult3GNC", oEResultGNC.result3GNC);
                ocmd.Parameters.Add("@presult4GNC", oEResultGNC.result4GNC);
                ocmd.Parameters.Add("@presult5GNC", oEResultGNC.result5GNC);
                ocmd.Parameters.Add("@pobservaciones", oEResultGNC.observaciones);
                ocmd.CommandText = "pa_crearTblResultOGeneracionNuevosConceptos";
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
