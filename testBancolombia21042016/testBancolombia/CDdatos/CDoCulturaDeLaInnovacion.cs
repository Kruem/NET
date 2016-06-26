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
    public class CDoCulturaDeLaInnovacion
    {
        CDconexion oconexion = new CDconexion();

        public bool CrearOCulturaDeLaInnovacion(tblOCulturaDeLaInnovacion inno)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresaCDI", inno.idEmpresaCDI);
                ocmd.Parameters.Add("@pfechaCDI", inno.fechaCDI);
                ocmd.Parameters.Add("@pvalorPorcCDI", inno.valorPorcCDI);
                ocmd.Parameters.Add("@pvalorPor1CDI", inno.valorPor1CDI);
                ocmd.Parameters.Add("@pvalorPor2CDI", inno.valorPor2CDI);
                ocmd.Parameters.Add("@pvalorPor3CDI", inno.valorPor3CDI);
                ocmd.Parameters.Add("@pvalorPor4CDI", inno.valorPor4CDI);
                ocmd.Parameters.Add("@pvalorPor5CDI", inno.valorPor5CDI);
                ocmd.CommandText = " pa_crearTblOCulturaDeLaInnovacion";
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
