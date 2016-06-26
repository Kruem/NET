using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CEntidades
{
    public class CEempresaEmprendedor
    {
        private string _idEmprendedor;

        public string IdEmprendedor
        {
            get { return _idEmprendedor; }
            set { _idEmprendedor = value; }
        }

        private string _nomEmpresa;

        public string NomEmpresa
        {
            get { return _nomEmpresa; }
            set { _nomEmpresa = value; }
        }
    }
}
