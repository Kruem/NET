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
    public class CDcategoriasTimmons
    {
        CDconexion oconexion = new CDconexion();

        public bool CrearCategoriatimmos(tblECategoriasInicialTimm timmons)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresaTimm",timmons.idEmpresaTimm);
                ocmd.Parameters.Add("@pfechaTimm", timmons.fechaTimm);
                ocmd.Parameters.Add("@poportunidadTimm", timmons.oportunidadTimm);
                ocmd.Parameters.Add("@precursosTimm",timmons.recursosTimm);
                ocmd.Parameters.Add("@ptalentoHumTimm", timmons.talentoHumTimm);
                ocmd.CommandText = "pa_crearCategoriasTimmons";
                ocmd.Connection = oconexion.Conectar();
                ocmd.ExecuteNonQuery();
                return true;

            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }
        public bool ModificarTimmons(tblECategoriasInicialTimm timmons)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresaTimm", timmons.idEmpresaTimm);
                ocmd.Parameters.Add("@pfechaTimm", timmons.fechaTimm);
                ocmd.Parameters.Add("@poportunidadTimm", timmons.oportunidadTimm);
                ocmd.Parameters.Add("@precursosTimm", timmons.recursosTimm);
                ocmd.Parameters.Add("@ptalentoHumTimm", timmons.talentoHumTimm);
                ocmd.CommandText = "pa_actualizarCategoriasTimmons";
                ocmd.Connection = oconexion.Conectar();
                ocmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
           
        }
    }
}
