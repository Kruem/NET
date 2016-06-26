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
     public class CDemprendedor
    {
         CDconexion oconexion = new CDconexion();

         public bool CrearEmprendedor(tblAppsEmprendedores emprendedor)
         {
             try
             {
                 SqlCommand ocmd = new SqlCommand();
                 ocmd.CommandType = CommandType.StoredProcedure;
                 ocmd.Parameters.Add("@pidEmprendedor",emprendedor.idEmprendedor);
                 ocmd.Parameters.Add("@pnombres", emprendedor.nombres);
                 ocmd.Parameters.Add("@papellidos", emprendedor.apellidos);
                 ocmd.Parameters.Add("@pgenero", emprendedor.apellidos);
                 ocmd.Parameters.Add("@pfechaNacim", emprendedor.fechaNacim);
                 ocmd.Parameters.Add("@pescolaridad", emprendedor.escolaridad);
                 ocmd.Parameters.Add("@pinstEducativa", emprendedor.instEducativa);
                 ocmd.Parameters.Add("@ppregrado", emprendedor.pregrado);
                 ocmd.Parameters.Add("@puniversidad", emprendedor.universidad);
                 ocmd.Parameters.Add("@pingles", emprendedor.ingles);
                 ocmd.Parameters.Add("@pestadoCivil", emprendedor.estadoCivil);
                 ocmd.Parameters.Add("@phijos", emprendedor.hijos);
                 ocmd.Parameters.Add("@pgrupoPoblacional", emprendedor.grupoPoblacional);
                 ocmd.Parameters.Add("@pdiscapacidad", emprendedor.discapacidad);
                 ocmd.Parameters.Add("@pvictima", emprendedor.victima);
                 ocmd.Parameters.Add("@plgbti", emprendedor.lgbti);
                 ocmd.Parameters.Add("@ptelEmpresa", emprendedor.telEmpresa);
                 ocmd.Parameters.Add("@ptelResidencia", emprendedor.telResidencia);
                 ocmd.Parameters.Add("@pcelular", emprendedor.celular);
                 ocmd.Parameters.Add("@pcorreo", emprendedor.correo);
                 ocmd.Parameters.Add("@pdireccion", emprendedor.direccion);
                 ocmd.Parameters.Add("@pcomuna", emprendedor.comuna);
                 ocmd.Parameters.Add("@pestrato", emprendedor.estrato);
                 ocmd.Parameters.Add("@pbarrio", emprendedor.barrio);
                 ocmd.Parameters.Add("@pciudad", emprendedor.ciudad);
                 ocmd.CommandText = "pa_crearEmprendedor";
                 ocmd.Connection = oconexion.Conectar();
                 ocmd.ExecuteNonQuery();
                 return true;

             }
             catch (Exception error)
             {

                 throw new Exception(error.Message);
             }
         }

         public bool ModificarEmprendedor(tblAppsEmprendedores emprendedor)
         {
             try
             {
                 SqlCommand ocmd = new SqlCommand();
                 ocmd.CommandType = CommandType.StoredProcedure;
                 ocmd.Parameters.Add("@pidEmprendedor", emprendedor.idEmprendedor);
                 ocmd.Parameters.Add("@pnombres", emprendedor.nombres);
                 ocmd.Parameters.Add("@papellidos", emprendedor.apellidos);
                 ocmd.Parameters.Add("@pgenero", emprendedor.apellidos);
                 ocmd.Parameters.Add("@pfechaNacim", emprendedor.fechaNacim);
                 ocmd.Parameters.Add("@pescolaridad", emprendedor.escolaridad);
                 ocmd.Parameters.Add("@pinstEducativa", emprendedor.instEducativa);
                 ocmd.Parameters.Add("@ppregrado", emprendedor.pregrado);
                 ocmd.Parameters.Add("@puniversidad", emprendedor.universidad);
                 ocmd.Parameters.Add("@pingles", emprendedor.ingles);
                 ocmd.Parameters.Add("@pestadoCivil", emprendedor.estadoCivil);
                 ocmd.Parameters.Add("@phijos", emprendedor.hijos);
                 ocmd.Parameters.Add("@pgrupoPoblacional", emprendedor.grupoPoblacional);
                 ocmd.Parameters.Add("@pdiscapacidad", emprendedor.discapacidad);
                 ocmd.Parameters.Add("@pvictima", emprendedor.victima);
                 ocmd.Parameters.Add("@plgbti", emprendedor.lgbti);
                 ocmd.Parameters.Add("@ptelEmpresa", emprendedor.telEmpresa);
                 ocmd.Parameters.Add("@ptelResidencia", emprendedor.telResidencia);
                 ocmd.Parameters.Add("@pcelular", emprendedor.celular);
                 ocmd.Parameters.Add("@pcorreo", emprendedor.correo);
                 ocmd.Parameters.Add("@pdireccion", emprendedor.direccion);
                 ocmd.Parameters.Add("@pcomuna", emprendedor.comuna);
                 ocmd.Parameters.Add("@pestrato", emprendedor.estrato);
                 ocmd.Parameters.Add("@pbarrio", emprendedor.barrio);
                 ocmd.Parameters.Add("@pciudad", emprendedor.ciudad);
                 ocmd.CommandText = "pa_actualizarEmprendedor";
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
