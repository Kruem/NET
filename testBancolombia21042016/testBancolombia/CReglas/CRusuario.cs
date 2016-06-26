using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CEntidades;
using CDdatos;
using System.Data;

namespace CReglas
{
     public class CRusuario
    {
         public bool CrearUsr(tblUsr usuario)
         {
             try
             {
                 CDusuario oDss = new CDusuario();
                 return oDss.CrearUsuario(usuario);
             }
             catch (Exception error)
             {

                 throw new Exception(error.Message);
             }
           
         }

         public bool ModificarUsr(tblUsr usuario)
         {
             try
             {
                 CDusuario oDss = new CDusuario();
                 return oDss.ModificarUsuario(usuario);
             }
             catch (Exception error)
             {

                 throw new Exception(error.Message);
             }
         }
         public DataSet ConsultarUsr(tblUsr usuario)
         {
             try
             {
                 CDusuario oDss = new CDusuario();
                 return oDss.ConsultarUsuario(usuario);
             }
             catch (Exception error)
             {

                 throw new Exception(error.Message);
             }
         }

         public DataSet Login(tblUsr usuario)
         {
             try
             {
                 CDusuario oDss = new CDusuario();
                 return oDss.LoginUsuario(usuario);
             }
             catch (Exception error)
             {

                 throw new Exception(error.Message);
             }
         }
         
    }
}
