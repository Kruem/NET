using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CEntidades;
using CDdatos;
using System.Data;

namespace CReglas
{
    public class CREmpresa_x_Default
    {
        public bool crearDefaultEmpresa(tblDefault_X_Empresa oEEmprDef)
        {
            try
            {
                CDEmpresa_x_Default oDEmpDef = new CDEmpresa_x_Default();
                return oDEmpDef.crearDefaultEmpresa(oEEmprDef);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }

        public DataSet ConsultarcategoriasEmpresaDefaultInd(tblDefault_X_Empresa oEEmprDef)
        {
            try
            {
                CDEmpresa_x_Default oDEmpDef = new CDEmpresa_x_Default();
                return oDEmpDef.ConsultarcategoriasEmpresa(oEEmprDef);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }

        public DataSet ConsultarcategoriasEmpresasDefault()
        {
            try
            {
                CDEmpresa_x_Default oDEmpDef = new CDEmpresa_x_Default();
                return oDEmpDef.ConsultarcategoriasEmpresa();
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }
        public DataSet ConsultaParamEmpresa(tblDefault_X_Empresa oEEmprDef)
        {
            try
            {
                CDEmpresa_x_Default oDEmpDef = new CDEmpresa_x_Default();
                return oDEmpDef.ConsultarcategoriasEmpresaTIMM(oEEmprDef);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }

        public DataSet consultaEmpresasParametrizadasTodas()
        {
            try
            {
                CDEmpresa_x_Default oDEmpDef = new CDEmpresa_x_Default();
                return oDEmpDef.consultaEmpresasParametrizadasTodas();
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }
    }
}
