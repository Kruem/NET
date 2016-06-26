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
    public class CDoDlloProductoServicio
    {
        CDconexion ocnonexion = new CDconexion();

        public bool CrearODlloProductoServicio(tblODlloProductoServicio serv)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresaDPS", serv.idEmpresaDPS);
                ocmd.Parameters.Add("@pfechaDPS", serv.fechaDPS);
                ocmd.Parameters.Add("@pvalorPorcDPS", serv.valorPorcDPS);
                ocmd.Parameters.Add("@pvalorPor1DPS", serv.valorPor1DPS);
                ocmd.Parameters.Add("@pvalorPor2DPS", serv.valorPor2DPS);
                ocmd.Parameters.Add("@pvalorPor3DPS", serv.valorPor3DPS);
                ocmd.Parameters.Add("@pvalorPor4DPS", serv.valorPor4DPS);
                ocmd.Parameters.Add("@pvalorPor5DPS", serv.valorPor5DPS);
                ocmd.CommandText = "pa_crearTblODlloProductoServicio";
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
