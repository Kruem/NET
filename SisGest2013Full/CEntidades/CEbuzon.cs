using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CEntidades
{

    public class CEbuzon
    {
        #region Variables Estáticas
        /// <summary>
        /// SU: Sugerencia
        /// </summary>
        public static string tipoSugerencia = "SU";

        /// <summary>
        /// QUE: Queja
        /// </summary>
        public static string tipoQueja = "QUE";

        /// <summary>
        /// RE: Reclamo
        /// </summary>
        public static string tipoReclamo = "DG";

        /// <summary>
        /// REC: Reconocimiento
        /// </summary>
        public static string tipoReconocimiento = "REC";
        #endregion



        //datos de la tabla tblbuzon

        private string tipo;

        public string Tipo
        {
            get { return tipo; }
            set { tipo = value; }
        }


        private string fecha;

        public string Fecha
        {
            get { return fecha; }
            set { fecha = value; }
        }


        private string nombre;

        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }


        private string correo;

        public string Correo
        {
            get { return correo; }
            set { correo = value; }
        }

        private string telefono;

        public string Telefono
        {
            get { return telefono; }
            set { telefono = value; }
        }


        private string empresa;

        public string Empresa
        {
            get { return empresa; }
            set { empresa = value; }
        }


        private string descripcion;

        public string Descripcion
        {
            get { return descripcion; }
            set { descripcion = value; }
        }


    }
}
