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
    public partial class ModifUsr_USR : System.Web.UI.Page
    {
        CRusuario orusuario = new CRusuario();
        Cusuario oeusuario = new Cusuario();
        DataSet ds = new DataSet();
        DataSet dsSesion = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TraerUsr();
            }

        }


        protected void limpiarCampos()
        {
            txtnombre.Text = "";
            txtapelldo.Text = "";
            txtusuario.Text = "";
            txtcorreo.Text = "";
            txtclave.Text = "";

        }

        protected void TraerUsr()
        {
            dsSesion = (DataSet)Session["ingresar"];
            try
            {

                if (dsSesion.Tables[0].Rows.Count != 0)
                {
                    txtusuario.Text = dsSesion.Tables[0].Rows[0]["Usuario"].ToString();
                    txtnombre.Text = dsSesion.Tables[0].Rows[0]["Nombre"].ToString();
                    txtapelldo.Text = dsSesion.Tables[0].Rows[0]["Apellido"].ToString();
                    txtclave.Text = dsSesion.Tables[0].Rows[0]["Contrasena"].ToString();
                    txtclave.Text = dsSesion.Tables[0].Rows[0]["Contrasena"].ToString();
                    txtcorreo.Text = dsSesion.Tables[0].Rows[0]["Correo"].ToString();

                    txtusuario.Enabled = false;

                }
            }
            catch (Exception ex)
            {

                throw;
            }


        }

        protected void btnguardar_Click(object sender, EventArgs e)
        {
            dsSesion = (DataSet)Session["ingresar"];
            oeusuario.Usuario = Convert.ToInt32(dsSesion.Tables[0].Rows[0]["Usuario"].ToString());
            oeusuario.Nombre = txtnombre.Text;
            oeusuario.Apellido = txtapelldo.Text;
            oeusuario.Correo = txtcorreo.Text;
            oeusuario.Contrasena = txtclave.Text;
            oeusuario.Estado = Convert.ToInt32(dsSesion.Tables[0].Rows[0]["Estado"].ToString());
            oeusuario.Tipo = Convert.ToInt32(dsSesion.Tables[0].Rows[0]["Tipo"].ToString());
            if (oeusuario.Tipo == 2)
            {
                oeusuario.Seccion = dsSesion.Tables[0].Rows[0]["Seccion"].ToString();
            }
            else
            {
                oeusuario.Seccion = "";
            }


            if (orusuario.modificar_usuario(oeusuario))
            {
                lblmensaje.Text = "Registro Modificado";
                limpiarCampos();

            }
            else
            {

                lblmensaje.Text = "No se pudo Modificar";
            }

        }
    }
}