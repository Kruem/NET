using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CEntidades;
using CReglas;
using System.Data;



namespace testBancolombia
{
    public partial class RegistroUsr : System.Web.UI.Page
    {
        DataSet ds = new DataSet();
        tblUsr eusuario = new tblUsr();
        CRusuario rusuario = new CRusuario();
        
        


        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                ddlrolusr.Items.Add("Seleccione un Rol");
                ddlrolusr.Items.Add("Administrador");
                ddlrolusr.Items.Add("Moderador");
            }

        }

        protected void LimpiarCampos()
        {
            txtidentificacion.Text = "";
            txtnombre.Text = "";
            txtapellido.Text = "";
            txtcargo.Text = "";
            txtcelular.Text = "";
            txtcontraseña.Text = "";
            txtcorreo.Text = "";
            txtinstitucion.Text = "";
            txtusuario.Text = "";
            txtrolproyecto.Text = "";
            ddlrolusr.SelectedIndex = Convert.ToInt32( "0");

        }

        protected void btnguardar_Click(object sender, EventArgs e)
        {
            try
            {
                eusuario.idUsuario = txtidentificacion.Text;
                eusuario.nombres = txtusuario.Text;
                eusuario.apellidos = txtapellido.Text;
                eusuario.rolUsr = Convert.ToString( ddlrolusr.SelectedIndex);
                eusuario.cargo = txtcargo.Text;
                eusuario.institucion = txtinstitucion.Text;
                eusuario.correo = txtcorreo.Text;
                eusuario.tel_cel = txtcelular.Text;
                eusuario.rolProyecto = txtrolproyecto.Text;
                eusuario.estado = Convert.ToInt32( chkestado.Checked);
                eusuario.nombreUsr = txtusuario.Text;
                eusuario.claveUsr = txtcontraseña.Text;
                if (rusuario.CrearUsr(eusuario))
                {
                    lblmensaje.Text = "Registro Guardado";
                    LimpiarCampos();

                }
                else
                {
                    lblmensaje.Text = "Registro No Guardado";
                }
            }
            catch (Exception error)
            {
                lblmensaje.Text = error.Message;
            }
        }
    }
}