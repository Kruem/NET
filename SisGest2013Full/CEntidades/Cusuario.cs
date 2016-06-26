using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CEntidades
{


    public class Cusuario
    {

        //Campos de la Tabla usuario, para cada tabla es importante crear una nueva clase

        private int usuario;

        public int Usuario
        {
            get { return usuario; }
            set { usuario = value; }
        }

        private string nombre;

        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        private string apellido;

        public string Apellido
        {
            get { return apellido; }
            set { apellido = value; }
        }

        private string _correo;

        public string Correo
        {
            get { return _correo; }
            set { _correo = value; }
        }


        private string contrasena;

        public string Contrasena
        {
            get { return contrasena; }
            set { contrasena = value; }
        }


        private int intentos;

        public int Intentos
        {
            get { return intentos; }
            set { intentos = value; }
        }


        private int estado;

        public int Estado
        {
            get { return estado; }
            set { estado = value; }
        }

        private int tipo;

        public int Tipo
        {
            get { return tipo; }
            set { tipo = value; }
        }
        private string _seccion;

        public string Seccion
        {
            get { return _seccion; }
            set { _seccion = value; }
        }

    }

}