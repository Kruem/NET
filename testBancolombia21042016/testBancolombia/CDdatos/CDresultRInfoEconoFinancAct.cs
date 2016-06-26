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
    public class CDresultRInfoEconoFinancAct
    {
        CDconexion oconoexion = new CDconexion();

        public bool CrearResultRInfoEconoFinancAct(tblResultRInfoEconoFinancAct act)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresResultIEF", act.idEmpresResultIEF);
                ocmd.Parameters.Add("@pfechaResultIEF", act.fechaResultIEF);
                ocmd.Parameters.Add("@ptotalResultIEF", act.totalResultIEF);
                ocmd.Parameters.Add("@presult1IEF", act.result1IEF);
                ocmd.Parameters.Add("@presult2IEF", act.result2IEF);
                ocmd.Parameters.Add("@presult3IEF", act.result3IEF);
                ocmd.Parameters.Add("@presult4IEF", act.result4IEF);
                ocmd.Parameters.Add("@presult5IEF", act.result5IEF);
                ocmd.Parameters.Add("@presult6IEF", act.result6IEF);
                ocmd.Parameters.Add("@presult7IEF", act.result7IEF);
                ocmd.Parameters.Add("@presult8IEF", act.result8IEF);
                ocmd.Parameters.Add("@presult9IEF", act.result9IEF);
                ocmd.Parameters.Add("@presult10IEF", act.result10IEF);
                ocmd.Parameters.Add("@presult11IEF", act.result11IEF);
                ocmd.Parameters.Add("@presult12IEF", act.result12IEF);
                ocmd.Parameters.Add("@presult13IEF", act.result13IEF);
                ocmd.Parameters.Add("@presult14IEF", act.result14IEF);
                ocmd.Parameters.Add("@presult15IEF", act.result15IEF);
                ocmd.Parameters.Add("@presult16IEF", act.result16IEF);
                ocmd.Parameters.Add("@presult17IEF", act.result17IEF);
                ocmd.Parameters.Add("@presult18IEF", act.result18IEF);
                ocmd.Parameters.Add("@presult19IEF", act.result19IEF);
                ocmd.Parameters.Add("@presult20IEF", act.result20IEF);
                ocmd.Parameters.Add("@presult21IEF", act.result21IEF);
                ocmd.Parameters.Add("@presult22IEF", act.result22IEF);
                ocmd.Parameters.Add("@presult23IEF", act.result23IEF);
                ocmd.Parameters.Add("@presult24IEF", act.result24IEF);
                ocmd.Parameters.Add("@presult25IEF", act.result25IEF);
                ocmd.Parameters.Add("@presult26IEF", act.result26IEF);
                ocmd.Parameters.Add("@presult27IEF", act.result27IEF);
                ocmd.Parameters.Add("@presult28IEF", act.result28IEF);
                ocmd.Parameters.Add("@pobservaciones", act.observaciones);
                ocmd.CommandText = "pa_crearTblResultRInfoEconoFinancAct";
                ocmd.Connection = oconoexion.Conectar();
                ocmd.ExecuteNonQuery();
                ocmd.Connection.Close();
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
