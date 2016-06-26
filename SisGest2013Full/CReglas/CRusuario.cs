

namespace CReglas
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using CEntidades;
    using CDatos;
    using System.Data;
    using System.Data.SqlClient;

    public class CRusuario
    {

        CDExecutequery oguardar = new CDExecutequery();
        CDExecutequery oconsulta = new CDExecutequery();
        CDconexion objconex = new CDconexion();

        public bool guardarusuario(Cusuario oEntidades)
        {

            try
            {
                //le mandamos los parámetros y el P.A
                SqlParameter[] parametros = new SqlParameter[8];
                parametros[0] = new SqlParameter("@pusuario", oEntidades.Usuario);
                parametros[1] = new SqlParameter("@pnombre", oEntidades.Nombre);
                parametros[2] = new SqlParameter("@papellido", oEntidades.Apellido);
                parametros[3] = new SqlParameter("@pcorreo", oEntidades.Correo);
                parametros[4] = new SqlParameter("@pcontrasena", oEntidades.Contrasena);
                parametros[5] = new SqlParameter("@pestado", oEntidades.Estado);
                parametros[6] = new SqlParameter("@ptipo", oEntidades.Tipo);
                parametros[7] = new SqlParameter("@pseccion", oEntidades.Seccion);
                return oguardar.guardar("pa_guardarUsuario", parametros);
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
        }


        public DataSet loginusuario(Cusuario oentidadusr)
        {
            try
            {
                SqlParameter[] parametros = new SqlParameter[2];
                parametros[0] = new SqlParameter("@usuario", oentidadusr.Usuario);
                parametros[1] = new SqlParameter("@clave", oentidadusr.Contrasena);
                return oconsulta.consulta("pa_tipoUsuario", parametros);

            }

            catch (Exception error)
            {
                throw new Exception(error.Message);
            }

        }

        public DataSet consultartipo(Cusuario oEusuario)
        {
            try
            {
                SqlParameter[] parametros = new SqlParameter[1];
                parametros[0] = new SqlParameter("@pusuario", oEusuario.Usuario);
                return oconsulta.consulta("", parametros);
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
        }

        public bool modificar_usuario(Cusuario oEusr)
        {
            //modificalos datos del usuario y el tipo de usuario para el login
            try
            {
                SqlParameter[] parametros = new SqlParameter[8];
                parametros[0] = new SqlParameter("@pusuario", oEusr.Usuario);
                parametros[1] = new SqlParameter("@pnombre", oEusr.Nombre);
                parametros[2] = new SqlParameter("@papellido", oEusr.Apellido);
                parametros[3] = new SqlParameter("@pcontrasena", oEusr.Contrasena);
                parametros[4] = new SqlParameter("@pcorreo", oEusr.Correo);
                parametros[5] = new SqlParameter("@pseccion", oEusr.Seccion);
                parametros[6] = new SqlParameter("@ptipo", oEusr.Tipo);
                parametros[7] = new SqlParameter("@pestado", oEusr.Estado);

                return oguardar.guardar("pa_modificarUsuario", parametros);
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
        }

        public DataSet consulta_individual_usuario(Cusuario oEusuario)
        {
            try
            {
                SqlParameter[] parametros = new SqlParameter[1];
                parametros[0] = new SqlParameter("@pidUsr", oEusuario.Usuario);
                return oconsulta.consulta("pa_consultarUsrInd", parametros);
            }
            catch (Exception error)
            {
                throw new Exception(error.Message);
            }
        }

        public DataSet consulta_usuarios_todos()
        {
            return oconsulta.consultarindividual("pa_consultarUsrTodos");
        }
    }
}
