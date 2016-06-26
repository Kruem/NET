using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CEntidades
{
    public class CEempresaGestion
    {
        private string _nombEmpresa;

        public string NombEmpresa
        {
            get { return _nombEmpresa; }
            set { _nombEmpresa = value; }
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
    }
}
