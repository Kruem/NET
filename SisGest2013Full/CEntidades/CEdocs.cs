using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CEntidades
{
    public class CEdocs
    {
        private string _idCarpeta;

        public string idCarpeta
        {
            get { return _idCarpeta; }
            set { _idCarpeta = value; }
        }

        private string _nombreCarp;

        public string nombreCarp
        {
            get { return _nombreCarp; }
            set { _nombreCarp = value; }
        }

        private string _nomDoc;

        public string nomDoc
        {
            get { return _nomDoc; }
            set { _nomDoc = value; }
        }

        private string _rutaDoc;

        public string rutaDoc
        {
            get { return _rutaDoc; }
            set { _rutaDoc = value; }
        }
    }
}
