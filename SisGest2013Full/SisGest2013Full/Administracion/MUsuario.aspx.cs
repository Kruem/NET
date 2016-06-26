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


namespace SisGest2013Full.Administracion
{
    public partial class MUsuario : System.Web.UI.Page
    {
        CRusuario orusuario = new CRusuario();
        Cusuario oeusuario = new Cusuario();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddltipo.Items.Add("Seleccione Tipo");
                ddltipo.Items.Add("Administrador");
                ddltipo.Items.Add("Moderador");
                ddltipo.Items.Add("Usuario");

            }


            txtnombre.Enabled = false;
            txtcorreo.Enabled = false;
            txtapelldo.Enabled = false;
            txtclave.Enabled = false;
            ddlseccion.Enabled = false;
            ddltipo.Enabled = false;
            chkestado.Enabled = false;


        }


        protected void limpiarCampos()
        {
            txtnombre.Text = "";
            txtapelldo.Text = "";
            txtusuario.Text = "";
            txtcorreo.Text = "";
            txtclave.Text = "";

            ddlseccion.SelectedValue = "0";
            ddltipo.SelectedIndex = Convert.ToInt32("0");


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                oeusuario.Usuario = Convert.ToInt32(txtusuario.Text);

                ds = orusuario.consulta_individual_usuario(oeusuario);

                if (ds.Tables[0].Rows.Count != 0)
                {

                    txtnombre.Text = ds.Tables[0].Rows[0]["Nombre"].ToString();
                    txtapelldo.Text = ds.Tables[0].Rows[0]["Apellido"].ToString();
                    txtclave.Text = ds.Tables[0].Rows[0]["Contrasena"].ToString();
                    txtclave.Text = ds.Tables[0].Rows[0]["Contrasena"].ToString();
                    txtcorreo.Text = ds.Tables[0].Rows[0]["Correo"].ToString();

                    if (((ds.Tables[0].Rows[0]["Seccion"].ToString()) == "") || ((ds.Tables[0].Rows[0]["Seccion"].ToString()) == null))
                    {
                        ddlseccion.SelectedIndex = 0;
                    }
                    else
                    {

                        ddlseccion.SelectedValue = ds.Tables[0].Rows[0]["Seccion"].ToString();
                    }


                    ddltipo.SelectedIndex = Convert.ToInt32(ds.Tables[0].Rows[0]["Tipo"].ToString());

                    int estado;
                    estado = Convert.ToInt32(ds.Tables[0].Rows[0]["Estado"].ToString());

                    if (estado == 1)
                    {
                        chkestado.Checked = true;
                    }
                    else
                    {
                        chkestado.Checked = false;
                    }

                    txtnombre.Enabled = true;
                    txtcorreo.Enabled = true;
                    txtclave.Enabled = true;
                    txtapelldo.Enabled = true;
                    ddltipo.Enabled = true;
                    ddlseccion.Enabled = true;
                    chkestado.Enabled = true;
                    divVisible.Visible = true;

                }
                else
                {
                    lblmensaje.Text = "Usuario No existe";

                }

            }
            catch (Exception ex)
            {

                lblmensaje.Text = ex.Message;
            }
            
        }

        protected void btnguardar_Click(object sender, EventArgs e)
        {
            try
            {
                oeusuario.Usuario = Convert.ToInt32(txtusuario.Text);
                oeusuario.Nombre = txtnombre.Text;
                oeusuario.Apellido = txtapelldo.Text;
                oeusuario.Correo = txtcorreo.Text;
                oeusuario.Contrasena = txtclave.Text;
                oeusuario.Tipo = Convert.ToInt32(ddltipo.SelectedIndex);
                oeusuario.Seccion = Convert.ToString(ddlseccion.SelectedValue);
                oeusuario.Estado = Convert.ToInt32(chkestado.Checked);

                if (orusuario.modificar_usuario(oeusuario))
                {
                    lblmensaje.Text = "Registro Modificado";


                }
                else
                {

                    lblmensaje.Text = "No se pudo Modificar";
                }
            }
            catch (Exception exe)
            {
                lblmensaje.Text = exe.Message;
            }

        }
    }
}
