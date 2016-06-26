using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CEntidades
{
    public class CEempresafase
    {
        private string _nombEmpresa;

        public string NombEmpresa
        {
            get { return _nombEmpresa; }
            set { _nombEmpresa = value; }
        }
        private int _faseAcompa;

        public int FaseAcompa
        {
            get { return _faseAcompa; }
            set { _faseAcompa = value; }
        }
        private Nullable<DateTime> _fechaInicioAcomp;

        public Nullable<DateTime> FechaInicioAcomp
        {
            get { return _fechaInicioAcomp; }
            set { _fechaInicioAcomp = value; }
        }
        private Nullable<DateTime> _fechaInicialFaseAct;

        public Nullable<DateTime> FechaInicialFaseAct
        {
            get { return _fechaInicialFaseAct; }
            set { _fechaInicialFaseAct = value; }
        }
    }
}
