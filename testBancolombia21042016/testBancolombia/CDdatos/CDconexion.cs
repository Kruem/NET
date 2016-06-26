﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace CDdatos
{
    class CDconexion
    {
        public SqlConnection Conectar()
        {
            try
            {
                string conexion = ConfigurationManager.ConnectionStrings["oCnx"].ToString();
                SqlConnection oConexion = new SqlConnection(conexion);
                oConexion.Open();
                return oConexion;
            }
            catch (SqlException ErrorSql)
            {

                throw new Exception( ErrorSql.Message);
               // return null
            }
            catch( Exception Errorcs)
            {
                throw new Exception( Errorcs.Message);
               // return null;
            }
        }
    }
}
