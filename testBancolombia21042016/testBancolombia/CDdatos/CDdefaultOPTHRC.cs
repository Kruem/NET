using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CEntidades;
using System.Data;
using System.Data.SqlClient;

namespace CDdatos
{
    public class CDdefaultOPTHRC
    {
        CDconexion oConexion = new CDconexion();

        public bool crearDefaultOPTHRC(tblCategoriaInicialDefault oEcatDef)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.Connection = oConexion.Conectar();
                ocmd.CommandType = CommandType.StoredProcedure;               
                ocmd.Parameters.Add("@pfechaCatDefault", oEcatDef.fechaCatDefault);
                ocmd.Parameters.Add("@popDefault", oEcatDef.opDefault);
                ocmd.Parameters.Add("@pthDefault", oEcatDef.thDefault);
                ocmd.Parameters.Add("@precDefault", oEcatDef.recDefault);
                ocmd.CommandText = "pa_crearcategDefault";
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

        public DataSet consultarOPTHRCxFecha(tblCategoriaInicialDefault oEcatDef)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pfechaCatDefault", oEcatDef.fechaCatDefault);
                ocmd.CommandText = "pa_consultarOPTHRCxFecha";
                SqlDataAdapter oDA = new SqlDataAdapter(ocmd);
                DataSet oDS = new DataSet();
                ocmd.Connection = oConexion.Conectar();
                oDA.Fill(oDS, ocmd.CommandText);
                return oDS;
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

        public DataSet consultarOPTHRCini()
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.CommandText = "pa_consultaCategDefINI";
                SqlDataAdapter oDA = new SqlDataAdapter(ocmd);
                DataSet oDS = new DataSet();
                ocmd.Connection = oConexion.Conectar();
                oDA.Fill(oDS, ocmd.CommandText);
                return oDS;
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
