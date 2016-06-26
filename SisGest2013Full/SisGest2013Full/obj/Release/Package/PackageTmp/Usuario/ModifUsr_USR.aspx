<%@ Page Title="" Language="C#" MasterPageFile="~/P_Master/Usuario.Master" AutoEventWireup="true" CodeBehind="ModifUsr_USR.aspx.cs" Inherits="SisGest2013Full.Usuario.ModifUsr_USR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container box" style="border-radius:10px;">
    <div class="row">
        <form id="Form1" class="form-vertical" runat="server">
            <br />
            <hr />
            <h2 class="intro-text text-center">Modificar <strong>Usuario</strong>
            <hr />
            <br /><br />
            <div class="box" style="border-radius:10px;">
                    <div class="row col-lg-offset-2">
                        <div class="form-group col-md-4 col-lg-offset-2">
                            <label>
                                Identificacion</label>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-pencil"></i></span>
                                <asp:TextBox ID="txtusuario" class="form-control" placeholder="Ejem:12345" runat="server"
                                    required=""></asp:TextBox>
                            </div>
                        </div>                       
                    </div>
                    <div class="row col-lg-offset-2">
                        <div class="form-group  col-sm-6 col-md-4">
                            <label>
                                Nombres
                            </label>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <asp:TextBox ID="txtnombre" pattern="[a-zA-Z\s]+" class="form-control" placeholder="Ejem:juan" required="" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group col-sm-6 col-md-4">
                            <label>
                                Apellidos</label>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <asp:TextBox ID="txtapelldo" pattern="[a-zA-Z\s]+" class="form-control" placeholder="Ejem:Gomez" required="" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row col-lg-offset-2">
                        <div class="form-group  col-sm-6 col-md-4">
                            <label>
                                Clave</label>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <asp:TextBox ID="txtclave" class="form-control" type="email" required="" placeholder="Ejem:12345"
                                    runat="server" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group col-sm-6 col-md-4">
                            <label>
                                Correo</label>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <asp:TextBox ID="txtcorreo" class="form-control" required="" placeholder="Ejem@mail.com" 
                                    pattern="[a-zA-Z0-9._\-]+@[a-zA-Z0-9.\-]+\.[a-zA-Z]{2,4}" runat="server"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="row col-lg-offset-2">                        
                        <div class="form-group col-sm-6 col-md-4 col-md-offset-4 col-center-block">
                            <asp:Label ID="lblmensaje" CssClass="h3 label-warning text-danger" runat="server" Text=""></asp:Label>
                        </div>
                        <div class="form-group col-md-4 col-center-block">
                            <asp:Button ID="btnguardar" runat="server" class="btn btn-primary" Text="Guardar"
                                OnClick="btnguardar_Click" />
                        </div>                       
                    </div>
                     <h3>
                            <a href="../inicio.aspx" class="text-center new-account">regresar </a>
                        </h3>
                </div>
            </form>
                </div>
        </div>
</asp:Content>
