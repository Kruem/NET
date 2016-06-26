using CDdatos;
using CEntidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CReglas
{
    public class CRtblResultOGNC
    {
        public bool CrearoGeneraNuevosConcept(tblResultOGeneracionNuevosConceptos oEgnc)
        {
            try
            {
                CDresultOGeneracionNuevosConceptos oDss = new CDresultOGeneracionNuevosConceptos();
                return oDss.crearResultGeneracionNuevosConceptos(oEgnc);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }
    }
}
