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
    public class CDresultTHOrganizEstructEmpres
    {
        CDconexion oconexion = new CDconexion();

        public bool CrearResultTHOrganizEstructEmpres(tblResultTHOrganizEstructEmpres empre)
        {
            try
            {
                SqlCommand ocmd = new SqlCommand();
                ocmd.CommandType = CommandType.StoredProcedure;
                ocmd.Parameters.Add("@pidEmpresResultOEE",empre.idEmpresResultOEE);
                ocmd.Parameters.Add("@pfechaResultOEE", empre.fechaResultOEE);
                ocmd.Parameters.Add("@ptotalResultOEE", empre.totalResultOEE);
                ocmd.Parameters.Add("@presult1OEE",empre.result1OEE);
                ocmd.Parameters.Add("@presult2OEE", empre.result2OEE);
                ocmd.Parameters.Add("@presult3OEE", empre.result3OEE);
                ocmd.Parameters.Add("@presult4OEE", empre.result4OEE);
                ocmd.Parameters.Add("@presult5OEE", empre.result5OEE);
                ocmd.Parameters.Add("@presult6OEE", empre.result6OEE);
                ocmd.Parameters.Add("@presult7OEE", empre.result7OEE);
                ocmd.Parameters.Add("@pobservaciones", empre.observaciones);
                ocmd.CommandText = "pa_crearTblResultTHOrganizEstructEmpres";
                ocmd.Connection = oconexion.Conectar();
                ocmd.ExecuteNonQuery();

                return true;
            }
            catch (Exception erro)
            {

                throw new Exception(erro.Message);
            }
        }
    }
}
