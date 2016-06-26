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
    public class CDresultTHCapacidConstruRedContacto
    {
        CDconexion oconexion = new CDconexion();

        public bool ResultTHCapacidConstruRedContacto(tblResultTHCapacidConstruRedContacto cont)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresResultCCRC", cont.idEmpresResultCCRC);
                ocmd.Parameters.Add("@pfechaResultCCRC", cont.fechaResultCCRC);
                ocmd.Parameters.Add("@ptotalResultCCRC", cont.totalResultCCRC);
                ocmd.Parameters.Add("@presult1CCRC", cont.result1CCRC);
                ocmd.Parameters.Add("@presult2CCRC", cont.result2CCRC);
                ocmd.Parameters.Add("@presult3CCRC", cont.result3CCRC);
                ocmd.Parameters.Add("@presult4CCRC", cont.result4CCRC);
                ocmd.Parameters.Add("@presult5CCRC", cont.result5CCRC);
                ocmd.Parameters.Add("@presult6CCRC", cont.result6CCRC);
                ocmd.Parameters.Add("@presult7CCRC", cont.result7CCRC);
                ocmd.Parameters.Add("@pobservaciones", cont.observaciones);
                ocmd.CommandText = "pa_crearTblResultTHCapacidConstruRedContacto";
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
