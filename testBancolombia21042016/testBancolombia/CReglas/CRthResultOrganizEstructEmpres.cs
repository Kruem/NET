using System;
using CEntidades;
using CDdatos;

namespace CReglas
{
   public class CRthResultOrganizEstructEmpres
    {
        public bool CrearResultOrganizEstructEmpres(tblResultTHOrganizEstructEmpres empresa)
        {
            
            try
            {
                CDresultTHOrganizEstructEmpres oDss = new CDresultTHOrganizEstructEmpres();
                return oDss.CrearResultTHOrganizEstructEmpres(empresa);
            }
            catch (Exception error)
            {

                throw new Exception(error.Message);
            }
        }
    }
}
