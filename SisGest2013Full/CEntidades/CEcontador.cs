using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CEntidades
{
    public class CEcontador
    {
        private int _consec;

        public int Consec
        {
            get { return _consec; }
            set { _consec = value; }
        }
        private int _idUsr;

        public int IdUsr
        {
            get { return _idUsr; }
            set { _idUsr = value; }
        }
        private string _nombUsr;

        public string NombUsr
        {
            get { return _nombUsr; }
            set { _nombUsr = value; }
        }
        private string _apellUsr;

        public string ApellUsr
        {
            get { return _apellUsr; }
            set { _apellUsr = value; }
        }
        private DateTime _fecha;

        public DateTime Fecha
        {
            get { return _fecha; }
            set { _fecha = value; }
        }
    }
}
