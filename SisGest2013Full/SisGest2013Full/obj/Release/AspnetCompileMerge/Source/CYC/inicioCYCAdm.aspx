<%@ Page Title="" Language="C#" MasterPageFile="~/P_Master/CYC.Master" AutoEventWireup="true" CodeBehind="inicioCYCAdm.aspx.cs" Inherits="SisGest2013Full.CYC.inicioCYCAdm" %>
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
<asp:Content ID="Content1" ContentPlaceHolderID="Body2" runat="server">
    <br /><br />
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center img-responsive">
                <img src="../img/indexCyC.png" class=" img-thumbnail img-responsive col-lg-10 col-lg-offset-1" alt="" />
            </div>
        </div>
    </div>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
</asp:Content>
