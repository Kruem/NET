using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CEntidades;
using CReglas;

namespace testBancolombia.Consultas.CModerador
{
    public partial class RadarThMod : System.Web.UI.Page
    {

        DataSet ds = new DataSet();
        DataSet ds2 = new DataSet();
        DataSet dsN_A = new DataSet();
        tblResultTHActitudCapacEmpreReveladas oEacer = new tblResultTHActitudCapacEmpreReveladas();
        CRthResulActitudCapacEmpreReveladas oRacer = new CRthResulActitudCapacEmpreReveladas();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarPagina();
            }
        }

        protected DataSet dsResultadosReal()
        {
            try
            {
                ds2 = (DataSet)Session["ConThRadReal"];
                return ds2;
            }
            catch (Exception er)
            {

                throw;
            }
        }

        protected DataSet dsResultadosIdeal()
        {
            try
            {
                ds = (DataSet)Session["ConThRadIdeal"];
                return ds;
            }
            catch (Exception er)
            {

                throw;
            }
        }

        protected DataSet dsNoAplica(DataSet datosBusqueda)
        {
            try
            {
                oEacer.idEmpresResultACER = (int)datosBusqueda.Tables[0].Rows[0]["idEmpresResultACER"];
                oEacer.fechaResultACER = datosBusqueda.Tables[0].Rows[0]["fechaResultACER"].ToString();
                dsN_A = oRacer.consultaNoAplicaTH(oEacer);
                return dsN_A;
            }
            catch (Exception er)
            {

                throw;
            }
        }

        protected void CargarPagina()
        {
            try
            {
                #region traerDS
                //ideal
                ds = dsResultadosIdeal();
                //real
                ds2 = dsResultadosReal();

                dsN_A = dsNoAplica(ds2);

                #endregion

                #region calculosReales
                //afle,cee,ccrc,cbim,ccmn,frm
                //ccrc,afle,cbim,rerh,oee,acer,cee,ccmn,frm
                double Rtotal = 0, Rccrc = 0, Rafle = 0, Rcbim = 0, Rrerh = 0, Roee = 0, Racer = 0, Rcee = 0, Rccmn = 0, Rfrm = 0;
                string RtotalS, afleS, ceeS, ccrcS, cbimS, ccmnS, frmS;

                //Antecedentes formativos y laborales de los emprendedores
                Rafle = Convert.ToDouble(ds2.Tables[0].Rows[0]["totalResultAFLE"].ToString());
                afleS = Rafle.ToString();
                afleS = afleS.Replace(",", ".");

                //calculos Conformación Estratégica del Equipo
                Roee = Convert.ToDouble(ds2.Tables[0].Rows[0]["totalResultOEE"].ToString());
                Rrerh = Convert.ToDouble(ds2.Tables[0].Rows[0]["totalResultRERH"].ToString());
                Racer = Convert.ToDouble(ds2.Tables[0].Rows[0]["totalResultACER"].ToString());
                Rcee = Roee + Rrerh + Racer;
                ceeS = Rcee.ToString();
                ceeS = ceeS.Replace(",", ".");

                //Capacidad de construir y mantener redes de contacto
                Rccrc = Convert.ToDouble(ds2.Tables[0].Rows[0]["totalResultCCRC"].ToString());
                ccrcS = Rccrc.ToString();
                ccrcS = ccrcS.Replace(",", ".");

                //Capacidad de búsqueda de información de mercado o tecnología
                Rcbim = Convert.ToDouble(ds2.Tables[0].Rows[0]["totalResultCBIM"].ToString());
                cbimS = Rcbim.ToString();
                cbimS = cbimS.Replace(",", ".");

                //Claridad en la comunicación de su modelo de negocio
                Rccmn = Convert.ToDouble(ds2.Tables[0].Rows[0]["totalResultCCMN"].ToString());
                ccmnS = Rccmn.ToString();
                ccmnS = ccmnS.Replace(",", ".");

                //Formalización
                Rfrm = Convert.ToDouble(ds2.Tables[0].Rows[0]["totalResultF"].ToString());
                frmS = Rfrm.ToString();
                frmS = frmS.Replace(",", ".");

                Rtotal = Rafle + Rcee + Rccrc + Rcbim + Rccmn + Rfrm;
                Rtotal = Math.Round(Rtotal, 0);
                RtotalS = Rtotal.ToString();
                RtotalS = RtotalS.Replace(",", ".");
                #endregion

                #region calculosIdeales
                double th = 0, totalIdeal = 0;
                string thIdeal = "", thS = "";
                totalIdeal = Convert.ToDouble(ds.Tables[0].Rows[0]["thDefault"].ToString());
                th = totalIdeal;
                thIdeal = th.ToString();
                thIdeal = thIdeal.Replace(",", ".");

                totalIdeal = totalIdeal / 6.0;
                totalIdeal = Math.Round(totalIdeal, 4);
                thS = totalIdeal.ToString();
                thS = thS.Replace(",", ".");
                #endregion

                #region Calificacion

                double califTot = 0, calif1 = 0, calif2 = 0, calif3 = 0, calif4 = 0, calif5 = 0, calif6 = 0;
                //Rafle + Rcee + Rccrc + Rcbim + Rccmn + Rfrm

                #region calificacionAFLE
                calif1 = ((Rafle * 100) / totalIdeal);
                calif1 = Math.Round(calif1, 2);
                #endregion

                #region calificacionPropTecnologica
                calif2 = ((Rcee * 100) / totalIdeal);
                calif2 = Math.Round(calif2, 2);
                #endregion

                #region calificacionInnovacion
                calif3 = ((Rccrc * 100) / totalIdeal);
                calif3 = Math.Round(calif3, 2);
                #endregion

                #region calificacionMercado
                calif4 = ((Rcbim * 100) / totalIdeal);
                calif4 = Math.Round(calif4, 2);
                #endregion

                #region calificacionPropIntelectual
                calif5 = ((Rccmn * 100) / totalIdeal);
                calif5 = Math.Round(calif5, 2);
                #endregion

                #region calificacionEscalabilidad
                calif6 = ((Rfrm * 100) / totalIdeal);
                calif6 = Math.Round(calif6, 2);
                #endregion

                #region calificacionRealTotal
                califTot = ((Rtotal * 100) / th);
                califTot = Math.Round(califTot, 2);


                if ((califTot < 65) && (califTot > 0))
                {
                    lblGraficar.Text = 1.ToString();
                }
                else
                {
                    if ((califTot >= 65) && (califTot < 80))
                    {
                        lblGraficar.Text = 2.ToString();
                    }
                    else
                    {
                        if ((califTot >= 80) && (califTot <= 100))
                        {
                            lblGraficar.Text = 3.ToString();
                        }
                    }
                }
                #endregion

                #endregion                

                #region mandarResultados
                //totales
                lblTotIdeal.Text = thIdeal;
                lblTotReal.Text = RtotalS;

                //ideales
                lblIdealAFLE.Text = thS;
                lblIdealCEE.Text = thS;
                lblIdealCCRC.Text = thS;
                lblIdealCBIM.Text = thS;
                lblIdealCCMN.Text = thS;
                lblIdealFORM.Text = thS;

                //reales
                lblRealAFLE.Text = afleS;
                lblRealCEE.Text = ceeS;
                lblRealCCRC.Text = ccrcS;
                lblRealCBIM.Text = cbimS;
                lblRealCCMN.Text = ccmnS;
                lblRealFORM.Text = frmS;

                //calificaciones
                lblcalif1.Text = calif1.ToString();
                lblcalif2.Text = calif2.ToString();
                lblcalif3.Text = calif3.ToString();
                lblcalif4.Text = calif4.ToString();
                lblcalif5.Text = calif5.ToString();
                lblcalif6.Text = calif6.ToString();
                lblcalifT.Text = califTot.ToString();

                //Nombre empresa
                lblempresa.Text = ds2.Tables[0].Rows[0]["nombreEmpresaApps"].ToString();
                #endregion



            }
            catch (Exception ex)
            {

                throw;
            }
        }

    }
}