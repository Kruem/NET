using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CEntidades
{
    public class CEempleadoEmpresa
    {
        private string _nombEmpresa;

        public string NombEmpresa
        {
            get { return _nombEmpresa; }
            set { _nombEmpresa = value; }
        }
        private int _nroEmpleos;

        public int NroEmpleos
        {
            get { return _nroEmpleos; }
            set { _nroEmpleos = value; }
        }
        private float _costoNomina;

        public float CostoNomina
        {
            get { return _costoNomina; }
            set { _costoNomina = value; }
        }
        private int _nroPuestosContratados;

        public int NroPuestosContratados
        {
            get { return _nroPuestosContratados; }
            set { _nroPuestosContratados = value; }
        }
        private float _ingrMesPuestosContratados;

        public float IngrMesPuestosContratados
        {
            get { return _ingrMesPuestosContratados; }
            set { _ingrMesPuestosContratados = value; }
        }
        private int _nroComites;

        public int NroComites
        {
            get { return _nroComites; }
            set { _nroComites = value; }
        }
    }
}