using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CEntidades;
using CReglas;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Net.Mime;
using System.Windows.Forms;

namespace SisGest2013Full.SGC
{
    public partial class Buzon : System.Web.UI.Page
    {
        CEbuzon objEbuzon = new CEbuzon();
        CRbuzon objRbuzon = new CRbuzon();
        DataSet dsSesion = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if ((DataSet)Session["ingresar"] != null)
                {
                    btnregresar.HRef = "href='../Index.aspx'";
                }
                else
                {
                    btnregresar.HRef = "href='../inicio.aspx'";
                }
                fecha();
                if ((DataSet)Session["ingresar"] != null)
                {
                    dsSesion = (DataSet)Session["ingresar"];
                    int usr;
                    string correo, contra, nomb, apell, completo;
                    usr = int.Parse(dsSesion.Tables[0].Rows[0]["Usuario"].ToString());
                    contra = dsSesion.Tables[0].Rows[0]["Contrasena"].ToString();
                    correo = dsSesion.Tables[0].Rows[0]["Correo"].ToString();
                    nomb = dsSesion.Tables[0].Rows[0]["Nombre"].ToString();
                    apell = dsSesion.Tables[0].Rows[0]["Apellido"].ToString();
                    completo = nomb + " " + apell;

                    txtcorreo.Text = correo;
                    txtempresa.Text = "Parque E";
                    txtnombre.Text = completo;
                    txtcorreo.Enabled = false;
                    txtempresa.Enabled = false;
                    txtnombre.Enabled = false;
                }
                
            }

        }

        private void fecha()
        {
            string fecha;
            fecha = Convert.ToString(DateTime.Now.ToShortDateString());
            txtfecha.Text = fecha;

            txtfecha.Enabled = false;
        }

        
        protected void btnguardar_Click(object sender, EventArgs e)
        {
            string asunto = "";
            try
            {

                // Guardar formulario de sugerencias, quejas, reconocimientos o reclamos
                if (rdbsug.Checked)
                {
                    asunto = rdbsug.Text;
                    objEbuzon.Tipo = asunto;
                }
                else
                {
                    if (rdbqueja.Checked)
                    {
                        asunto = rdbqueja.Text;
                        objEbuzon.Tipo = asunto;
                    }

                    else
                    {
                        if (rdbreclamo.Checked)
                        {
                            asunto = rdbreclamo.Text;
                            objEbuzon.Tipo = asunto;
                        }

                        else
                        {
                            if (rdbrec.Checked)
                            {
                                asunto = rdbrec.Text;
                                objEbuzon.Tipo = asunto;
                            }
                        }
                    }
                }
                objEbuzon.Fecha = txtfecha.Text.Trim();
                objEbuzon.Nombre = txtnombre.Text;
                objEbuzon.Correo = txtcorreo.Text;
                objEbuzon.Telefono = txttelefono.Text;
                objEbuzon.Empresa = txtempresa.Text;
                objEbuzon.Descripcion = txtdesc.Text;

                objRbuzon.guardarbuzonsugerencias(objEbuzon);

                string tabla = "<!DOCTYPE html>"+
"<html>"+
  "<head>"+
    "<meta charset='utf-8'>"+
    "<title>Buzón</title>"+
    "<link rel='stylesheet' href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css' />"+
    "<script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'></script>"+
    "<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>"+
    "<link href='http://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic' rel='stylesheet' type='text/css'>"+
  "</head>"+
  "<body>"+
"<div class='content'>"+
  "<div class='box'>"+
    "<img alt='head' style='width: 100%; height: 100%;'src='http://i1026.photobucket.com/albums/y327/buzonsig/buzon_zpswdnsmpqn.jpg' />"+
      "<h4><strong>Fecha de solicitud: </strong></h4>"+
      "<p>"+ txtfecha.Text +"</p>"+
      "<hr/>"+
      "<h4><strong>Por: </strong> </h4>"+
      "<p>"+ txtnombre.Text + ", " + txtempresa.Text + "</p>"+
      "<hr/>"+
      "<h4><strong>Contacto: </strong> </h4>"+
      "<p>"+ txtcorreo.Text + ", " + txttelefono.Text + "</p>"+
      "<hr/>"+
      "<h4><strong>Descripción: </strong> </h4>"+
      "<p>"+ txtdesc.Text +"</p>"+
  "</div>"+
  "<img alt='foot' style='width: 100%; height: 100%;' src='http://i1026.photobucket.com/albums/y327/buzonsig/footer_zps6xiabso0.png' />" +
"</div>"+
  "</body>"+
"</html>";

                MailMessage msg = new MailMessage();
                msg.From = new MailAddress(txtcorreo.Text);

                msg.To.Add("buzonsig@parquedelemprendimiento.com");
                msg.Subject = asunto;
                msg.Body = tabla;

                msg.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                System.Net.NetworkCredential networkcred = new System.Net.NetworkCredential();
                networkcred.UserName = "buzonsig@parquedelemprendimiento.com";
                networkcred.Password = "buzonparque123";
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = networkcred;
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.Send(msg);

                Response.Redirect(Request.Url.AbsoluteUri);


                string script = "MostarrMensaje('Indicador registrado','Se ha guardado la información satisfactoriamente',1);";
                ClientScript.RegisterStartupScript(this.GetType(), "MensajeUsuario", script, true);
            }
            catch (Exception ex)
            {                
                lblmensaje.Text = "Debe diligenciar el formato completo.";
            }


        }

        protected void btnconsultar_Click(object sender, EventArgs e)
        {
            //    try
            //    {
            //        if (txtfecha.Text.Trim() == "")
            //        {
            //            lblmensaje.Text = "Por favor ingrese una fecha";
            //            txtfecha.Focus();

            //        }
            //        else
            //        {
            //            DateTime dt;
            //            dt = Convert.ToDateTime(txtfecha.Text);

            //            DataSet tabla = new DataSet();
            //            objEbuzon.Fecha = dt;
            //            tabla = objRbuzon.ConsultarBuzon(objEbuzon);
            //            GridView1.DataSource = tabla;
            //            GridView1.DataBind();
            //        }
            //    }

            //    catch (Exception)
            //    {
            //        lblmensaje.Text = "No hay datos";
            //        txtfecha.Focus();
            //    }
        }

        protected void btnlimpiar_Click(object sender, EventArgs e)
        {
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void btnregresar_Click(object sender, EventArgs e)
        {
            
        }


    }
}
