using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CEntidades
{
    public class CEmedicion_indicador
    {


        private DateTime periodo;

        public DateTime Periodo
        {
            get { return periodo; }
            set { periodo = value; }
        }

        private int dato1;

        public int Dato1
        {
            get { return dato1; }
            set { dato1 = value; }
        }

        private int dato2;

        public int Dato2
        {
            get { return dato2; }
            set { dato2 = value; }
        }


        private double resultado;

        public double Resultado
        {
            get { return resultado; }
            set { resultado = value; }
        }

        private string analisis;

        public string Analisis
        {
            get { return analisis; }
            set { analisis = value; }
        }

    }
}
