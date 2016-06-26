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
    public class CRtblResultOPrVl
    {
        public bool crearResultPrDeVl(tblResultOPropuestaDeValor oEresPdV)
        {
            //CD == crearResultPropDeValor
            try
            {
                CDresultOPropuestaDeValor oDss = new CDresultOPropuestaDeValor();
                return oDss.crearResultPropDeValor(oEresPdV);

            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }
    }
}
