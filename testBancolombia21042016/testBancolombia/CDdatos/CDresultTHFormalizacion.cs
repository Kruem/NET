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
    public class CDresultTHFormalizacion
    {
        CDconexion oconexion = new CDconexion();

        public bool CrearResultTHFormalizacion(tblResultTHFormalizacion form)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresResultF", form.idEmpresResultF);
                ocmd.Parameters.Add("@pfechaResultF", form.fechaResultF);
                ocmd.Parameters.Add("@ptotalResultF", form.totalResultF);
                ocmd.Parameters.Add("@presult1F", form.result1F);
                ocmd.Parameters.Add("@presult2F", form.result2F);
                ocmd.Parameters.Add("@presult3F", form.result3F);
                ocmd.Parameters.Add("@presult4F", form.result4F);
                ocmd.Parameters.Add("@presult5F", form.result5F);
                ocmd.Parameters.Add("@presult6F", form.result6F);
                ocmd.Parameters.Add("@presult7F", form.result7F);
                ocmd.Parameters.Add("@presult8F", form.result8F);
                ocmd.Parameters.Add("@pobservaciones", form.observaciones);
                ocmd.CommandText = "pa_crearTblResultTHFormalizacion";
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
