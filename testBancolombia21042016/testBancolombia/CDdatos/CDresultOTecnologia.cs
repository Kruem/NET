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
    public class CDresultOTecnologia
    {
        CDconexion oconexion = new CDconexion();
        public bool crearResultTecnologia(tblResultOTecnologia oEResTec)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresResultT", oEResTec.idEmpresResultT);
                ocmd.Parameters.Add("@pfechaResultT", oEResTec.fechaResultT);
                ocmd.Parameters.Add("@ptotalResultT", oEResTec.totalResultT);
                ocmd.Parameters.Add("@presult1T", oEResTec.result1T);
                ocmd.Parameters.Add("@presult2T", oEResTec.result2T);
                ocmd.Parameters.Add("@presult3T", oEResTec.result3T);
                ocmd.Parameters.Add("@presult4T", oEResTec.result4T);
                ocmd.Parameters.Add("@presult5T", oEResTec.result5T);
                ocmd.Parameters.Add("@presult6T", oEResTec.result6T);
                ocmd.Parameters.Add("@presult7T", oEResTec.result7T);
                ocmd.Parameters.Add("@presult8T", oEResTec.result8T);
                ocmd.Parameters.Add("@presult9T", oEResTec.result9T);
                ocmd.Parameters.Add("@presult10T", oEResTec.result10T);
                ocmd.Parameters.Add("@presult11T", oEResTec.result11T);
                ocmd.Parameters.Add("@pobservaciones", oEResTec.observaciones);
                ocmd.CommandText = "pa_crearTblResultOTecnologia";
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
