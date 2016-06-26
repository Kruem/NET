using System;
using CEntidades;
using CDdatos;

namespace CReglas
{
    public class CRthResultCapacidConstruRedContacto
    {
        public bool CrearResultCapacidConstruRedContacto(tblResultTHCapacidConstruRedContacto contac)
        {
            try
            {
                CDresultTHCapacidConstruRedContacto oDss = new CDresultTHCapacidConstruRedContacto();
                return oDss.ResultTHCapacidConstruRedContacto(contac);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
           
        }
    }
}
