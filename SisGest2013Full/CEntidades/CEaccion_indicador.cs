using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CEntidades
{

    public class CEaccion_indicador
    {
        // datos de la tabla tblmaestro_sensibilizacionpersonal
        private string actividad;

        public string Actividad
        {
            get { return actividad; }
            set { actividad = value; }
        }

        private string nombre;

        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        private DateTime fecha;

        public DateTime Fecha
        {
            get { return fecha; }
            set { fecha = value; }
        }

        private string descripcion;

        public string Descripcion
        {
            get { return descripcion; }
            set { descripcion = value; }
        }
    }
}
