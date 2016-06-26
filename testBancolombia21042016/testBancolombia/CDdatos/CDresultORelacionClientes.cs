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
    public class CDresultORelacionClientes
    {
        CDconexion oconexion = new CDconexion();
        public bool crearResultRelacionClientes(tblResultORelacionClientes oEResultRC)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresResultRC", oEResultRC.idEmpresResultRC);
                ocmd.Parameters.Add("@pfechaResultRC", oEResultRC.fechaResultRC);
                ocmd.Parameters.Add("@ptotalResultRC", oEResultRC.totalResultRC);
                ocmd.Parameters.Add("@presult1RC", oEResultRC.result1RC);
                ocmd.Parameters.Add("@presult2RC", oEResultRC.result2RC);
                ocmd.Parameters.Add("@presult3RC", oEResultRC.result3RC);
                ocmd.Parameters.Add("@presult4RC", oEResultRC.result4RC);
                ocmd.Parameters.Add("@presult5RC", oEResultRC.result5RC);
                ocmd.Parameters.Add("@presult6RC", oEResultRC.result6RC);
                ocmd.Parameters.Add("@presult7RC", oEResultRC.result7RC);
                ocmd.Parameters.Add("@presult8RC", oEResultRC.result8RC);
                ocmd.Parameters.Add("@presult9RC", oEResultRC.result9RC);
                ocmd.Parameters.Add("@pobservaciones", oEResultRC.observaciones);
                ocmd.CommandText = "pa_crearTblResultORelacionClientes";
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