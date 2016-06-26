<%@ Page Title="" Language="C#" MasterPageFile="~/master/Admin.Master" AutoEventWireup="true" CodeBehind="paramOportunidad.aspx.cs" Inherits="testBancolombia.Administrador.paramOportunidad" %>

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
                                <div class="col-lg-12">
                                    <h2><small>Parametrización Oportunidad</small></h2>
                                </div>
                                <div class="col-lg-12">
                                    <br />
                                </div>
                                <p>
                                    Recuerde: Debe tener valores de las categorías mayores para poder realizar el scoring de cada empresa 
                                    <a href="paramCategMayor.aspx">AQUI</a>.
                                </p>
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
                                    </div>
                                </div>

                                <div class="col-lg-12">
                                    <hr />
                                </div>

                                <div class="row">
                                    <div class="container-fluid">
                                        <div class="col-lg-12 text-justify">
                                            <!-- PARAMETROS ini -->

                                            <div class="col-lg-12 text-right">
                                                <asp:Label ID="lblPDV" runat="server" CssClass="text-danger" Text="5.00%"></asp:Label>
                                            </div>
                                            <h2><small><small>
                                                <p>Propuesta de valor.</p>
                                            </small></small></h2>
                                            <br />
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
                                            <div class="row">
                                                 <div class="col-lg-10 text-justify">
                                                    <p>2. ¿ Tiene identificada la misión de su empresa ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="txtpdv2" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#2</i></span>
                                                    </div>                                                    
                                                    </div>
                                            </div>
                                            <div class="row">
                                                 <div class="col-lg-10 text-justify">
                                                    <p>2. ¿ Tiene identificada la misión de su empresa ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox1" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#2</i></span>
                                                    </div>                                                    
                                                    </div>
                                            </div>
                                            <div class="row">
                                                 <div class="col-lg-10 text-justify">
                                                    <p>2. ¿ Tiene identificada la misión de su empresa ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox2" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#2</i></span>
                                                    </div>                                                    
                                                    </div>
                                            </div>
                                            <div class="row">
                                                 <div class="col-lg-10 text-justify">
                                                    <p>2. ¿ Tiene identificada la misión de su empresa ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox3" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#2</i></span>
                                                    </div>                                                    
                                                    </div>
                                            </div>
                                            <div class="row">
                                                 <div class="col-lg-10 text-justify">
                                                    <p>2. ¿ Tiene identificada la misión de su empresa ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox4" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#2</i></span>
                                                    </div>                                                    
                                                    </div>
                                            </div>
                                            <div class="row">
                                                 <div class="col-lg-10 text-justify">
                                                    <p>2. ¿ Tiene identificada la misión de su empresa ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox5" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#2</i></span>
                                                    </div>                                                    
                                                    </div>
                                            </div>
                                            <div class="row">
                                                 <div class="col-lg-10 text-justify">
                                                    <p>2. ¿ Tiene identificada la misión de su empresa ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox6" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#2</i></span>
                                                    </div>                                                    
                                                    </div>
                                            </div>
                                            <div class="row">
                                                 <div class="col-lg-10 text-justify">
                                                    <p>2. ¿ Tiene identificada la misión de su empresa ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox8" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#2</i></span>
                                                    </div>                                                    
                                                    </div>
                                            </div>
                                            <div class="row">
                                                 <div class="col-lg-10 text-justify">
                                                    <p>2. ¿ Tiene identificada la misión de su empresa ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox7" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#2</i></span>
                                                    </div>                                                    
                                                    </div>
                                            </div>
                                            <div class="row">
                                                 <div class="col-lg-10 text-justify">
                                                    <p>2. ¿ Tiene identificada la misión de su empresa ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox9" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#2</i></span>
                                                    </div>                                                    
                                                    </div>
                                            </div>
                                            <div class="row">
                                                 <div class="col-lg-10 text-justify">
                                                    <p>2. ¿ Tiene identificada la misión de su empresa ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox10" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#2</i></span>
                                                    </div>                                                    
                                                    </div>
                                            </div>
                                            <div class="row">
                                                 <div class="col-lg-10 text-justify">
                                                    <p>2. ¿ Tiene identificada la misión de su empresa ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox11" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#2</i></span>
                                                    </div>                                                    
                                                    </div>
                                            </div>
                                            <div class="row">
                                                 <div class="col-lg-10 text-justify">
                                                    <p>2. ¿ Tiene identificada la misión de su empresa ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox12" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#2</i></span>
                                                    </div>                                                    
                                                    </div>
                                            </div>
                                            <div class="row">
                                                 <div class="col-lg-10 text-justify">
                                                    <p>2. ¿ Tiene identificada la misión de su empresa ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox13" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#2</i></span>
                                                    </div>                                                    
                                                    </div>
                                            </div>
                                            <div class="row">
                                                 <div class="col-lg-10 text-justify">
                                                    <p>2. ¿ Tiene identificada la misión de su empresa ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox14" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#2</i></span>
                                                    </div>                                                    
                                                    </div>
                                            </div>
                                            <div class="row">
                                                 <div class="col-lg-10 text-justify">
                                                    <p>2. ¿ Tiene identificada la misión de su empresa ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox15" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#2</i></span>
                                                    </div>                                                    
                                                    </div>
                                            </div>
                                            <div class="row">
                                                 <div class="col-lg-10 text-justify">
                                                    <p>2. ¿ Tiene identificada la misión de su empresa ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox16" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#2</i></span>
                                                    </div>                                                    
                                                    </div>
                                            </div>
                                            <div class="row">
                                                 <div class="col-lg-10 text-justify">
                                                    <p>2. ¿ Tiene identificada la misión de su empresa ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox17" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#2</i></span>
                                                    </div>                                                    
                                                    </div>
                                            </div>
                                            <div class="row">
                                                 <div class="col-lg-10 text-justify">
                                                    <p>2. ¿ Tiene identificada la misión de su empresa ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox18" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#2</i></span>
                                                    </div>                                                    
                                                    </div>
                                            </div>
                                            <div class="row">
                                                 <div class="col-lg-10 text-justify">
                                                    <p>2. ¿ Tiene identificada la misión de su empresa ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox19" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#2</i></span>
                                                    </div>                                                    
                                                    </div>
                                            </div>
                                            <div class="row">
                                                 <div class="col-lg-10 text-justify">
                                                    <p>2. ¿ Tiene identificada la misión de su empresa ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox20" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#2</i></span>
                                                    </div>                                                    
                                                    </div>
                                            </div>
                                            <div class="row">
                                                 <div class="col-lg-10 text-justify">
                                                    <p>2. ¿ Tiene identificada la misión de su empresa ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox21" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#2</i></span>
                                                    </div>                                                    
                                                    </div>
                                            </div>
                                            <div class="row">
                                                 <div class="col-lg-10 text-justify">
                                                    <p>2. ¿ Tiene identificada la misión de su empresa ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox22" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#2</i></span>
                                                    </div>                                                    
                                                    </div>
                                            </div>
                                            <div class="row">
                                                 <div class="col-lg-10 text-justify">
                                                    <p>2. ¿ Tiene identificada la misión de su empresa ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox23" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#2</i></span>
                                                    </div>                                                    
                                                    </div>
                                            </div>
                                            <div class="row">
                                                 <div class="col-lg-10 text-justify">
                                                    <p>2. ¿ Tiene identificada la misión de su empresa ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox24" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#2</i></span>
                                                    </div>                                                    
                                                    </div>
                                            </div>
                                            <div class="row">
                                                 <div class="col-lg-10 text-justify">
                                                    <p>2. ¿ Tiene identificada la misión de su empresa ?</p>
                                                </div>
                                                <div class="col-md-2 form-group text-right">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="TextBox25" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                                                        <span class="input-group-addon"><i class="">#2</i></span>
                                                    </div>                                                    
                                                    </div>
                                            </div>


                                            <br />
                                            <div class="col-lg-12">
                                                <hr />
                                            </div>
                                            <br />
                                            <br />


                                            <div class="col-lg-12 text-right">
                                                <asp:Label ID="lblTecnol" runat="server" CssClass="text-danger" Text=""></asp:Label>
                                            </div>
                                            <h2><small><small>
                                                <p>Tecnología.</p>
                                            </small></small></h2>
                                            <br />

                                            <br />


                                            <div class="col-lg-12">
                                                <hr />
                                            </div>
                                            <br />
                                            <br />


                                            <div class="col-lg-12 text-right">
                                                <asp:Label ID="lblInnov" runat="server" CssClass="text-danger" Text=""></asp:Label>
                                            </div>
                                            <h2><small><small>
                                                <p>Innovación.</p>
                                            </small></small></h2>
                                            <br />

                                            <br />


                                            <div class="col-lg-12">
                                                <hr />
                                            </div>
                                            <br />
                                            <br />


                                            <div class="col-lg-12 text-right">
                                                <asp:Label ID="lblMercado" runat="server" CssClass="text-danger" Text=""></asp:Label>
                                            </div>
                                            <h2><small><small>
                                                <p>Mercado.</p>
                                            </small></small></h2>
                                            <br />

                                            <br />


                                            <div class="col-lg-12">
                                                <hr />
                                            </div>
                                            <br />
                                            <br />


                                            <div class="col-lg-12 text-right">
                                                <asp:Label ID="lblPropInt" runat="server" CssClass="text-danger" Text=""></asp:Label>
                                            </div>
                                            <h2><small><small>
                                                <p>Propiedad Intelectual.</p>
                                            </small></small></h2>
                                            <br />

                                            <br />


                                            <div class="col-lg-12">
                                                <hr />
                                            </div>
                                            <br />
                                            <br />

                                            <div class="col-lg-12 text-right">
                                                <asp:Label ID="lblescal" runat="server" CssClass="text-danger" Text=""></asp:Label>
                                            </div>
                                            <h2><small><small>
                                                <p>Escalabilidad.</p>
                                            </small></small></h2>
                                            <br />

                                            <br />

                                            <!-- PARAMETROS fin -->
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
                                                <asp:Button ID="btnParametrizarBig" CssClass="btn btn-warning btn-lg" runat="server" Text="Guardar" />
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
        </form>
    </div>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="js" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="../js/bootstrap-datepicker.js"></script>

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
