using System;
using CEntidades;
using CDdatos;

namespace CReglas
{
    public class CRthResultCapacidBuscarInfoMercado
    {
        public bool CrearResultCapacidBuscarInfoMercado(tblResultTHCapacidBuscarInfoMercado mercado)
        {
            try
            {
                CDresultTHCapacidBuscarInfoMercado oDss = new CDresultTHCapacidBuscarInfoMercado();
                return oDss.CrearResultTHCapacidBuscarInfoMercado(mercado);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }
    }
}
