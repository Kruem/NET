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
    public class CDresultOEscalabilidad
    {
        CDconexion oconexion = new CDconexion();
        public bool crearResultEscalabilidad(tblResultOEscalabilidad oEResEscalab)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresResultESC", oEResEscalab.idEmpresResultESC);
                ocmd.Parameters.Add("@pfechaResultESC", oEResEscalab.fechaResultESC);
                ocmd.Parameters.Add("@ptotalResultESC", oEResEscalab.totalResultESC);
                ocmd.Parameters.Add("@presult1ESC", oEResEscalab.result1ESC);
                ocmd.Parameters.Add("@presult2ESC", oEResEscalab.result2ESC);
                ocmd.Parameters.Add("@presult3ESC", oEResEscalab.result3ESC);
                ocmd.Parameters.Add("@presult4ESC", oEResEscalab.result4ESC);
                ocmd.Parameters.Add("@presult5ESC", oEResEscalab.result5ESC);
                ocmd.Parameters.Add("@presult6ESC", oEResEscalab.result6ESC);
                ocmd.Parameters.Add("@presult7ESC", oEResEscalab.result7ESC);
                ocmd.Parameters.Add("@presult8ESC", oEResEscalab.result8ESC);
                ocmd.Parameters.Add("@presult9ESC", oEResEscalab.result9ESC);
                ocmd.Parameters.Add("@pobservaciones", oEResEscalab.observaciones);
                ocmd.CommandText = "pa_crearTblResultOEscalabilidad";
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
