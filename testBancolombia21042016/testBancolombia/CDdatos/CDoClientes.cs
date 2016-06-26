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
    public class CDoClientes
    {
        CDconexion oconexion = new CDconexion();

        public bool CrearOClientes(tblOClientes cliente)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresaC", cliente.idEmpresaC);
                ocmd.Parameters.Add("@pfechaC", cliente.fechaC);
                ocmd.Parameters.Add("@pvalorPorcC", cliente.valorPorcC);
                ocmd.Parameters.Add("@pvalorPor1C", cliente.valorPor1C);
                ocmd.Parameters.Add("@pvalorPor2C", cliente.valorPor2C);
                ocmd.Parameters.Add("@pvalorPor3C", cliente.valorPor3C);
                ocmd.Parameters.Add("@pvalorPor4C", cliente.valorPor4C);
                ocmd.Parameters.Add("@pvalorPor5C", cliente.valorPor5C);
                ocmd.Parameters.Add("@pvalorPor6C", cliente.valorPor6C);
                ocmd.Parameters.Add("@pvalorPor7C", cliente.valorPor7C);
                ocmd.CommandText = "pa_crearTblOClientes";
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
