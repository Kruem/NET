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
    public class CDresultOPropuestaDeValor
    {
        CDconexion oconexion = new CDconexion();
        public bool crearResultPropDeValor(tblResultOPropuestaDeValor oEResultPdV)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresResultPDV", oEResultPdV.idEmpresResultPDV);
                ocmd.Parameters.Add("@pfechaResultPDV", oEResultPdV.fechaResultPDV);
                ocmd.Parameters.Add("@ptotalResultPDV", oEResultPdV.totalResultPDV);
                ocmd.Parameters.Add("@presult1PDV", oEResultPdV.result1PDV);
                ocmd.Parameters.Add("@presult2PDV", oEResultPdV.result2PDV);
                ocmd.Parameters.Add("@presult3PDV", oEResultPdV.result3PDV);
                ocmd.Parameters.Add("@presult4PDV", oEResultPdV.result4PDV);
                ocmd.Parameters.Add("@presult5PDV", oEResultPdV.result5PDV);
                ocmd.Parameters.Add("@presult6PDV", oEResultPdV.result6PDV);
                ocmd.Parameters.Add("@presult7PDV", oEResultPdV.result7PDV);
                ocmd.Parameters.Add("@presult8PDV", oEResultPdV.result8PDV);
                ocmd.Parameters.Add("@presult9PDV", oEResultPdV.result9PDV);
                ocmd.Parameters.Add("@presult10PDV", oEResultPdV.result10PDV);
                ocmd.Parameters.Add("@presult11PDV", oEResultPdV.result11PDV);
                ocmd.Parameters.Add("@presult12PDV", oEResultPdV.result12PDV);
                ocmd.Parameters.Add("@presult13PDV", oEResultPdV.result13PDV);
                ocmd.Parameters.Add("@presult14PDV", oEResultPdV.result14PDV);
                ocmd.Parameters.Add("@presult15PDV", oEResultPdV.result15PDV);
                ocmd.Parameters.Add("@presult16PDV", oEResultPdV.result16PDV);
                ocmd.Parameters.Add("@presult17PDV", oEResultPdV.result17PDV);
                ocmd.Parameters.Add("@presult18PDV", oEResultPdV.result18PDV);
                ocmd.Parameters.Add("@presult19PDV", oEResultPdV.result19PDV);
                ocmd.Parameters.Add("@presult20PDV", oEResultPdV.result20PDV);
                ocmd.Parameters.Add("@presult21PDV", oEResultPdV.result21PDV);
                ocmd.Parameters.Add("@presult22PDV", oEResultPdV.result22PDV);
                ocmd.Parameters.Add("@presult23PDV", oEResultPdV.result23PDV);
                ocmd.Parameters.Add("@presult24PDV", oEResultPdV.result24PDV);
                ocmd.Parameters.Add("@presult25PDV", oEResultPdV.result25PDV);
                ocmd.Parameters.Add("@presult26PDV", oEResultPdV.result26PDV);
                ocmd.Parameters.Add("@presult27PDV", oEResultPdV.result27PDV);
                ocmd.Parameters.Add("@presult28PDV", oEResultPdV.result28PDV);
                ocmd.Parameters.Add("@pobservaciones", oEResultPdV.observaciones);
                ocmd.CommandText = "pa_crearTblResultOPropuestaDeValor";
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
