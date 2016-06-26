<%@ Page Title="" Language="C#" MasterPageFile="~/P_Master/CYC.Master" AutoEventWireup="true" CodeBehind="GCompra.aspx.cs" Inherits="SisGest2013Full.CYC.GCompra" %>

<asp:Content ID="Content2" ContentPlaceHolderID="navUsr" runat="server">
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
                        <a class="glyphicon glyphicon-home" href="../inicio.aspx"></a>
                    </li>
                   
                    <li>
                        <a href="../CYC/GCompra.aspx">Solicitud ECO</a>
                    </li>
                    <li>
                        <a href="../CYC/ConsultarECO.aspx">Consultar ECO</a>
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
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">
                        Solicitud <strong>ECO</strong>
                    </h2>
                    <hr>
                    <%-- <p class="intro-text text-center">
                        Bienvenido</p>--%>
                    <form id="Form1" class="form-vertical" role="form" runat="server">
                    <div class="row">
                        <div class="form-group col-lg-4">
                            <label>
                                Procesos
                            </label>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-info-sign"></i></span>
                                <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">
                                    <asp:ListItem Selected="True">Seleccione</asp:ListItem>
                                    <asp:ListItem>Dirección</asp:ListItem>
                                    <asp:ListItem>Comunicaciones</asp:ListItem>                                                                        
                                    <asp:ListItem>Gestión Financiera</asp:ListItem>
                                    <asp:ListItem>Mejoramiento Contínuo</asp:ListItem>                                    
                                    <asp:ListItem>Gestión Administrativa</asp:ListItem>                                                                        
                                    <asp:ListItem>Estrategias Tecnologicas</asp:ListItem>
                                    <asp:ListItem>Apoyo a la Creacion de Empresas</asp:ListItem>
                                    <asp:ListItem>Gestión de Compras y Contratación</asp:ListItem>
                                    <asp:ListItem>Fortalecimiento del Empredimiento en las IES</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>                        
                        <div class="form-group col-lg-4">
                            <label>
                                Valor</label>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-usd"></i></span>
                                <asp:TextBox ID="txtvalor" class="form-control" placeholder="Ejem:$000.000" runat="server"
                                    required pattern="[0-9]+"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group col-lg-4">
                            <label>
                                Plazo Estimado
                            </label>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                            <asp:TextBox ID="txtfecha" class="form-control" placeholder="dd/mm/aaaa" onchange="CalcularGrafico();"
                                runat="server" data-date-format="dd/mm/yyyy"></asp:TextBox>
                                </div>
                        </div>
                        <div class="form-group  col-lg-6">
                            <label>
                                Necesidad identificada</label>                               
                                <asp:TextBox ID="txtnesecidad" required class="form-control" TextMode="MultiLine"  Columns="60" Rows="6" placeholder="Que es lo que se requiere"
                                    runat="server"></asp:TextBox>
                        </div>
                        
                        <div class="form-group  col-lg-6">
                            <label>
                                Justificación de la necesidad
                            </label>   <asp:TextBox ID="txtjustificacion" class="form-control" Columns="60" Rows="6"
                                    runat="server" required TextMode="MultiLine"></asp:TextBox>
                            
                        </div>
                        
                    </div>
                    <div class="form-group col-lg-6 text-center col-lg-push-4">
                        <asp:Button ID="btnguardar" runat="server" class="btn btn-primary col-lg-6 " Text="Enviar"
                            OnClick="btnguardar_Click" />
                        <br /><br /><br />
                        <center>
                           <asp:Label ID="lblmensaje" CssClass="h3 label-warning text-danger" runat="server" Text=""></asp:Label>
                            </center>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script language="javascript" type="text/javascript">
        $('#<%= txtfecha.ClientID %>').datepicker().on('changeDate', function (ev) {
            CalcularGrafico();
        });

        function CalcularGrafico() {
            // Periodos
            var P1;


            P1 = $('#<%= txtfecha.ClientID %>').val();

        }

    </script>

    

</asp:Content>

