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
    public class CDresultOPropiedadIntelectual
    {
        CDconexion oconexion = new CDconexion();
        public bool crearResultPropIntelectual(tblResultOPropiedadIntelectual oEResultPI)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresResultPI", oEResultPI.idEmpresResultPI);
                ocmd.Parameters.Add("@pfechaResultPI", oEResultPI.fechaResultPI);
                ocmd.Parameters.Add("@ptotalResultPI", oEResultPI.totalResultPI);
                ocmd.Parameters.Add("@presult1PI", oEResultPI.result1PI);
                ocmd.Parameters.Add("@presult2PI", oEResultPI.result2PI);
                ocmd.Parameters.Add("@presult3PI", oEResultPI.result3PI);
                ocmd.Parameters.Add("@presult4PI", oEResultPI.result4PI);
                ocmd.Parameters.Add("@presult5PI", oEResultPI.result5PI);
                ocmd.Parameters.Add("@presult6PI", oEResultPI.result6PI);
                ocmd.Parameters.Add("@pobservaciones", oEResultPI.observaciones);
                ocmd.CommandText = "pa_crearTblResultOPropiedadIntelectual";
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
