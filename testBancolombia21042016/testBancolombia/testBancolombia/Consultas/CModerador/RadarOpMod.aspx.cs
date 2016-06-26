using System;
using System.Data;
namespace testBancolombia.Consultas.CModerador
{
    public partial class RadarOpMod : System.Web.UI.Page
    {
        DataSet ds = new DataSet();
        DataSet ds2 = new DataSet();
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
                ds2 = (DataSet)Session["ConOpRadReal"];
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
                ds = (DataSet)Session["ConOpRadIdeal"];
                return ds;
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
                #endregion

                #region calculosReales
                double total = 0, pv = 0, tec = 0, merc = 0, inn = 0, esc = 0, pri = 0, mrC = 0, mrCl = 0, mrRC = 0, iCDI = 0, iDPS = 0, iGCN = 0, iGCT = 0, iRPP = 0;
                string totReal, pdv, tecn, esca, propint, mr, inno;

                pv = Convert.ToDouble(ds2.Tables[0].Rows[0]["totalResultPDV"].ToString());
                pdv = pv.ToString();
                pdv = pdv.Replace(",", ".");

                tec = Convert.ToDouble(ds2.Tables[0].Rows[0]["totalResultT"].ToString());
                tecn = tec.ToString();
                tecn = tecn.Replace(",", ".");

                esc = Convert.ToDouble(ds2.Tables[0].Rows[0]["totalResultESC"].ToString());
                esca = esc.ToString();
                esca = esca.Replace(",", ".");

                pri = Convert.ToDouble(ds2.Tables[0].Rows[0]["totalResultPI"].ToString());
                propint = pri.ToString();
                propint = propint.Replace(",", ".");

                //calculos mercado
                mrC = Convert.ToDouble(ds2.Tables[0].Rows[0]["totalResultCAN"].ToString()); //canales
                mrCl = Convert.ToDouble(ds2.Tables[0].Rows[0]["totalResultC"].ToString()); //clientes
                mrRC = Convert.ToDouble(ds2.Tables[0].Rows[0]["totalResultRC"].ToString()); //relacion clientes
                merc = mrRC + mrCl + mrC;
                mr = merc.ToString();
                mr = mr.Replace(",", ".");

                //calculos innovación
                iCDI = Convert.ToDouble(ds2.Tables[0].Rows[0]["totalResultCDI"].ToString());
                iDPS = Convert.ToDouble(ds2.Tables[0].Rows[0]["totalResultDPS"].ToString());
                iGCN = Convert.ToDouble(ds2.Tables[0].Rows[0]["totalResultGNC"].ToString());
                iGCT = Convert.ToDouble(ds2.Tables[0].Rows[0]["totalResultGCT"].ToString());
                iRPP = Convert.ToDouble(ds2.Tables[0].Rows[0]["totalResultRPP"].ToString());
                inn = iCDI + iDPS + iGCN + iGCT + iRPP;
                inno = inn.ToString();
                inno = inno.Replace(",", ".");

                total = pv + tec + esc + pri + merc + inn;
                total = Math.Round(total, 4);
                totReal = total.ToString();
                totReal = totReal.Replace(",", ".");
                #endregion

                #region calculosIdeales
                double op = 0, tIdeal = 0;
                string opIdeal = "", oport = "";
                tIdeal = Convert.ToDouble(ds.Tables[0].Rows[0]["opDefault"].ToString());
                op = tIdeal;

                opIdeal = op.ToString();
                opIdeal = opIdeal.Replace(",", ".");

                tIdeal = tIdeal / 6.0;
                tIdeal = Math.Round(tIdeal, 4);
                oport = tIdeal.ToString();
                oport = oport.Replace(",", ".");
                #endregion

                #region Calificacion
                // real total pv tec esc pri merc inn
                // ideal tIdeal==>total parcial
                double califTot = 0, calif1 = 0, calif2 = 0, calif3 = 0, calif4 = 0, calif5 = 0, calif6 = 0;

                #region calificacionPropuestaValor
                calif1 = ((pv * 100) / tIdeal);
                calif1 = Math.Round(calif1, 2);
                #endregion

                #region calificacionPropTecnologica
                calif2 = ((tec * 100) / tIdeal);
                calif2 = Math.Round(calif2, 2);
                #endregion

                #region calificacionInnovacion
                calif3 = ((inn * 100) / tIdeal);
                calif3 = Math.Round(calif3, 2);
                #endregion

                #region calificacionMercado
                calif4 = ((merc * 100) / tIdeal);
                calif4 = Math.Round(calif4, 2);
                #endregion

                #region calificacionPropIntelectual
                calif5 = ((pri * 100) / tIdeal);
                calif5 = Math.Round(calif5, 2);
                #endregion

                #region calificacionEscalabilidad
                calif6 = ((esc * 100) / tIdeal);
                calif6 = Math.Round(calif6, 2);
                #endregion

                #region calificacionRealTotal
                califTot = ((total * 100) / op);
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
                lblTotIdeal.Text = opIdeal;
                lblTotReal.Text = totReal;

                //ideales
                lblIdealesc.Text = oport;
                lblIdealinn.Text = oport;
                lblIdealmer.Text = oport;
                lblIdealpdv.Text = oport;
                lblIdealpri.Text = oport;
                lblIdealtec.Text = oport;

                //reales
                lblRealesc.Text = esca;
                lblRealinn.Text = inno;
                lblRealmer.Text = mr;
                lblRealpdv.Text = pdv;
                lblRealpri.Text = propint;
                lblRealtec.Text = tecn;

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