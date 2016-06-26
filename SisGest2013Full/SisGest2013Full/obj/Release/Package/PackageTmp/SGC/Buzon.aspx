<%@ Page Title="" Language="C#" MasterPageFile="~/P_Master/Usuario.Master" AutoEventWireup="true" CodeBehind="Buzon.aspx.cs" Inherits="SisGest2013Full.SGC.Buzon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container">
        <div class="row">
            <div class="box" style="border-radius: 10px">
                <div class="col-lg-12">
                    <hr>
                    <h2 class="intro-text text-center">Contactenos <strong></strong>
                    </h2>
                    <hr>
                    <p class="intro-text text-center">
                        Si tiene alguna duda, queja, sugerencia o reclamo, escribanos.
                    </p>
                    <form id="Form1" role="form" runat="server">
                        <div class="row">
                            <div class="form-group col-md-3">
                                <div class="input-group">
                                    <asp:RadioButton ID="rdbsug" Text="&nbsp;Sugerencia" runat="server" GroupName="Tipo" CausesValidation="True" />
                                </div>
                            </div>
                            <div class="form-group col-md-3">
                                <div class="input-group">
                                    <asp:RadioButton ID="rdbqueja" Text="&nbsp;Queja" runat="server" GroupName="Tipo" CausesValidation="True" />
                                </div>
                            </div>
                            <div class="form-group col-md-3">
                                <div class="input-group">
                                    <asp:RadioButton ID="rdbreclamo" Text="&nbsp;Reclamo" runat="server" GroupName="Tipo" CausesValidation="True" />
                                </div>
                            </div>
                            <div class="form-group col-md-3">
                                <div class="input-group">
                                    <asp:RadioButton ID="rdbrec" Text="&nbsp;Reconocimiento" runat="server" GroupName="Tipo" CausesValidation="True" />
                                </div>
                            </div>
                            <div class="text-center">
                                <asp:Label ID="lblmensaje" class="text-danger alert-warning" runat="server" Text=""></asp:Label>
                                <br />
                                <br />
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-lg-4">
                                <label>
                                    Nombre</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <asp:TextBox ID="txtnombre" class="form-control" placeholder="Nombre" runat="server"
                                        required pattern="^[a-zA-Z_áéíóúñ\s]*$"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group col-lg-4">
                                <label>
                                    Correo</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                    <asp:TextBox ID="txtcorreo" class="form-control" type="email" placeholder="Ejem@gmail.com"
                                        required pattern="[a-zA-Z0-9._\-]+@[a-zA-Z0-9.\-]+\.[a-zA-Z]{2,4}" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group col-lg-4">
                                <label>
                                    Telefono</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                                    <asp:TextBox ID="txttelefono" class="form-control" placeholder="Telefono" runat="server"
                                        required pattern="[0-9]{7,10}"></asp:TextBox>
                                </div>
                            </div>
                            <div class="clearfix">
                            </div>
                            <div class="form-group col-sm-4">
                                <label>
                                    Fecha</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                    <asp:TextBox ID="txtfecha" class="form-control" placeholder="05/05/2015" onchange="CalcularGrafico();"
                                        required runat="server" data-date-format="dd/mm/yyyy"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group col-lg-4">
                                <label>
                                    Empresa</label>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-briefcase"></i></span>
                                    <asp:TextBox ID="txtempresa" class="form-control" placeholder="Empresa" runat="server" required></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-group col-lg-8">
                                <label>
                                    Descripcion</label>
                                <asp:TextBox ID="txtdesc" class="form-control" Columns="100" Rows="6" placeholder="Comentario"
                                    required runat="server" TextMode="MultiLine"></asp:TextBox>

                            </div>

                        </div>
                        <div class="row">
                            <div class="form-group col-lg-2">
                                <asp:Button ID="btnguardar" type="submit" class="btn btn-danger" runat="server" OnClick="btnguardar_Click"
                                    Text="Guardar" />
                            </div>
                            <div class="form-group col-lg-2">
                                <asp:Button ID="btnlimpiar" type="submit" class="btn btn-default" runat="server" Text="Limpiar" OnClick="btnlimpiar_Click" />
                            </div>

                            <div class="form-group col-lg-2 col-lg-offset-5">
                                <a href="../Index.aspx" target="_self">
                                    <input type="button" class="btn btn-primary pull-right" name="boton" value="Regresar" /></a>

                            </div>

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
