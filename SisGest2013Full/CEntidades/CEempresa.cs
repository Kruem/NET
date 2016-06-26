using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CEntidades
{
    public class CEempresa
    {
        private string _nombreEmpresa;

        public string NombreEmpresa
        {
            get { return _nombreEmpresa; }
            set { _nombreEmpresa = value; }
        }
        private string _constituida;

        public string Constituida
        {
            get { return _constituida; }
            set { _constituida = value; }
        }
        private string _sectorEconomico;

        public string SectorEconomico
        {
            get { return _sectorEconomico; }
            set { _sectorEconomico = value; }
        }

        private string _comuna;

        public string Comuna
        {
            get { return _comuna; }
            set { _comuna = value; }
        }
        private int _nroSocios;

        public int NroSocios
        {
            get { return _nroSocios; }
            set { _nroSocios = value; }
        }
        private string _univProcedencia;

        public string UnivProcedencia
        {
            get { return _univProcedencia; }
            set { _univProcedencia = value; }
        }
        private string _telEmpresa;

        public string TelEmpresa
        {
            get { return _telEmpresa; }
            set { _telEmpresa = value; }
        }
        private int _estado;

        public int Estado
        {
            get { return _estado; }
            set { _estado = value; }
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

        private float _ventasTotales;

        public float VentasTotales
        {
            get { return _ventasTotales; }
            set { _ventasTotales = value; }
        }
        private float _inversionPrivada;

        public float InversionPrivada
        {
            get { return _inversionPrivada; }
            set { _inversionPrivada = value; }
        }
        private float _recursosPropios;

        public float RecursosPropios
        {
            get { return _recursosPropios; }
            set { _recursosPropios = value; }
        }
        private float _recursosFomento;

        public float RecursosFomento
        {
            get { return _recursosFomento; }
            set { _recursosFomento = value; }
        }
        private float _creditosBanco;

        public float CreditosBanco
        {
            get { return _creditosBanco; }
            set { _creditosBanco = value; }
        }
        private float _otrasFuentes;

        public float OtrasFuentes
        {
            get { return _otrasFuentes; }
            set { _otrasFuentes = value; }
        }
        private string _patentes;

        public string Patentes
        {
            get { return _patentes; }
            set { _patentes = value; }
        }
        private string _registroMarca;

        public string RegistroMarca
        {
            get { return _registroMarca; }
            set { _registroMarca = value; }
        }
        private string _derechosAutor;

        public string DerechosAutor
        {
            get { return _derechosAutor; }
            set { _derechosAutor = value; }
        }
        private string _secretosIndustriales;

        public string SecretosIndustriales
        {
            get { return _secretosIndustriales; }
            set { _secretosIndustriales = value; }
        }
        private float _valNegocioCerrado;

        public float ValNegocioCerrado
        {
            get { return _valNegocioCerrado; }
            set { _valNegocioCerrado = value; }
        }
        private float _totalMesaRecursos;

        public float TotalMesaRecursos
        {
            get { return _totalMesaRecursos; }
            set { _totalMesaRecursos = value; }
        }
        private float _totalCostos;

        public float TotalCostos
        {
            get { return _totalCostos; }
            set { _totalCostos = value; }
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
