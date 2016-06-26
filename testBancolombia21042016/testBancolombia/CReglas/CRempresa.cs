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
    public class CRempresa
    {
        public bool CrearEmpresa(tblEmpresa empresa)
        {
            try
            {
                CDempresa oDss = new CDempresa();
                return oDss.CrearEmpresa(empresa);

            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }

        }
        public bool ModificarEmpresa(tblEmpresa empresa)
        {
            try
            {
                CDempresa oDss = new CDempresa();
                return oDss.ModificarEmpresa(empresa);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }
        public DataSet consultarEmpresa(tblEmpresa empresa)
        {
            try
            {
                CDempresa oDss = new CDempresa();
                return oDss.ConsultarEmpresa(empresa);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }
        public DataSet consultarEmpresa()
        {
            try
            {
                CDempresa oDss = new CDempresa();
                return oDss.ConsultarEmpresa();
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }

    }
}
