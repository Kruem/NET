using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using CEntidades;
using CReglas;
using System.Data.SqlClient;


namespace SisGest2013Full.Usuario
{
    public partial class RUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddltipo.Items.Add("Seleccione Tipo");
                ddltipo.Items.Add("Administrador");
                ddltipo.Items.Add("Moderador");
                ddltipo.Items.Add("Otros");
            }

        }

        private void limpiarCampos()
        {
            txtapelldo.Text = "";
            txtclave.Text = "";
            txtclave2.Text = "";
            txtcorreo.Text = "";
            txtnombre.Text = "";
            txtusuario.Text = "";
            ddlseccion.SelectedIndex = 0;
            ddltipo.SelectedIndex = 0;
        }

        protected void btnguardar_Click1(object sender, EventArgs e)
        {

            try
            {
                //Instanciando las clases
                //Recibe los datos
                Cusuario objEusuario = new Cusuario();
                CRusuario objRusuarioo = new CRusuario();
                objEusuario.Usuario = Convert.ToInt32(txtusuario.Text);
                objEusuario.Nombre = txtnombre.Text;
                objEusuario.Correo = txtcorreo.Text;
                objEusuario.Apellido = txtapelldo.Text;
                objEusuario.Contrasena = txtclave.Text;
                objEusuario.Tipo = ddltipo.SelectedIndex;
                objEusuario.Estado = 1;

                if (ddlseccion.SelectedValue == "Seleccione")
                {

                    objEusuario.Seccion = "";
                }
                else
                {
                    objEusuario.Seccion = ddlseccion.SelectedValue;
                }

                if (objRusuarioo.guardarusuario(objEusuario))
                {
                    lblmensaje.Text = "Registro Guardado";
                    limpiarCampos();
                }
                



            }
            catch (Exception ex)
            {

                string script = "MostrarMensaje('" + ex.Message + "', 4)";
                ClientScript.RegisterStartupScript(this.GetType(), "Mensajeerror", script, true);
            }

        }

        protected void btnlimpiar_Click(object sender, EventArgs e)
        {
            limpiarCampos();
        }


    }
}