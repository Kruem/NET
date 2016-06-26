<%@ Page Title="" Language="C#" MasterPageFile="~/P_Master/CYC.Master" AutoEventWireup="true"
    CodeBehind="CrearEco.aspx.cs" Inherits="SisGest2013Full.CYC.CrearEco" %>

<asp:Content ID="Content4" ContentPlaceHolderID="navUsr" runat="server" Visible="false">
    <img src="../img/cyc.jpg" class="img-responsive" width="100%" height="100%" alt="" />
    <!-- Navigation -->
    <nav class="navbar navbar-default" role="navigation navbar-static-top">
        <div class="container">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <!-- navbar-brand is hidden on larger screens, but visible when the menu is collapsed -->
                    <a class="navbar-brand" href="../Index.aspx">Parque E</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li>
                            <a class="glyphicon glyphicon-home" id="casita" runat="server"></a>
                        </li>

                        <li>
                            <a href="../CYC/GCompraAdm.aspx">Solicitud ECO</a>
                        </li>
                        <li>
                            <a href="../CYC/ConsultarEcoADM.aspx">Consultar ECO</a>
                        </li>
                        <li>
                            <a href="../CYC/CrearECO.aspx">Crear ECO</a>
                        </li>
                        <li>
                            <a href="../CYC/EditarEco.aspx">Editar ECO</a>
                        </li>


                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
        </div>
    </nav>
</asp:Content>


<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="server">
    <div class="container">
        <div class="row">
            <div class="box">
                <hr />
                <h2 class="intro-text text-center">Consultar Solicitudes de <strong>ECO</strong>
                </h2>
                <hr />
                <div class="col-lg-10 col-lg-offset-1">
                    <form id="form1" runat="server">
                        <div class="row">
                            <div class="col-lg-4 col-lg-offset-0">
                                <br />
                                <asp:TextBox ID="TextBox1" class="form-control" runat="server" placeholder="FILTRO"></asp:TextBox>
                            </div>
                            <div class="col-lg-12 col-lg-offset-0">
                                <br />
                                <br />
                                <div class="table-responsive" style="height: 400px; overflow: scroll;">
                                    <asp:GridView ID="gvconsultaEco" CssClass="table table-striped table-bordered table-"
                                        runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1"
                                        PagerSettings-Mode="NextPreviousFirstLast" PagerSettings-FirstPageText="&nbsp;Inicio&nbsp;"
                                        PagerSettings-LastPageText="&nbsp;Fin&nbsp;" PagerSettings-NextPageText="&nbsp;Siguiente&nbsp;"
                                        PagerSettings-PreviousPageText="&nbsp;Previo&nbsp;" PagerSettings-Position="TopAndBottom"
                                        DataKeyNames="consec">
                                        <PagerSettings FirstPageText="&#160;Inicio&#160;" LastPageText="&#160;Fin&#160;"
                                            Mode="NextPreviousFirstLast" NextPageText="&#160;Siguiente&#160;" Position="TopAndBottom"
                                            PreviousPageText="&#160;Previo&#160;"></PagerSettings>
                                        <Columns>
                                            <asp:BoundField DataField="consec" HeaderText="#" InsertVisible="False"
                                                ReadOnly="True" SortExpression="consec" />
                                            <asp:BoundField DataField="fechasolicitud" HeaderText="Solicitud"
                                                SortExpression="fechasolicitud" />
                                            <asp:BoundField DataField="solicita" HeaderText="Solicita"
                                                SortExpression="solicita" />
                                            <asp:BoundField DataField="faseInicial" HeaderText="Fase Inicial"
                                                SortExpression="faseInicial" />
                                            <asp:BoundField DataField="area" HeaderText="Área" SortExpression="area" />
                                            <asp:BoundField DataField="nesecidad" HeaderText="Necesidad"
                                                SortExpression="nesecidad" />
                                            <asp:BoundField DataField="valor" HeaderText="Valor" SortExpression="valor" />
                                            <asp:BoundField DataField="justificacion" HeaderText="Justificación"
                                                SortExpression="justificacion" />
                                            <asp:BoundField DataField="fechaplazo" HeaderText="Plazo"
                                                SortExpression="fechaplazo" />
                                        </Columns>
                                    </asp:GridView>
                                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}"
                                        SelectMethod="GetData" TypeName="SisGest2013Full.CYC.DataSet1TableAdapters.pa_consultarCrearEcoTableAdapter"></asp:ObjectDataSource>
                                    <br />
                                </div>
                                <br />
                                <br />
                                <div class="form-group col-xs-3 col-md-2">
                                    <label>
                                        Consecutivo</label>
                                    <asp:TextBox ID="txtconsec" CssClass="form-control" required="" pattern="^\d+$" runat="server"></asp:TextBox>
                                </div>

                                <div class="form-group col-xs-3 col-md-2">
                                    <br />
                                    <asp:Button ID="btnbuscar" CssClass="btn btn-primary" Text="BUSCAR" runat="server" OnClick="btnbuscar_Click" />
                                </div>
                                <div class="form-group col-xs-3 col-md-2">
                                    <label>
                                        N° Seguimiento</label>
                                    <asp:TextBox ID="txtcodsig" CssClass="form-control" required="" pattern="^\d+$" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group col-xs-5 col-md-4">
                                    <label>
                                        Fase Actual</label>
                                    <asp:TextBox ID="txtfaseactual" CssClass="form-control" ReadOnly="true" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group col-xs-4 col-md-3">
                                    <label>
                                        Solicitante</label>
                                    <asp:TextBox ID="txtsolicita" CssClass="form-control" ReadOnly="true" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group col-xs-4 col-md-3">
                                    <label>
                                        Area</label>
                                    <asp:TextBox ID="txtarea" CssClass="form-control" ReadOnly="true" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group col-xs-4 col-md-3">
                                    <label>
                                        Fecha de Solicitud</label>
                                    <asp:TextBox ID="txtfesolici" CssClass="form-control fecha" placeholder="dd/mm/yyyy" ReadOnly="true"
                                        onchange="CalcularGrafico();"
                                        runat="server" data-date-format="dd/mm/yyyy"></asp:TextBox>
                                </div>
                                <div class="form-group col-xs-4 col-md-3">
                                    <label>
                                        Valor</label>
                                    <asp:TextBox ID="txtvalor" CssClass="form-control" ReadOnly="true" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group col-xs-4 col-md-3">
                                    <label>
                                        Necesidad</label>
                                    <asp:TextBox ID="txtnecesidad" CssClass="form-control" TextMode="MultiLine" ReadOnly="true"
                                        runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group col-xs-4 col-md-3">
                                    <label>
                                        Justificación</label>
                                    <asp:TextBox ID="txtjustif" CssClass="form-control" ReadOnly="true" TextMode="MultiLine"
                                        runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group col-xs-4 col-md-3">
                                    <label>
                                        Fecha Plazo</label>
                                    <asp:TextBox ID="txtfeplazo" CssClass="form-control fecha" ReadOnly="true" placeholder="dd/mm/yyyy"
                                        onchange="CalcularGrafico();"
                                        runat="server" data-date-format="dd/mm/yyyy"></asp:TextBox>
                                </div>
                                <div class="form-group col-lg-pull-4 col-xs-6 col-md-5">
                                    <br />
                                    <br />
                                    <asp:Label ID="lblmensaje" CssClass="h3 label-warning text-danger" runat="server" Text=""></asp:Label>
                                </div>
                            </div>
                            <br />
                        </div>
                        <div class="row">
                            <div class="form-group col-lg-5">
                                <label>
                                    Fase</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-align-justify"></i>
                                    </span>
                                    <asp:DropDownList ID="ddlfase" CssClass="form-control" runat="server" DataSourceID="SqlDataSource1"
                                        DataTextField="fase" DataValueField="consecfase">
                                        <asp:ListItem Selected="True">Seleccione</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:oCnx %>"
                                        SelectCommand="SELECT * FROM [tblEcoFase]"></asp:SqlDataSource>
                                </div>
                            </div>
                            <div class="form-group col-sm-3">
                                <label>
                                    Fecha Inicial Fase</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                    <asp:TextBox ID="txtfechafini" CssClass="form-control fecha" placeholder="dd/mm/yyyy" onchange="CalcularGrafico();"
                                        runat="server" data-date-format="dd/mm/yyyy"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group col-sm-3">
                                <label>
                                    Fecha Realizacion</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                    <asp:TextBox ID="txtfechareacion" CssClass="form-control fecha" placeholder="dd/mm/yyyy" onchange="CalcularGrafico();"
                                        runat="server" data-date-format="dd/mm/yyyy"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-sm-3">
                                <label>
                                    Contratacion</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-align-justify"></i>
                                    </span>
                                    <asp:DropDownList ID="ddlcontratacion" CssClass="form-control" runat="server">
                                        <asp:ListItem Selected="True">Seleccione</asp:ListItem>
                                        <asp:ListItem>U de A</asp:ListItem>
                                        <asp:ListItem>CIS</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group col-sm-4  col-sm-pull-0">
                                <label>
                                    Tipo de Contrato</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-align-justify"></i>
                                    </span>
                                    <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                        <asp:ListItem Selected="True">Seleccione</asp:ListItem>
                                        <asp:ListItem>Compra</asp:ListItem>
                                        <asp:ListItem>Prestación de servicios</asp:ListItem>
                                        <asp:ListItem>Suministros-Compra</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group col-sm-3 col-sm-pull-0">
                                <label>
                                    Interventor</label>
                                <div class="">
                                    <asp:TextBox ID="txtinterventor" CssClass="form-control" placeholder="Interventor" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-sm-3 ">
                                <label>
                                    Centro Gestor</label>
                                <div class="">
                                    <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server">
                                        <asp:ListItem Selected="True">Seleccione</asp:ListItem>
                                        <asp:ListItem>20306401</asp:ListItem>
                                        <asp:ListItem>20306402</asp:ListItem>
                                        <asp:ListItem>20302407</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group col-sm-3">
                                <label>
                                    Fecha Finalización</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                    <asp:TextBox ID="txtfechaftotal" CssClass="form-control fecha" placeholder="dd/mm/yyyy" onchange="CalcularGrafico();"
                                        runat="server" data-date-format="dd/mm/yyyy"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group col-sm-4 col-sm-offset-0">
                                <label>
                                    Observación</label>
                                <div class="">
                                    <asp:TextBox ID="txtobservacion" CssClass="form-control" Columns="300" Rows="3" placeholder="Observaciones"
                                        runat="server" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group col-sm-12 col-sm-pull-0">
                                <asp:Button ID="btnguardar" CssClass="btn btn-warning " Text="Guardar"
                                    runat="server" OnClick="btnguardar_Click" />&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnlimpiar" class="btn btn-default" runat="server" Text="Reset" OnClick="btnlimpiar_Click" />
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script language="javascript" type="text/javascript">
        $('.fecha').datepicker().on('changeDate', function (ev) {
            CalcularGrafico();
        });

        function CalcularGrafico() {
            // Periodos
            var P1;


            P1 = $('#<%= txtfechafini.ClientID %>').val();

    }

    </script>



    <script type="text/javascript">
        $(document).ready(function () {
            var txtFiltro = '#' + '<%=TextBox1.ClientID %>';
            var grillaJedis = '#' + '<%=gvconsultaEco.ClientID %>';
            $(txtFiltro).quicksearch(grillaJedis + ' tbody tr');
        });

    </script>

</asp:Content>
