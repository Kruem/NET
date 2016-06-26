<%@ Page Title="" Language="C#" MasterPageFile="~/P_Master/SGC.Master" AutoEventWireup="true" CodeBehind="MContinuo.aspx.cs" Inherits="SisGest2013Full.SGC.MContinuo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Body" runat="server">
    <div class="container">
        <div class="row">
            <div class="box" style="border-radius:10px;">
                <form id="Form1" runat="server">
                <div class="table-responsive">
                    <h2 class="text-center">
                        Mejoramiento Continuo</h2>
                    <table class="table table-condensed">
                        <thead>
                            <tr>
                                <th>
                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </th>
                                <th>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <asp:Button ID="btnUpload" runat="server" class="btn btn-primary" Text="CARGAR" OnClick="UploadFile" />
                                </td>
                                <td>
                                    <asp:FileUpload ID="FileUpload1" runat="server" Width="230px" Height="25px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:LinkButton ID="lnkDeleteFolder" runat="server" CommandArgument='<%# Eval("Value") %>'
                                        OnClick="DeleteFolder" Text="Eliminar Carpeta"> 
       <img alt="Eliminar" height="30px" width="30px" src="../img/eliminarcarpeta.png" />
                                    </asp:LinkButton>
                                </td>
                                <td>
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" EmptyDataText="No files uploaded"
                                        Width="600px" HeaderStyle-Font-Size="24px" HeaderStyle-Height="30" HeaderStyle-BackColor="Gray"
                                        HeaderStyle-ForeColor="White" AlternatingRowStyle-BackColor="#ebebeb" AutoPostBack="True">
                                        <Columns>
                                            <asp:BoundField DataField="Text" HeaderText="ARCHIVO" ReadOnly="True" />
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lnkDownload" Text="Descargar" CommandArgument='<%# Eval("Value") %>'
                                                        runat="server" OnClick="DownloadFile">
   <img alt="Descargar" src="../img/download-icon.jpg" height="30" width="30"/>
                                                    </asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="lnkDelete" Text="Eliminar" CommandArgument='<%# Eval("Value") %>'
                                                        runat="server" OnClick="DeleteFile"> 
   <img alt="Eliminar" src="../img/elim-arch.png" height="25" width="25"/>
                                                    </asp:LinkButton>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <HeaderStyle BackColor="Gray" Font-Size="24px" ForeColor="White" Height="30px"></HeaderStyle>
                                        <AlternatingRowStyle BackColor="#EBEBEB"></AlternatingRowStyle>
                                    </asp:GridView>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
