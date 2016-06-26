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
    public class CDresultTHClaridadComunicModeloNeg
    {
        CDconexion oconexion = new CDconexion();
      

        public bool CrearResultTHClaridadComunicModeloNeg(tblResultTHClaridadComunicModeloNeg neg)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresResultCCMN", neg.idEmpresResultCCMN);
                ocmd.Parameters.Add("@pfechaResultCCMN", neg.fechaResultCCMN);
                ocmd.Parameters.Add("@ptotalResultCCMN", neg.totalResultCCMN);
                ocmd.Parameters.Add("@presult1CCMN", neg.result1CCMN);
                ocmd.Parameters.Add("@presult2CCMN", neg.result2CCMN);
                ocmd.Parameters.Add("@presult3CCMN", neg.result3CCMN);
                ocmd.Parameters.Add("@presult4CCMN", neg.result4CCMN);
                ocmd.Parameters.Add("@presult5CCMN", neg.result5CCMN);
                ocmd.Parameters.Add("@pobservaciones", neg.observaciones);
                ocmd.CommandText = "pa_crearTblResultTHClaridadComunicModeloNeg";
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
