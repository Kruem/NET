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
    public class CRTimmonsOportunidad
    {
        public bool CrearPorcTimmonsOp(tblTimmOp T_OP)
        {
            try
            {
                CDTimmonsOportunidad timOp = new CDTimmonsOportunidad();
                return timOp.CrearCategoriaTimmonsOp(T_OP);
            }
            catch (Exception ErrorLenguaje)
            {
                return false;
            }
        }

        public bool ModificarPorcTimmonsOp(tblTimmOp T_OP)
        {
            try
            {
                CDTimmonsOportunidad timOp = new CDTimmonsOportunidad();
                return timOp.ModificarTimmonsOp(T_OP);
            }
            catch (Exception ErrorLenguaje)
            {
                return false;
            }
        }
    }
}
