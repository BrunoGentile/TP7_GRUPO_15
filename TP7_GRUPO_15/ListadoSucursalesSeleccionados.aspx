<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoSucursalesSeleccionados.aspx.cs" Inherits="TP7_GRUPO_15.ListadoSucursalesSeleccionados" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 394px;
        }
        .auto-style3 {
            height: 137px;
        }
        .auto-style4 {
            width: 394px;
            height: 137px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">
                        <asp:HyperLink ID="hl_ListadoSucursales" runat="server" NavigateUrl="SeleccionarSucursales.aspx">Listado de sucursales</asp:HyperLink>
                    </td>
                    <td>
                        <asp:HyperLink ID="hl_MostrarSucursalesSelec" runat="server" NavigateUrl="ListadoSucursalesSeleccionados.aspx">Mostrar sucursales seleccionadas</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="Mostrar sucursales seleccionadas" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style4">
                        <asp:GridView ID="gvSucursalesSeleccionadas" runat="server" Width="479px" AutoGenerateColumns="False">
                            <Columns>
                                <asp:TemplateField HeaderText="ID_SUCURSAL">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_idSucursal" runat="server" Text='<%# Bind("Id_Sucursal") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="NOMBRE">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_nombre" runat="server" Text='<%# Bind("NOMBRE") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="DESCRIPCION">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_it_descripcion" runat="server" Text='<%# Bind("Descripcion") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="btnEliminarSeleccion" runat="server" OnClick="btnEliminarSeleccion_Click" Text="Eliminar seleccionadas" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
