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
    public class CDresultORedefinProcesProduc
    {
        CDconexion oconexion = new CDconexion();
        public bool crearResultRedefinProcesProduc(tblResultORedefinProcesProduc oEResultRPP)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresResultRPP", oEResultRPP.idEmpresResultRPP);
                ocmd.Parameters.Add("@pfechaResultRPP", oEResultRPP.fechaResultRPP);
                ocmd.Parameters.Add("@ptotalResultRPP", oEResultRPP.totalResultRPP);
                ocmd.Parameters.Add("@presult1RPP", oEResultRPP.result1RPP);
                ocmd.Parameters.Add("@presult2RPP", oEResultRPP.result2RPP);
                ocmd.Parameters.Add("@presult3RPP", oEResultRPP.result3RPP);
                ocmd.Parameters.Add("@presult4RPP", oEResultRPP.result4RPP);
                ocmd.Parameters.Add("@presult5RPP", oEResultRPP.result5RPP);
                ocmd.Parameters.Add("@pobservaciones", oEResultRPP.observaciones);
                ocmd.CommandText = "pa_crearTblResultORedefinProcesProduc";
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