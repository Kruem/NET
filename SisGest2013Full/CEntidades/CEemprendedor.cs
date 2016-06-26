using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CEntidades
{
    public class CEemprendedor
    {
        private string _idEmprendedor;

        public string IdEmprendedor
        {
            get { return _idEmprendedor; }
            set { _idEmprendedor = value; }
        }
        private string _nombreEmprendedor;

        public string NombreEmprendedor
        {
            get { return _nombreEmprendedor; }
            set { _nombreEmprendedor = value; }
        }
        private string _genero;

        public string Genero
        {
            get { return _genero; }
            set { _genero = value; }
        }
        private DateTime _fechaNacim;

        public DateTime FechaNacim
        {
            get { return _fechaNacim; }
            set { _fechaNacim = value; }
        }
        private string _escolaridad;

        public string Escolaridad
        {
            get { return _escolaridad; }
            set { _escolaridad = value; }
        }
        private string _universidad;

        public string Universidad
        {
            get { return _universidad; }
            set { _universidad = value; }
        }
        private string _carrera;

        public string Carrera
        {
            get { return _carrera; }
            set { _carrera = value; }
        }

        private string _ingles;

        public string Ingles
        {
            get { return _ingles; }
            set { _ingles = value; }
        }

        private string _estadoCivil;

        public string EstadoCivil
        {
            get { return _estadoCivil; }
            set { _estadoCivil = value; }
        }
        private int _hijos;

        public int Hijos
        {
            get { return _hijos; }
            set { _hijos = value; }
        }

        private string _grupoPoblacional;

        public string GrupoPoblacional
        {
            get { return _grupoPoblacional; }
            set { _grupoPoblacional = value; }
        }

        private string _discapacidad;

        public string Discapacidad
        {
            get { return _discapacidad; }
            set { _discapacidad = value; }
        }
        private string _victima;

        public string Victima
        {
            get { return _victima; }
            set { _victima = value; }
        }
        private string _lgbti;

        public string Lgbti
        {
            get { return _lgbti; }
            set { _lgbti = value; }
        }
        private string _telResidencia;

        public string TelResidencia
        {
            get { return _telResidencia; }
            set { _telResidencia = value; }
        }
        private string _celular;

        public string Celular
        {
            get { return _celular; }
            set { _celular = value; }
        }

        private string _correoE;

        public string CorreoE
        {
            get { return _correoE; }
            set { _correoE = value; }
        }
        private string _direccion;

        public string Direccion
        {
            get { return _direccion; }
            set { _direccion = value; }
        }
        private string _comuna;

        public string Comuna
        {
            get { return _comuna; }
            set { _comuna = value; }
        }
        private int _estrato;

        public int Estrato
        {
            get { return _estrato; }
            set { _estrato = value; }
        }
        private int _estado;

        public int Estado
        {
            get { return _estado; }
            set { _estado = value; }
        }
    }
}
