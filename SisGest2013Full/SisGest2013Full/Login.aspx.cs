using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using CReglas;
using System.Data;
using CEntidades;

namespace SisGest2013Full
{
    public partial class Login : System.Web.UI.Page
    {
        int contador, tipo;
        string seccion;
        Cusuario eusuario = new Cusuario();
        CRusuario objUsuario = new CRusuario();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtusuario.Focus();
            }
        }



        protected void btnlogin_Click1(object sender, EventArgs e)
        {
            try
            {
                string contrasena;
                int usuario, estado, intentos = 0;

                Session["ingresar"] = null;
                if (txtusuario.Text.Trim() == "" && txtclave.Text.Trim() == "")
                {
                    lblmensaje.Text = "Digite su nombre de usuario y su contraseña";
                    txtusuario.Focus();
                }
                else
                {
                    usuario = int.Parse(txtusuario.Text);
                    Session["usuario"] = int.Parse(txtusuario.Text);
                    contrasena = txtclave.Text;
                    eusuario.Usuario = usuario;
                    eusuario.Contrasena = contrasena;
                    ds = objUsuario.loginusuario(eusuario);
                    tipo = Convert.ToInt32(ds.Tables[0].Rows[0]["Tipo"].ToString());
                    seccion = ds.Tables[0].Rows[0]["Seccion"].ToString();
                    estado = Convert.ToInt16(ds.Tables[0].Rows[0]["Estado"].ToString());
                    intentos = Convert.ToInt32(ds.Tables[0].Rows[0]["Intentos"].ToString());

                    if (intentos == 0)
                    {
                        if (estado != 0)
                        {
                            Session["ingresar"] = (DataSet)ds;
                            Response.Redirect("inicio.aspx");
                        }
                        else
                        {
                            if (estado == 0)
                            {
                                lblmensaje.Text = "Su usuario se encuentra inactivo. Comuníquese con el administrador. ";
                            }
                        }
                    }


                }
            }
            catch (Exception ex)
            {
                lblmensaje.Text = ex.Message;
                string script = "MostrarMensaje('" + ex.Message + "', 4)";
                ClientScript.RegisterStartupScript(this.GetType(), "Mensajeerror", script, true);
            }
        }
    }
}


