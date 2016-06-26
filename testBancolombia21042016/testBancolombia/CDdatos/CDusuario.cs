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
    public class CDusuario
    {
        CDconexion oConexion = new CDconexion();

        public bool CrearUsuario(tblUsr usuario)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidUsuario", usuario.idUsuario);
                ocmd.Parameters.Add("@pnombres", usuario.nombres);
                ocmd.Parameters.Add("@papellidos", usuario.apellidos);
                ocmd.Parameters.Add("@prolUsr", usuario.rolUsr);
                ocmd.Parameters.Add("@pcargo", usuario.cargo);
                ocmd.Parameters.Add("@pinstitucion", usuario.institucion);
                ocmd.Parameters.Add("@pcorreo", usuario.correo);
                ocmd.Parameters.Add("@ptel_cel", usuario.tel_cel);
                ocmd.Parameters.Add("@prolProyecto", usuario.rolProyecto);
                ocmd.Parameters.Add("@pnombreUsr", usuario.nombreUsr);
                ocmd.Parameters.Add("@pclaveUsr", usuario.claveUsr);
                ocmd.CommandText = "pa_crearUsr";
                ocmd.Connection = oConexion.Conectar();
                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (SqlException ErrorPA)
            {
                throw new Exception(ErrorPA.Message);
            }
        }
        public bool ModificarUsuario(tblUsr usuario)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidUsuario", usuario.idUsuario);
                ocmd.Parameters.Add("@pnombres", usuario.nombres);
                ocmd.Parameters.Add("@papellidos", usuario.apellidos);
                ocmd.Parameters.Add("@prolUsr", usuario.rolUsr);
                ocmd.Parameters.Add("@pcargo", usuario.cargo);
                ocmd.Parameters.Add("@pinstitucion", usuario.institucion);
                ocmd.Parameters.Add("@pcorreo", usuario.correo);
                ocmd.Parameters.Add("@ptel_cel", usuario.tel_cel);
                ocmd.Parameters.Add("@prolProyecto", usuario.rolProyecto);
                ocmd.Parameters.Add("@pnombreUsr", usuario.nombreUsr);
                ocmd.Parameters.Add("@pclaveUsr", usuario.claveUsr);
                ocmd.CommandText = "pa_actualizarrUsr";
                ocmd.Connection = oConexion.Conectar();
                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (SqlException ErrorPA)
            {
                throw new Exception(ErrorPA.Message);
            }
        }
        public DataSet ConsultarUsuario(tblUsr usuario)
        {
            try
            {
                SqlCommand oCmd = new SqlCommand();
                oCmd.CommandType = CommandType.StoredProcedure;
                oCmd.Parameters.Add("@pidUsr", usuario.idUsuario);
                oCmd.CommandText = "pa_consultaUsr";
                SqlDataAdapter oDA = new SqlDataAdapter(oCmd);
                DataSet oDS = new DataSet();
                oCmd.Connection = oConexion.Conectar();
                oDA.Fill(oDS, oCmd.CommandText);
                return oDS;
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
        }
        /*Login*/
        public DataSet LoginUsuario(tblUsr usuario)
        {
            try
            {
                SqlCommand oCmd = new SqlCommand();
                oCmd.CommandType = CommandType.StoredProcedure;
                oCmd.Parameters.Add("@pnombreUsr", usuario.nombreUsr);
                oCmd.Parameters.Add("@pclaveUsr", usuario.claveUsr);
                oCmd.CommandText = "pa_loginUsr";
                SqlDataAdapter oDA = new SqlDataAdapter(oCmd);
                DataSet oDs = new DataSet();
                oCmd.Connection = oConexion.Conectar();
                oDA.Fill(oDs, oCmd.CommandText);
                oCmd.Connection.Close();
                return oDs;
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
        }
    }
}
