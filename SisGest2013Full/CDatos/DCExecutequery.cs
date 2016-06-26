using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CEntidades;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace CDatos
{

    public class CDExecutequery
    {
        private string Conexion = System.Configuration.ConfigurationManager.ConnectionStrings["oCnx"].ToString();
        //le damos el nombre de la conexión que se encuentra en el archivo web.config
        //private string Conexion = "Server=pqe124950T\parquee;Database=Sistemas_integrados; Integrated security=True;";
        #region "Funciones de consulta"

        public bool guardar(string pprocedimiento, object[] parametros)
        {

            SqlConnection oConexion = new SqlConnection();// recibe lo que devuelve la función conectar
            oConexion.ConnectionString = Conexion;
            oConexion.Open();

            //necesitamos comandos de sql. entonces le decimos donde esta el comando, osea en la variable procedimientos
            SqlCommand objcmd = new SqlCommand(pprocedimiento, oConexion);

            //Le decimos que es un procedimiento almacenado
            objcmd.CommandType = CommandType.StoredProcedure;
            //ciclo para manejar parametros
            foreach (object param in parametros)
            {
                objcmd.Parameters.Add(new SqlParameter().Value = param);
            }

            objcmd.ExecuteNonQuery();
            oConexion.Close();
            return true;
        }
        #endregion


        public DataSet consulta(string pprocedimiento, object[] Parametros)
        {
            SqlConnection oConexion = new SqlConnection();
            oConexion.ConnectionString = Conexion;
            oConexion.Open();

            SqlCommand objcmd = new SqlCommand(pprocedimiento, oConexion);
            objcmd.CommandType = CommandType.StoredProcedure;
            //ciclo para manejar parametros
            foreach (object param in Parametros)
            {
                objcmd.Parameters.Add(new SqlParameter().Value = param);
            }
            DataSet DS = new DataSet();
            SqlDataAdapter DA = new SqlDataAdapter(objcmd);
            DA.Fill(DS);
            oConexion.Close();
            return DS;
        }

        public DataTable consultatabla(string pprocedimiento, object[] Parametros)
        {
            SqlConnection oConexion = new SqlConnection();
            oConexion.ConnectionString = Conexion;
            oConexion.Open();

            SqlCommand objcmd = new SqlCommand(pprocedimiento, oConexion);
            objcmd.CommandType = CommandType.StoredProcedure;
            //ciclo para manejar parametros
            foreach (object param in Parametros)
            {
                objcmd.Parameters.Add(new SqlParameter().Value = param);
            }
            DataTable DS = new DataTable();
            SqlDataAdapter DA = new SqlDataAdapter(objcmd);
            DA.Fill(DS);
            oConexion.Close();
            return DS;
        }

        public DataTable consultatabla(string pprocedimiento)
        {
            SqlConnection oConexion = new SqlConnection();
            oConexion.ConnectionString = Conexion;
            oConexion.Open();

            SqlCommand objcmd = new SqlCommand(pprocedimiento, oConexion);
            objcmd.CommandType = CommandType.StoredProcedure;
            DataTable DS = new DataTable();
            SqlDataAdapter DA = new SqlDataAdapter(objcmd);
            DA.Fill(DS);
            oConexion.Close();
            return DS;
        }



        public DataSet consultarindividual(string procedimiento) /*Se indica el nombre de la consulta y los parametros de la misma*/
        {
            try
            {
                SqlConnection oConexion = new SqlConnection();
                oConexion.ConnectionString = Conexion;
                oConexion.Open();

                //necesitamos comandos de sql. entonces le decimos donde esta el comando, osea en la variable procedimientos
                SqlCommand cmd = new SqlCommand(procedimiento, oConexion);
                //le decimos que es un procedimiento almacenado.
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd); //SqlDataAdapter solo  adapta los datos, no los guarda en la memoria RAM
                DataSet ds = new DataSet(); //DataSet lleva todo a la memoria RAM
                da.Fill(ds); //Llevando al dataset los datos que fueron adaptados con el dataadapter
                return ds;
                // la funcion de abrir base de datos queda almacenada en OBJCONEXION.
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
        }

        //La función de abrir base de datos queda almacenada en CDconexion
    }
}
