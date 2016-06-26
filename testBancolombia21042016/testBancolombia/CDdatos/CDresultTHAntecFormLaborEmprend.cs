using System;
using CEntidades;
using System.Data.SqlClient;
using System.Data;

namespace CDdatos
{
    public class CDresultTHAntecFormLaborEmprend
    {
        CDconexion oconexion = new CDconexion();

        public bool CrearResultTHAntecFormLaborEmprend(tblResultTHAntecFormLaborEmprend empre)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresResultAFLE",empre.idEmpresResultAFLE);
                ocmd.Parameters.Add("@pfechaResultAFLE", empre.fechaResultAFLE);
                ocmd.Parameters.Add("@ptotalResultAFLE", empre.totalResultAFLE);
                ocmd.Parameters.Add("@presult1AFLE", empre.result1AFLE);
                ocmd.Parameters.Add("@presult2AFLE", empre.result2AFLE);
                ocmd.Parameters.Add("@presult3AFLE", empre.result3AFLE);
                ocmd.Parameters.Add("@presult4AFLE", empre.result4AFLE);
                ocmd.Parameters.Add("@pobserv", empre.observaciones);
                ocmd.CommandText = "pa_crearTblResultTHAntecFormLaborEmprend";
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
