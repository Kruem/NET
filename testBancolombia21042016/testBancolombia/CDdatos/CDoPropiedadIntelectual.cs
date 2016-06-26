using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using CEntidades;

namespace CDdatos
{
    public class CDoPropiedadIntelectual
    {
        CDconexion ocnonexion = new CDconexion();
        public bool CrearOPropiedadIntelectual(tblOPropiedadIntelectual inte)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresaPI",inte.idEmpresaPI);
                ocmd.Parameters.Add("@pfechaPI", inte.fechaPI);
                ocmd.Parameters.Add("@pvalorPorcPI", inte.valorPorcPI);
                ocmd.Parameters.Add("@pvalorPor1PI", inte.valorPor1PI);
                ocmd.Parameters.Add("@pvalorPor2PI", inte.valorPor2PI);
                ocmd.Parameters.Add("@pvalorPor3PI", inte.valorPor3PI);
                ocmd.Parameters.Add("@pvalorPor4PI", inte.valorPor4PI);
                ocmd.Parameters.Add("@pvalorPor5PI", inte.valorPor5PI);
                ocmd.Parameters.Add("@pnroPatente", inte.nroPatente);
                ocmd.Parameters.Add("@pnomPatente", inte.nomPatente);
                ocmd.Parameters.Add("@psecretoIndustrial", inte.secretoIndustrial);
                ocmd.Parameters.Add("@pmodeloUtilidad", inte.modeloUtilidad);
                ocmd.Parameters.Add("@pmarcas", inte.marcas);
                ocmd.Parameters.Add("@pderechosAutor", inte.derechosAutor);
                ocmd.CommandText = "pa_crearTblOPropiedadIntelectual";
                ocmd.Connection = ocnonexion.Conectar();
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
