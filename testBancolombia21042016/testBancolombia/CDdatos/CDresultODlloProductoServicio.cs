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
    public class CDresultODlloProductoServicio
    {
        CDconexion oconexion = new CDconexion();
        public bool crearResultDlloProductoServicio(tblResultODlloProductoServicio oEResultDPS)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresResultDPS", oEResultDPS.idEmpresResultDPS);
                ocmd.Parameters.Add("@pfechaResultDPS", oEResultDPS.fechaResultDPS);
                ocmd.Parameters.Add("@ptotalResultDPS", oEResultDPS.totalResultDPS);
                ocmd.Parameters.Add("@presult1DPS", oEResultDPS.result1DPS);
                ocmd.Parameters.Add("@presult2DPS", oEResultDPS.result2DPS);
                ocmd.Parameters.Add("@presult3DPS", oEResultDPS.result3DPS);
                ocmd.Parameters.Add("@presult4DPS", oEResultDPS.result4DPS);
                ocmd.Parameters.Add("@pobservaciones", oEResultDPS.observaciones);
                ocmd.CommandText = "pa_crearTblResultODlloProductoServicio";
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

