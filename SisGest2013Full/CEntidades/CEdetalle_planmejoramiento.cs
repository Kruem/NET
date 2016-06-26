using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CEntidades
{

    public class CEdetalle_planmejoramiento
    {

        public int auronumericamaestra { get; set; }

        public int autonumericadetalle { get; set; }

        public string Proceso { get; set; }

        public string DescripcionMejoramiento { get; set; }

        public string Responsable { get; set; }

        public string Acciones { get; set; }

        public DateTime FechaPrevistaCumplimiento { get; set; }

        public string Descripcion { get; set; }
    }
}
