using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace CEntidades
{
   
    public class tblAppsCicloEmpresa
    {
       
        public int consecCiclo { get; set; }
        public int idEmpresaApps { get; set; }
        public string faseActual { get; set; }
        public string fechaInicioFase { get; set; }
        public string fechaFinFase { get; set; }
        public string nroHorasIntervencion { get; set; }
        public string porcCumplimiento { get; set; }
        public string evaluacionTrimestre { get; set; }



    }


}
