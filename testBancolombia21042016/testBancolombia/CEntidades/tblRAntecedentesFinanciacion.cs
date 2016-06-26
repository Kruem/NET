using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace CEntidades
{
    
    public class tblRAntecedentesFinanciacion
    {
      
        public int consecAF { get; set; }
        public int idEmpresaAF { get; set; }
        public string fechaAF { get; set; }
        public string valorPorcAF { get; set; }
        public string valorPor1AF { get; set; }
        public string valorPor2AF { get; set; }
        public string valorPor3AF { get; set; }
        public string valorPorAF { get; set; }
        public string valorPor5AF { get; set; }
        public string valorPor6AF { get; set; }
        public string valorPor7AF { get; set; }
        public string entidadCreditos { get; set; }
        public string nomtoCreditoEntidad { get; set; }
        public string plazoCredEntidad { get; set; }
        public string inversionista { get; set; }
        public string montoInversionista { get; set; }
        public string institucionPublica { get; set; }
        public string montoIPublica { get; set; }
        public string institucionPrivada { get; set; }
        public string montoIprivada { get; set; }
        public string montoConcursosPriv { get; set; }
        public string montoRecursosPropios { get; set; }
        public string montoRecursosFamilia { get; set; }
    }
}
