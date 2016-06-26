<%@ Page Title="" Language="C#" MasterPageFile="~/master/Admin.Master" AutoEventWireup="true" CodeBehind="paramCategMayor.aspx.cs" Inherits="testBancolombia.Administrador.paramCategMayor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
    <link href="../css/bootstrap.css" rel="stylesheet" />
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
                                <div class="col-lg-12">
                                    <h2><small>Parametrización de categorías mayores</small></h2>
                                </div>
                                <div class="col-lg-12">
                                    <br />
                                </div>
                                <p>
                                    Recuerde: Debe tener valores de parametrización por defecto para poder realizar el scoring de cada empresa 
                                    <a href="parametrosDefault.aspx">AQUI</a>.                                    
                                </p>
                                <p>
                                    Los siguientes son los parámetros por defecto para las categorías mayores, para todas las empresas:
                                </p>
                                <br />
                                <div class="col-md-10 col-md-offset-1">
                                    <div class="panel-group" id="accordion">
                                        <div class="panel panel-default">
                                            <div class="panel-heading" style="background-color: #b3b6bd;">
                                                <h4 class="panel-title input-group">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">
                                                        <i class="glyphicon glyphicon-question-sign"></i>&nbsp;PARÁMETROS POR DEFECTO
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="collapse1" class="panel-collapse collapse in" style="background-color: #b3b6bd;">
                                                <div class="panel-body">
                                                    <br />
                                                    <div class="col-lg-4">
                                                        <div class="col-lg-12">
                                                            <p>Oportunidad</p>
                                                            <div class="col-lg-6 col-lg-offset-3">
                                                                <div class="form-group">
                                                                    <div class="input-group col-md-10 col-md-offset-1">
                                                                        <asp:TextBox ID="txtOpDef" TextMode="SingleLine" min="1" max="100" required="" CssClass="form-control" Enabled="false" runat="server"></asp:TextBox>
                                                                        <span class="input-group-addon"><i class="glyphicon glyphicon-briefcase"></i></span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <div class="col-lg-12">
                                                            <p>Talento Humano</p>
                                                            <div class="col-lg-6 col-lg-offset-3">
                                                                <div class="form-group">
                                                                    <div class="input-group col-md-10 col-md-offset-1">
                                                                        <asp:TextBox ID="txtTHDef" TextMode="SingleLine" min="1" max="100" required="" CssClass="form-control" Enabled="false" runat="server"></asp:TextBox>
                                                                        <span class="input-group-addon"><i class="glyphicon glyphicon-briefcase"></i></span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-4">
                                                        <div class="col-lg-12">
                                                            <p>Recursos</p>
                                                            <div class="col-lg-6 col-lg-offset-3">
                                                                <div class="form-group">
                                                                    <div class="input-group col-md-10 col-md-offset-1">
                                                                        <asp:TextBox ID="txtRecDef" TextMode="SingleLine" min="1" max="100" required="" CssClass="form-control" Enabled="false" runat="server"></asp:TextBox>
                                                                        <span class="input-group-addon"><i class="glyphicon glyphicon-briefcase"></i></span>
                                                                    </div>
                                                                </div>
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
                                <div class="row">
                                    <div class="container-fluid">
                                        <div class="col-lg-12">
                                            <div class="col-md-12">
                                                <br />
                                                <p class="text-justify">
                                                    <i class="glyphicon">1.&nbsp;</i>&nbsp;Debe elegir la empresa que desea parametrizar.
                                                </p>
                                            </div>
                                            <br />
                                            <br />
                                            <br />
                                            <div class="panel-group" id="accordion3">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading" style="background-color: #b3b6bd;">
                                                        <h4 class="panel-title input-group">
                                                            <a data-toggle="collapse" data-parent="#accordion3" href="#collapse4">
                                                                <i class="glyphicon glyphicon-question-sign"></i>&nbsp;EMPRESAS
                                                            </a>
                                                        </h4>
                                                    </div>
                                                    <div id="collapse4" class="panel-collapse collapse in" style="background-color: #b3b6bd;">
                                                        <div class="panel-body">
                                                            <div class="container-fluid">
                                                                <div class="col-md-12 form-group">
                                                                    <%--<label for="#" class="">Empresa</label>--%>
                                                                    <%--<div class="input-group">
                                                    <asp:DropDownList ID="ddlEmpresa" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlEmpresa_SelectedIndexChanged"></asp:DropDownList>
                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-briefcase"></i></span>
                                                </div>--%>
                                                                    <div class="col-md-12">
                                                                        <div class="input-group col-md-4">
                                                                            <asp:TextBox ID="txtfiltro" runat="server" placeholder="Filtro" CssClass="form-control"></asp:TextBox>
                                                                            <span class="input-group-addon"><i class="glyphicon glyphicon-briefcase"></i></span>
                                                                        </div>
                                                                        <br />
                                                                        <div class="col-md-offset-0 table-responsive text-left" style="height: 300px; overflow: scroll; width: 98%;">

                                                                            <asp:GridView ID="gvEmpresas" runat="server" CssClass="table table-bordered table-condensed" HeaderStyle-CssClass="label-warning text-center"
                                                                                AutoGenerateColumns="false" DataKeyNames="consecEA" >
                                                                                <Columns>
                                                                                    <asp:BoundField DataField="nombreEmpresaApps" HeaderText="Nombre" SortExpression="nombreEmpresaApps"></asp:BoundField>
                                                                                    <asp:BoundField DataField="figuraJuridicaApps" HeaderText="Figura Jurídica" SortExpression="figuraJuridicaApps"></asp:BoundField>
                                                                                    <asp:BoundField DataField="NitApps" HeaderText="NIT" SortExpression="NitApps"></asp:BoundField>
                                                                                    <asp:BoundField DataField="appsCo" HeaderText="Apps.co" SortExpression="appsCo"></asp:BoundField>
                                                                                    <asp:BoundField DataField="bancolombia" HeaderText="Bancolombia" SortExpression="bancolombia"></asp:BoundField>
                                                                                    <asp:TemplateField HeaderText="<i class='glyphicon glyphicon-ok'></i>">
                                                                                        <ItemTemplate>
                                                                                            <asp:LinkButton ID="rbSelect" Text="Check" GroupName="rbSelect" AutoPostBack="true" runat="server"
                                                                                                OnClick="rbSelect_Click" CommandArgument='<%# Eval("nombreEmpresaApps") %>' />
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateField>
                                                                                </Columns>
                                                                            </asp:GridView>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="col-lg-12">
                                <hr />
                            </div>
                            <br />
                            <div class="col-md-12">
                                <div class="col-md-12 text-left text-justify">
                                    <p><i class="glyphicon">2.&nbsp;</i>&nbsp;Debe elegir que tipo de parametrización desea.</p>
                                </div>
                                <br />
                                <br />
                                <div class="panel-group" id="accordion2">
                                    <div class="panel panel-default">
                                        <div class="panel-heading" style="background-color: #b3b6bd;">
                                            <h4 class="panel-title input-group">
                                                <a data-toggle="collapse" data-parent="#accordion2" href="#collapse2">
                                                    <i class="glyphicon glyphicon-question-sign"></i>&nbsp;PARAMETRIZAR EMPRESA POR DEFECTO
                                                </a>
                                            </h4>
                                        </div>
                                        <div id="collapse2" class="panel-collapse collapse in" style="background-color: #b3b6bd;">
                                            <div class="panel-body">
                                                <div class="container-fluid">
                                                    <div class="col-lg-12">
                                                        <div class="col-lg-9 col-lg-offset-0">
                                                            <p class="text-justify">Puede seleccionar los parametros por defecto para cada empresa.</p>
                                                        </div>
                                                        <div class="col-lg-3">
                                                            <asp:CheckBox ID="chbDefaultBig" CssClass="checkbox" Text="Parametros por defecto" runat="server" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <%--<div class="panel-heading" style="background-color: #b3b6bd;">
                                            <h4 class="panel-title input-group">
                                                <a data-toggle="collapse" data-parent="#accordion2" href="#collapse3">
                                                    <i class="glyphicon glyphicon-question-sign"></i>&nbsp;INDICAR PARÁMETROS PARA LA EMPRESA
                                                </a>
                                            </h4>
                                        </div>--%>
                                        <%--<div id="collapse3" class="panel-collapse collapse in" style="background-color: #b3b6bd;">
                                            <div class="panel-body">

                                                <div class="container-fluid">
                                                    <div class="col-lg-12">
                                                        <div class="col-lg-3">
                                                            <p class="text-justify">Indique que valor tendrán estas categorías, recuerde que el total es de 100%</p>
                                                        </div>

                                                        <div class="col-lg-3">
                                                            <div class="form-group">
                                                                <label for="#" class="">Oportunidad</label>
                                                                <div class="input-group">
                                                                    <asp:TextBox ID="txtOportunidad" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-3">
                                                            <div class="form-group">
                                                                <label for="#" class="">Talento Humano</label>
                                                                <div class="input-group">
                                                                    <asp:TextBox ID="txtTalHum" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-3">
                                                            <div class="form-group">
                                                                <label for="#" class="">Recursos</label>
                                                                <div class="input-group">
                                                                    <asp:TextBox ID="txtRecursos" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                                                                    <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="col-lg-12">
                            <hr />
                        </div>
                        <div class="row">
                            <div class="container-fluid">
                                <div class="col-lg-12">

                                    <div class="col-lg-2 col-lg-offset-8">
                                        <asp:Button ID="btnParametrizarBig" CssClass="btn btn-warning btn-lg" runat="server" Text="Guardar" OnClick="btnParametrizarBig_Click" />
                                    </div>
                                    <div class="span6">
                                        <a href="indexAdm.aspx" class="btn btn-info">
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

    </form>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="js" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="../js/jquery-1.4.1.min.js"></script>
    <script src="../js/jquery-1.11.1.min.js"></script>
    <script src="../js/jquery.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/bootstrap-datepicker.js"></script>
    <script src="../js/jquery.quicksearch.js"></script>


    <script type="text/javascript">
        var op = 0;
        var th = 0;
        var rc = 0;
        function myfunction() {
            op = parseInt($('.val1').val());
            th = parseInt($('.val2').val());
            rc = parseInt($('.val3').val());
            suma = op + th + rc;

            if ((suma != 100) || (suma == 0) || (suma == null)) {
                alert("La suma de los valores de Oportunidad, Talento humano y Recursos debe ser igual a 100.");
                return false;
            }
            else {
                if (suma == 100) {
                    return true;
                }
            }
        }
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
