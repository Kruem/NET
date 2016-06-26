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
    public class CDresultTHRequerimEmpleoyRH
    {
        CDconexion oconexion = new CDconexion();

        public bool CrearResultTHRequerimEmpleoyRH(tblResultTHRequerimEmpleoyRH rh)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresResultRERH", rh.idEmpresResultRERH);
                ocmd.Parameters.Add("@pfechaResultRERH", rh.fechaResultRERH);
                ocmd.Parameters.Add("@ptotalResultRERH", rh.totalResultRERH);
                ocmd.Parameters.Add("@presult1RERH", rh.result1RERH);
                ocmd.Parameters.Add("@presult2RERH", rh.result2RERH);
                ocmd.Parameters.Add("@presult3RERH", rh.result3RERH);
                ocmd.Parameters.Add("@presult4RERH", rh.result4RERH);
                ocmd.Parameters.Add("@pobservaciones", rh.observaciones);

                ocmd.CommandText = "pa_crearTblResultTHRequerimEmpleoyRH";
                ocmd.Connection = oconexion.Conectar();
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
