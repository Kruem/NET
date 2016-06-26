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
    public class CDresultRProyeccionEconomica
    {
        CDconexion oconexion = new CDconexion();
        public bool CrearResultRProyeccionEconimica(tblResultRProyeccionEconomica econo)
        {

            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresResultPE", econo.idEmpresResultPE);
                ocmd.Parameters.Add("@pfechaResultPE", econo.fechaResultPE);
                ocmd.Parameters.Add("@ptotalResultPE", econo.totalResultPE);
                ocmd.Parameters.Add("@presult1PE", econo.result1PE);
                ocmd.Parameters.Add("@presult2PE", econo.result2PE);
                ocmd.Parameters.Add("@presult3PE", econo.result3PE);
                ocmd.Parameters.Add("@presult4PE", econo.result4PE);
                ocmd.Parameters.Add("@presult5PE", econo.result5PE);
                ocmd.Parameters.Add("@presult6PE", econo.result6PE);
                ocmd.Parameters.Add("@presult7PE", econo.result7PE);
                ocmd.Parameters.Add("@presult8PE", econo.result8PE);
                ocmd.Parameters.Add("@presult9PE", econo.result9PE);
                ocmd.Parameters.Add("@presult10PE", econo.result10PE);
                ocmd.Parameters.Add("@presult11PE", econo.result11PE);
                ocmd.Parameters.Add("@presult12PE", econo.result12PE);
                ocmd.Parameters.Add("@pobservaciones", econo.observaciones);
                ocmd.CommandText = "pa_creartblResultRProyeccionEconomica";
                ocmd.Connection = oconexion.Conectar();
                ocmd.ExecuteNonQuery();
                ocmd.Connection.Close();
                return true;

            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }
    }
}
