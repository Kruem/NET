using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CEntidades
{
    public class CEempresaAsesor
    {
        private string _nombEmpresa;

        public string NombEmpresa
        {
            get { return _nombEmpresa; }
            set { _nombEmpresa = value; }
        }

        private string _asesor;

        public string Asesor
        {
            get { return _asesor; }
            set { _asesor = value; }
        }
        private double _horaIntervencion;

        public double HoraIntervencion
        {
            get { return _horaIntervencion; }
            set { _horaIntervencion = value; }
        }
        private double _totalBolsaHoras;

        public double TotalBolsaHoras
        {
            get { return _totalBolsaHoras; }
            set { _totalBolsaHoras = value; }
        }

    }
}
