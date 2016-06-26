using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CEntidades;
using CDatos;
using System.Data;
using System.Data.SqlClient;

namespace CReglas
{
    public class CRdocs
    {
        CDconexion oConex = new CDconexion();
        CDExecutequery oconsulta = new CDExecutequery();
        public DataSet documentosEnCarpeta(CEdocs oeDocs)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                SqlDataAdapter oDA = new SqlDataAdapter(ocmd);
                DataSet ds = new DataSet();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Connection = oConex.Conectar();
                ocmd.CommandText = "pa_consultarDocs";
                ocmd.Parameters.Add("@pncarpeta", oeDocs.nombreCarp);
                oDA.Fill(ds, ocmd.CommandText);
                return ds;
            }
            catch (SqlException ErrorDB)
            {
                throw;
            }
        }
    }
}
