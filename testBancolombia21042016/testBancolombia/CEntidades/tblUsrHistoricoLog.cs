using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace CEntidades
{
    public class tblUsrHistoricoLog
    {
        public int consecHistUsr { get; set; }
        public string idUsuario { get; set; }
        public int accion { get; set; }
        public string observaciones { get; set; }
    }
}