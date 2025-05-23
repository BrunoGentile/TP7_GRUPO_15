<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SeleccionarSucursales.aspx.cs" Inherits="TP7_GRUPO_15.Ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style10 {
            width: 76px;
        }
        .auto-style12 {
            width: 53px;
        }
        .auto-style15 {
            width: 76px;
            height: 23px;
        }
        .auto-style16 {
            width: 53px;
            height: 23px;
        }
        .auto-style20 {
            height: 23px;
        }
        .auto-style23 {
            width: 76px;
            height: 174px;
        }
        .auto-style24 {
            width: 53px;
            height: 174px;
        }
        .auto-style28 {
            height: 174px;
        }
        .auto-style29 {
            width: 531px;
        }
        .auto-style30 {
            width: 531px;
            height: 23px;
        }
        .auto-style37 {
            width: 76px;
            height: 42px;
        }
        .auto-style38 {
            width: 53px;
            height: 42px;
        }
        .auto-style39 {
            height: 42px;
        }
        .auto-style42 {
            width: 531px;
            height: 51px;
        }
        .auto-style46 {
            width: 76px;
            height: 51px;
        }
        .auto-style47 {
            width: 53px;
            height: 51px;
        }
        .auto-style48 {
            height: 51px;
        }
        .auto-style51 {
            width: 531px;
            height: 30px;
        }
        .auto-style53 {
            width: 86px;
            height: 30px;
        }
        .auto-style54 {
            width: 76px;
            height: 30px;
        }
        .auto-style55 {
            width: 53px;
            height: 30px;
        }
        .auto-style56 {
            height: 30px;
        }
 
        .auto-style60 {
            height: 42px;
            width: 86px;
        }
        .auto-style61 {
            width: 86px;
        }
        .auto-style62 {
            width: 86px;
            height: 51px;
        }
        .auto-style63 {
            width: 86px;
            height: 23px;
        }
        .auto-style67 {
            width: 35px;
        }
        .auto-style68 {
            width: 35px;
            height: 51px;
        }
        .auto-style69 {
            width: 35px;
            height: 23px;
        }
        .auto-style70 {
            width: 21px;
        }
        .auto-style71 {
            width: 21px;
            height: 51px;
        }
        .auto-style72 {
            width: 21px;
            height: 23px;
        }
 
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td colspan="3">
                        <asp:HyperLink ID="hpListadoSucursales" runat="server" NavigateUrl="~/SeleccionarSucursales.aspx">Listado de sucursales</asp:HyperLink>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="hpMostrarSucursales" runat="server" NavigateUrl="~/ListadoSucursalesSeleccionados.aspx">Mostrar sucursales seleccionadas</asp:HyperLink>
                    </td>
                    <td class="auto-style61">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style29">&nbsp;</td>
                    <td class="auto-style67">&nbsp;</td>
                    <td class="auto-style70">&nbsp;</td>
                    <td class="auto-style61">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style46"></td>
                    <td class="auto-style47"></td>
                    <td class="auto-style42">
                        <asp:Label ID="lblListadoSucursales" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Listado de sucursales"></asp:Label>
                    </td>
                    <td class="auto-style68"></td>
                    <td class="auto-style71"></td>
                    <td class="auto-style62"></td>
                    <td class="auto-style48"></td>
                    <td class="auto-style48"></td>
                </tr>
                <tr>
                    <td class="auto-style54"></td>
                    <td class="auto-style55"></td>
                    <td class="auto-style51">
                        <asp:RegularExpressionValidator ID="revSucursales" runat="server" ControlToValidate="txtBuscarSucursal" ValidationExpression="^[a-zA-Z\s.]*$" ValidationGroup="1">no se aceptan caracteres acentuadas  </asp:RegularExpressionValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBuscarSucursal" ValidationGroup="1">ingrese una sucusal</asp:RequiredFieldValidator>
                    </td>
                    <td class="auto-style56" colspan="2">
                        <br />
                        <br />
                    </td>
                    <td class="auto-style53"></td>
                    <td class="auto-style56"></td>
                    <td class="auto-style56"></td>
                </tr>
                <tr>
                    <td class="auto-style37"></td>
                    <td class="auto-style38"></td>
                    <td colspan="3" class="auto-style39">
                        <asp:Label ID="lblBusquedaSucursal" runat="server" Text="Búsqueda por nombre de sucursal:"></asp:Label>
                        <asp:TextBox ID="txtBuscarSucursal" runat="server" Width="221px" ValidationGroup="1"></asp:TextBox>
                        <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" ValidationGroup="1" />
                    </td>
                    <td class="auto-style60">
                        <br />
                    </td>
                    <td class="auto-style39"></td>
                    <td class="auto-style39"></td>
                </tr>
                <tr>
                    <td class="auto-style15"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style30"></td>
                    <td class="auto-style69">
                        <asp:Button ID="btnOrdenDescendente" runat="server"  Text="Orden descendente" Width="139px" OnClick="btnOrdenDescendente_Click" />
                    </td>
                    <td class="auto-style72">&nbsp;</td>
                    <td class="auto-style63">
                        <asp:Button ID="btnOrdenXDefecto" runat="server" Text="Orden por defecto" Width="121px" OnClick="btnOrdenXDefecto_Click" />
                    </td>
                    <td class="auto-style20"></td>
                    <td class="auto-style20"></td>
                </tr>
                <tr>
                    <td class="auto-style23">
                        <asp:DataList ID="DataListSucursales" runat="server" DataSourceID="SqlDataSourceSucursales" OnItemCommand="btnProvincias_Command" Font-Bold="True" Font-Size="Large">
                            <ItemTemplate>
                                <asp:Button ID="btnProvincias" runat="server" Text='<%# Eval("DescripcionProvincia") %>' CommandArgument='<%# Eval("Id_Provincia") %>' CommandName="filtrarProvincia" />
                                <br />
                            </ItemTemplate>
                        </asp:DataList>
                    </td>
                    <td class="auto-style24"></td>
                    <td class="auto-style28" colspan="4">
                        <asp:ListView ID="ListViewSucursales" runat="server" GroupItemCount="3" DataKeyNames="Id_Sucursal" OnPagePropertiesChanging="ListViewSucursales_PagePropertiesChanging">
                        <%--   
                            <AlternatingItemTemplate>
                                <td runat="server" style="background-color: #FAFAD2;color: #284775;">Id_Sucursal:
                                    <asp:Label ID="Id_SucursalLabel" runat="server" Text='<%# Eval("Id_Sucursal") %>' />
                                    <br />
                                    NombreSucursal:
                                    <asp:Label ID="NombreSucursalLabel" runat="server" Text='<%# Eval("NombreSucursal") %>' />
                                    <br />
                                    DescripcionSucursal:
                                    <asp:Label ID="DescripcionSucursalLabel" runat="server" Text='<%# Eval("DescripcionSucursal") %>' />
                                    <br />
                                    URL_Imagen_Sucursal:
                                    <asp:Label ID="URL_Imagen_SucursalLabel" runat="server" Text='<%# Eval("URL_Imagen_Sucursal") %>' />
                                    <br />
                                </td>
                            </AlternatingItemTemplate>
                            --%>
                            <EditItemTemplate>
                                <td runat="server" style="background-color: #FFCC66;color: #000080;">Id_Sucursal:
                                    <asp:Label ID="Id_SucursalLabel1" runat="server" Text='<%# Eval("Id_Sucursal") %>' />
                                    <br />NombreSucursal:
                                    <asp:TextBox ID="NombreSucursalTextBox" runat="server" Text='<%# Bind("NombreSucursal") %>' />
                                    <br />DescripcionSucursal:
                                    <asp:TextBox ID="DescripcionSucursalTextBox" runat="server" Text='<%# Bind("DescripcionSucursal") %>' />
                                    <br />
                                    URL_Imagen_Sucursal:
                                    <asp:TextBox ID="URL_Imagen_SucursalTextBox" runat="server" Text='<%# Bind("URL_Imagen_Sucursal") %>' />
                                    <br />
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                                    <br />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
                                    <br />
                                </td>
                            </EditItemTemplate>
                            <EmptyDataTemplate>
                                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                    <tr>
                                        <td>No se han devuelto datos.</td>
                                    </tr>
                                </table>
                            </EmptyDataTemplate>
                            <EmptyItemTemplate>
<td runat="server" />
                            </EmptyItemTemplate>
                            <GroupTemplate>
                                <tr id="itemPlaceholderContainer" runat="server">
                                    <td id="itemPlaceholder" runat="server"></td>
                                </tr>
                            </GroupTemplate>
                            <InsertItemTemplate>
                                <td runat="server" style="">NombreSucursal:
                                    <asp:TextBox ID="NombreSucursalTextBox" runat="server" Text='<%# Bind("NombreSucursal") %>' />
                                    <br />DescripcionSucursal:
                                    <asp:TextBox ID="DescripcionSucursalTextBox" runat="server" Text='<%# Bind("DescripcionSucursal") %>' />
                                    <br />URL_Imagen_Sucursal:
                                    <asp:TextBox ID="URL_Imagen_SucursalTextBox" runat="server" Text='<%# Bind("URL_Imagen_Sucursal") %>' />
                                    <br />
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                                    <br />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                                    <br /></td>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <td runat="server" style="padding: 15px;">
                                    <div style="border: 1px solid #ccc; border-radius: 8px; background-color: #ffffff; box-shadow: 0 2px 5px rgba(0,0,0,0.1); padding: 10px; text-align: center; width: 200px; height: 100%; display: flex; flex-direction: column; justify-content: space-between;">
                                        <asp:Label ID="NombreSucursalLabel" runat="server" Text='<%# Eval("NombreSucursal") %>' />
                                        <asp:Image ID="ImageButton1" runat="server"
                                            ImageUrl='<%# Eval("URL_Imagen_Sucursal") %>'
                                            Style="max-width: 100%; height: 100px; object-fit: contain; margin: 10px 0;" />
                                        <asp:Label ID="DescripcionSucursalLabel" runat="server"
                                            Text='<%# Eval("DescripcionSucursal") %>'
                                            Style="font-size: 13px; margin-bottom: 10px; height: 60px; overflow: hidden; display: block;" />
                                        <asp:Button ID="btnSeleccionar" runat="server" Text="Seleccionar"
                                            Style="background-color: #007bff; color: white; border: none; padding: 6px 10px; border-radius: 4px; cursor: pointer; font-size: 13px;" CommandArgument='<%# Eval("Id_Sucursal") + ";" + Eval("NombreSucursal") + ";" + Eval("DescripcionSucursal") %>' CommandName="Seleccionar" OnCommand="btnSeleccionar_Command" />
                                    </div>
                                </td>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table runat="server" style="width: 100%; border-collapse: collapse;">
                                    <tr runat="server">
                                        <td runat="server" style="text-align: center;">
                                            <table id="groupPlaceholderContainer" runat="server" style="margin: auto; border-collapse: separate; border-spacing: 20px;">
                                                <tr id="groupPlaceholder" runat="server">
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr runat="server">
                                        <td runat="server" style="text-align: center; background-color: #f1f1f1; padding: 10px;">
                                            <asp:DataPager ID="DataPager1" runat="server" PageSize="6">
                                                <Fields>
                                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                    <asp:NumericPagerField />
                                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                </Fields>
                                            </asp:DataPager>
                                        </td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                            <SelectedItemTemplate>
                                <td runat="server" style="background-color: #FFCC66;font-weight: bold;color: #000080;">Id_Sucursal:
                                    <asp:Label ID="Id_SucursalLabel" runat="server" Text='<%# Eval("Id_Sucursal") %>' />
                                    <br />NombreSucursal:
                                    <asp:Label ID="NombreSucursalLabel" runat="server" Text='<%# Eval("NombreSucursal") %>' />
                                    <br />DescripcionSucursal:
                                    <asp:Label ID="DescripcionSucursalLabel" runat="server" Text='<%# Eval("DescripcionSucursal") %>' />
                                    <br />URL_Imagen_Sucursal:
                                    <asp:Label ID="URL_Imagen_SucursalLabel" runat="server" Text='<%# Eval("URL_Imagen_Sucursal") %>' />
                                    <br />
                                </td>
                            </SelectedItemTemplate>
                        </asp:ListView>
                    </td>
                    <td class="auto-style28"></td>
                    <td class="auto-style28"></td>
                </tr>
                <tr>
                    <td class="auto-style15"></td>
                    <td class="auto-style16"></td>
                    <td class="auto-style30">
                        <asp:SqlDataSource ID="SqlDataSourceSucursales" runat="server" ConnectionString="<%$ ConnectionStrings:BDSucursalesConnectionString2 %>" SelectCommand="SELECT [DescripcionProvincia], [Id_Provincia] FROM [Provincia]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style69"></td>
                    <td class="auto-style72"></td>
                    <td class="auto-style63"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style20"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
