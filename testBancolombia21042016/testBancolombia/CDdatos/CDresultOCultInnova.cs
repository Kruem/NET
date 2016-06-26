using CEntidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CDdatos
{
    public class CDresultOCultInnova
    {
        CDconexion oconexion = new CDconexion();
        public bool crearResultCulturaInnova(tblResultOCulturaDeLaInnovacion oEResCulInn)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresResultCDI", oEResCulInn.idEmpresResultCDI);
                ocmd.Parameters.Add("@pfechaResultCDI", oEResCulInn.fechaResultCDI);
                ocmd.Parameters.Add("@ptotalResultCDI", oEResCulInn.totalResultCDI);
                ocmd.Parameters.Add("@presult1CDI", oEResCulInn.result1CDI);
                ocmd.Parameters.Add("@presult2CDI", oEResCulInn.result2CDI);
                ocmd.Parameters.Add("@presult3CDI", oEResCulInn.result3CDI);
                ocmd.Parameters.Add("@presult4CDI", oEResCulInn.result4CDI);
                ocmd.Parameters.Add("@presult5CDI", oEResCulInn.result5CDI);
                ocmd.Parameters.Add("@pobservaciones", oEResCulInn.observaciones);
                ocmd.CommandText = "pa_crearTblResultOCulturaDeLaInnovacion";
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
