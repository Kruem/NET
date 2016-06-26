<%@ Page Title="" Language="C#" MasterPageFile="~/master/Admin.Master" AutoEventWireup="true" CodeBehind="paramOportPDV.aspx.cs" Inherits="testBancolombia.Administrador.paramOportPDV" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <link href="../css/bootstrap.min.css" rel="stylesheet" />
    <link href="../css/datepicker.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="../css/style.css" type="text/css" />
    <link rel="stylesheet" type="text/css" href="../css/btn.css" />
    <link href='http://fonts.googleapis.com/css?family=Poppins:400,600,700,500,300' rel='stylesheet' type='text/css' />
    <link href='https://fonts.googleapis.com/css?family=Bitter:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,900italic,900,700italic,700,400italic,500,500italic,300,100italic,100,300italic' rel='stylesheet' type='text/css' />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container-fluid backg" id="page-top">
        <form runat="server" class="form-horizontal">
            <div class="row">
                <div class="col-lg-12 ">
                    <div class="col-md-12 inner">
                        <br />
                        <div class="text-box">
                            <div class="box">
                                <div class="col-lg-12 text-right">
                                    <asp:Label ID="lblPDV" runat="server" CssClass="h3 text-danger" Text="5%"></asp:Label>
                                </div>
                                <br />
                                <h2><small><small>
                                    <p>Propuesta de valor.</p>
                                </small></small></h2>


                                <div class="col-lg-12">
                                    <br />
                                </div>
                                <p>
                                    Recuerde: Debe tener valores de las categorías mayores para poder realizar el scoring de cada empresa 
                                    <a href="paramCategMayor.aspx">AQUI</a>.
                                </p>
                                <br />
                                <div class="col-lg-12">
                                    <hr />
                                </div>
                                <br />
                                <br />
                                <div class="row">
                                    <div class="container-fluid">
                                        <div class="col-lg-12">
                                            <div class="col-md-6">
                                                <br />
                                                <p class="text-justify">Debe elegir la empresa que desea parametrizar.</p>
                                            </div>
                                            <div class="col-md-6 form-group">
                                                <label for="#" class="">Empresa</label>
                                                <div class="input-group">
                                                    <asp:DropDownList ID="ddlEmpresa" runat="server" CssClass="form-control"></asp:DropDownList>
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-briefcase"></i></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="panel-group text-justify" id="accordion">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading" style="background-color: #808080;">
                                                        <h4 class="panel-title">
                                                            <a data-toggle="collapse" class="" data-parent="#accordion" href="#collapse1">Parametrizaciones Anteriores</a>
                                                        </h4>
                                                    </div>
                                                    <div id="collapse1" class="panel-collapse collapse">
                                                        <div class="panel-body">
                                                            <div class="col-lg-4">

                                                                <asp:TextBox ID="txtfiltro1" CssClass="form-control f1" runat="server" placeholder="Filtro"></asp:TextBox>
                                                            </div>
                                                            <div class="table-responsive col-lg-12" style="overflow: scroll;">
                                                                <br />
                                                                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"></asp:ObjectDataSource>
                                                                <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered" runat="server"
                                                                    AutoGenerateColumns="False">
                                                                </asp:GridView>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <hr />
                                </div>
                                <br />
                                <div class="row">
                                    <div class="container-fluid">
                                        <div class="col-lg-12 text-justify">
                                            <!-- PARAMETROS ini -->

                                            <div class="row">
                                                <div class="col-lg-10 text-justify">
                                                    <p>1. ¿ Tiene identificada la misión de su empresa ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="txtpdv1" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#1</i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <hr />
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-10 text-justify">
                                                    <p>2. ¿Tiene definido indicadores para el cumplimiento de la misión?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="txtpdv2" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#2</i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <hr />
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-10 text-justify">
                                                    <p>3. ¿ Tiene un cronograma de actividades para que su empresa cumpla su misión ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox1" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#3</i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <hr />
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-10 text-justify">
                                                    <p>4. ¿ Tiene identificada la visión de su empresa ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox2" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#4</i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <hr />
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-10 text-justify">
                                                    <p>5. ¿ Tiene definidos los indicadores para el cumplimiento de la visión?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox3" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#5</i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <hr />
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-10 text-justify">
                                                    <p>6. ¿ Tiene identificadas las políticas empresariales ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox4" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#6</i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <hr />
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-10 text-justify">
                                                    <p>7. ¿ Tiene identificados los objetivos empresariales ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox5" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#7</i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <hr />
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-10 text-justify">
                                                    <p>8. ¿ Tiene definido el mapa de procesos de la empresa ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox6" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#8</i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <hr />
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-10 text-justify">
                                                    <p>9. ¿ Tiene la empresa indicadores de gestión de sus procesos ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox8" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#9</i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <hr />
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-10 text-justify">
                                                    <p>10. ¿ Tiene definida la cadena de valor de la empresa ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox7" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#10</i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <hr />
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-10 text-justify">
                                                    <p>11. ¿ Tiene identificadas las variables que más afectan su modelo de negocio ? <a href="#" data-toggle="modal" data-target="#myModal" class="page-scroll active"><i class="glyphicon glyphicon-question-sign"></i></a></p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox9" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#11</i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <hr />
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-10 text-justify">
                                                    <p>12. ¿Tiene identificado el problema o la necesidad insatisfecha que intenta resolver con su propuesta de valor?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox10" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#12</i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <hr />
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-10 text-justify">
                                                    <p>13. ¿Tiene identificada la propuesta de valor para entregar a sus clientes?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox11" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#13</i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <hr />
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-10 text-justify">
                                                    <p>14. ¿Ha identificado y gestionado la empresa los recursos físicos claves que requiere para el cumplimiento de la propuesta de valor?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox12" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#14</i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <hr />
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-10 text-justify">
                                                    <p>15. ¿ La empresa conoce cuáles son los recursos técnicos y tecnológicos claves que requiere para el cumplimiento de la propuesta de valor ? </p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox13" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#15</i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <hr />
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-10 text-justify">
                                                    <p>16. ¿Tiene identificada la propuesta de valor para cada segmento de mercado?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox14" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#16</i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <hr />
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-10 text-justify">
                                                    <p>17. ¿Ha validado su propuesta de valor con los clientes actuales?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox15" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#17</i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <hr />
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-10 text-justify">
                                                    <p>18. ¿ La empresa ha realizado algún tipo de validación comercial del producto o servicio ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox16" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#18</i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <hr />
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-10 text-justify">
                                                    <p>19. ¿Identifican y analizan la presencia de productos sustitutos cercanos y su influencia sobre el mercado al cual apunta la empresa?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox17" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#19</i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <hr />
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-10 text-justify">
                                                    <p>20. ¿ Conoce a profundidad quién es su competencia?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox18" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#20</i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <hr />
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-10 text-justify">
                                                    <p>21. ¿ Tiene identicado cómo se diferencia de su competencia ? </p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox19" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#21</i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <hr />
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-10 text-justify">
                                                    <p>22. ¿ La empresa tiene empaquetado el producto o servicio que ofrece a sus clientes ? <a href="#" data-toggle="modal" data-target="#myModal2" class="page-scroll active"><i class="glyphicon glyphicon-question-sign"></i></a></p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox20" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#22</i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <hr />
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-10 text-justify">
                                                    <p>23. ¿ Tiene identificado los productos y servicios que quiere entregar a sus clientes ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox21" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#23</i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <hr />
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-10 text-justify">
                                                    <p>24. ¿ Tiene identificado cuáles son los productos y/o servicios que más le aportan en ventas a la organización ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox22" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#24</i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <hr />
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-10 text-justify">
                                                    <p>25. ¿ Tiene identificado cuáles son los productos y/o servicios que la empresa quiere producir o comercializar en el mercado ? </p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox23" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#25</i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <hr />
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-10 text-justify">
                                                    <p>26. ¿Tiene identificadas las barreras de entrada al mercado?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox24" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#26</i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <hr />
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-10 text-justify">
                                                    <p>27. ¿La empresa ha generado barreras de entrada para evitar competencia en el mercado?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox25" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#27</i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <hr />
                                            </div>
                                            <div class="row">
                                                <div class="col-lg-10 text-justify">
                                                    <p>28. ¿ Cuántos productos o servicios tiene la empresa ? </p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox26" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#28</i></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <hr />
                                            </div>



                                            <!-- PARAMETROS fin -->
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="container-fluid">
                                        <div class="col-lg-12">

                                            <div class="col-lg-2 col-lg-offset-6">
                                                <asp:Button ID="btnParametrizarBig" CssClass="btn btn-warning btn-lg" runat="server" Text="Guardar" OnClick="btnParametrizarBig_Click" />
                                            </div>
                                            <div class="col-lg-2">
                                                <input type="reset" class="btn btn-default btn-lg" value="Limpiar" id="btnlimpiar" />
                                            </div>
                                            <div class="span6">
                                                <a href="menuAdminParam.aspx" class="btn btn-info">
                                                    <b>
                                                        <center>Regresar</center>
                                                    </b>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <!-- Modal inicio-->

            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <br />
                    <br />
                    <br />
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <br />
                        </div>
                        <div class="modal-body container">
                            <div class="row">
                                <div class="col-md-6">
                                    <p class="text-center">Variables políticas económicas, sociales, tecnológicas, culturales, legales, ecológicas, etc.</p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <br />
                    <br />
                    <br />
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <br />
                        </div>
                        <div class="modal-body container">
                            <div class="row">
                                <div class="col-md-6">
                                    <p class="text-center">Imagen corporativa, definición de caraterísticas, beneficios, servicio post-ventas, garantías, etc.</p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- Modal fin-->
        </form>
    </div>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="js" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="../js/bootstrap-datepicker.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var txtFiltro = '#' + '<%=txtfiltro1.ClientID %>';
            var grillaJedis = '#' + '<%=GridView1.ClientID %>';
            $(txtFiltro).quicksearch(grillaJedis + ' tbody tr');
        });
    </script>
    <!--datepicker-->
    <%--<script>  
        //Esto sirve para fecha actual en adelante **************************
        $('.datepicker').datepicker({
            format: 'mm/dd/yyyy',
            startDate: '-3d'
        })        
    </script>--%>

    <%--<script language="javascript" type="text/javascript">
        $('#<%= txtFecha_Inicio.ClientID %>').datepicker().on('changeDate', function (ev) {
            CalcularGrafico();
        });
    </script>--%>
</asp:Content>
