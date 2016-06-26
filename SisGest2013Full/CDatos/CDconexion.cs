using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


namespace CDatos
{


    public class CDconexion
    {
        public SqlConnection Conectar()
        {
            try
            {
                string conexion = System.Configuration.ConfigurationManager.ConnectionStrings["oCnx"].ToString();
                SqlConnection oConexion = new SqlConnection(conexion);
                oConexion.Open();
                return oConexion;
            }
            catch (SqlException ErrorSql)
            {
                return null;
            }
            catch (Exception Errorcs)
            {

                return null;
            }
        }

        public SqlConnection Conectar2()
        {
            try
            {
                string conexion = System.Configuration.ConfigurationManager.ConnectionStrings["cambiar nombre"].ToString();
                SqlConnection oConexion = new SqlConnection(conexion);
                oConexion.Open();
                return oConexion;
            }
            catch (SqlException ErrorSql)
            {
                return null;
            }
            catch (Exception Errorcs)
            {

                return null;
            }
        }

    }
}
