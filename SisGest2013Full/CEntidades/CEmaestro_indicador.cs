using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CEntidades
{
    public class CEmaestro_indicador
    {
        #region Variables Estáticas
        /// <summary>
        /// SU: Satisfaccion de usuario.
        /// </summary>
        public static string tipoindicadorSatisfaccionUsuario = "SU";

        /// <summary>
        /// SP: Sensibilizacion personal.
        /// </summary>
        public static string tipoindicadorSensibilizacionPersonal = "SP";

        /// <summary>
        /// DG: Desarrollo Gestion del conocimiento.
        /// </summary>
        public static string tipoindicadorSDesarrolloGestionConocimiento = "DG";

        /// <summary>
        /// MJ: Mejora Continua proceso de servicio.
        /// </summary>
        public static string tipoindicadorMejoraContinuaProcesoServicio = "MJ";

        /// <summary>
        /// CM: Cumplimiento de metas.
        /// </summary>

        public static string tipoindicadorCumplimientodeMetas = "CM";

        /// <summary>
        /// EjP: Ejecuccion Presupuesto.
        /// </summary>

        public static string tipoindicadorEjecuccionPresupuesto = "Ej";
        /// <summary>
        /// TC: TasaCrecimiento.
        /// </summary>

        public static string tipoindicadorTasaCrecimiento = "TC";

        /// <summary>
        /// CP: Cumplimento plan comunicaciones
        /// </summary>

        public static string tipoindicadorCumplimientoPlanComunicaciones = "CP";


        /// <summary>
        /// SUC: Satisfaccion Usuarios Comunicaciones
        /// </summary>
        /// 

        public static string tipoindicadorSatisfaccionUsuariosComunicaciones = "SC";

        /// <summary>
        /// SA: Servicios Atendidos
        /// </summary>

        public static string tipoindicadorServiciosAtendidos = "SA";

        /// <summary>
        /// AM: Actividades Mejora
        /// </summary>
        /// 

        public static string tipoindicadorActividadesMejora = "AM";

        /// <summary>
        /// CA: Cobertura Plan Auditoria
        /// </summary>
        /// 

        public static string tipoindicadorCoberturaPlanAuditorias = "CA";

        /// <summary>
        /// MD: Desempeño global
        /// </summary>
        /// 

        public static string tipoindicadorDesempenoGlobal = "MD";

        /// <summary>
        /// MS: Simplificación procesos
        /// </summary>
        /// 

        public static string tipoindicadorSimplificacionProcesos = "MS";


        /// <summary>
        /// EF: Emprendedores formados
        /// </summary>
        /// 

        public static string tipoindicadorEmprendedoresFormados = "EF";

        /// <summary>
        /// IP: Iniciativa puesta en marcha
        /// </summary>
        /// 

        public static string tipoindicadorIniciativaPuestaenMarcha = "IP";

        /// <summary>
        /// RC: Recursos Contrapartidas
        /// </summary>
        /// 

        public static string tipoindicadorRecursosContrapartidas = "RC";

        /// <summary>
        /// SI: Satisfacción IES
        /// </summary>
        /// 

        public static string tipoindicadorSatisfaccionIES = "SI";

        /// <summary>
        /// PT: Presupuesto
        /// </summary>
        /// 
        public static string tipoindicadorPresupuesto = "PT";

        /// <summary>
        /// PA: Proyectos Acompanados Incubacion
        /// </summary>
        /// 
        public static string tipoindicadorProyectosAcompanadosIncubacion = "PA";

        /// <summary>
        /// PP: Proyectos Acompañados PreIncubacion
        /// </summary>
        /// 
        public static string tipoindicadorProyectosAcompanadosPreIncubacion = "PP";

        /// <summary>
        /// PS: Satisfacción 
        /// </summary>
        /// 
        public static string tipoindicadorSatisfaccion = "PS";


        /// <summary>
        /// EP: Prestación servicio soporte técnico 
        /// </summary>
        /// 
        public static string tipoindicadorPrestacionServicioSoporteTecnico = "EP";



        /// <summary>
        /// ES: Satisfaccion Usuario 
        /// </summary>
        /// 
        public static string tipoindicadorESatisfaccionUsuario = "ES";



        /// <summary>
        /// ET: Tiempo Funcionamiento Infraestructura Tecnologica 
        /// </summary>
        /// 
        public static string tipoindicadorTiempoFuncionamientoInfraestructuraTecnologica = "ET";


        /// <summary>
        /// CO: Cumplimiento plan operativo inversión
        /// </summary>
        /// 
        public static string tipoindicadorCumplimientoPlanOperativoInversion = "CO";


        /// <summary>
        /// EA: Ejecución presupuesto asignado
        /// </summary>
        /// 
        public static string tipoindicadorEjecucionPresupuestoAsignado = "EA";



        /// <summary>
        ///SF: Satisfacción usuario financiero
        /// </summary>
        /// 
        public static string tipoindicadorSatisfaccionUsuarioFinanciero = "SF";



        /// <summary>
        ///EC: Entregas Completas
        /// </summary>
        /// 
        public static string tipoindicadorEntregasCompletas = "EC";


        /// <summary>
        ///LA: Logro Acciones Planeadas
        /// </summary>
        /// 
        public static string tipoindicadorLogroAccionesPlaneadas = "LA";

        /// <summary>
        ///IS: Satisfacción usuarios Infraestructura y servicios generales
        /// </summary>
        /// 
        public static string tipoindicadorSatisfaccionUsuariosInf = "IS";


        /// <summary>
        ///GE: Eficacia cumplimiento plan contratación
        /// </summary>
        /// 
        public static string tipoindicadorEficaciaCumplimientoPlanContratacion = "GE";


        /// <summary>
        ///RA: Requerimientos atendidos oportunamente
        /// </summary>
        /// 
        public static string tipoindicadorRequerimientosAtendidosOportunamente = "RA";


        /// <summary>
        ///GS: Satisfacción cliente
        /// </summary>
        /// 
        public static string tipoindicadorSatisfaccionCliente = "GS";

        /// <summary>
        ///AC: Actividades capacitación
        /// </summary>
        /// 
        public static string tipoindicadorActividadesCapacitacion = "AC";



        /// <summary>
        ///CD: Calificación desempeño
        /// </summary>
        /// 
        public static string tipoindicadorCalificacionDesempeno = "CD";



        /// <summary>
        ///TS: Satisfacción del usuario
        /// </summary>
        /// 
        public static string tipoindicadorSatisfaccionUsuarioT = "TS";


        #endregion



        // datos de la tabla tblmaestro_sensibilizacionpersonal
        private string nombreindicador;

        public string Nombreindicador
        {
            get { return nombreindicador; }
            set { nombreindicador = value; }
        }

        private string objetivoindicador;

        public string Objetivoindicador
        {
            get { return objetivoindicador; }
            set { objetivoindicador = value; }
        }


        private string numerador;

        public string Numerador
        {
            get { return numerador; }
            set { numerador = value; }
        }


        private string denominador;

        public string Denominador
        {
            get { return denominador; }
            set { denominador = value; }
        }


        private string recolecciondatos;

        public string Recolecciondatos
        {
            get { return recolecciondatos; }
            set { recolecciondatos = value; }
        }

        private string registrodedatos;

        public string Registrodedatos
        {
            get { return registrodedatos; }
            set { registrodedatos = value; }
        }

        private string regyAnaresultados;

        public string RegyAnaresultados
        {
            get { return regyAnaresultados; }
            set { regyAnaresultados = value; }
        }

        private string tipoindicador;

        public string TipoIndicador
        {
            get { return tipoindicador; }
            set { tipoindicador = value; }
        }
    }
}
