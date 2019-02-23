<%@ Page Title="" Language="VB" MasterPageFile="MasterPage.master" AutoEventWireup="false" CodeFile="Contactenos.aspx.vb" Inherits="Contactenos" %>
 <%--<style type="text/css">
        .auto-style1 {width: 86%;}
        .auto-style3 {width: 1170px;
        }
        .auto-style6 {width: 456px;height: 313px;}
        .auto-style8 {left: 0px;top: 0px;width: 97%;}
        .auto-style9 {
            width: 41%;
            left: 0px;
            top: 0px;
            height: 237px;
        font-size: medium;
    }
        .auto-style11 {
        width: 99%;
        font-size: medium;
    }
        .auto-style18 {
        width: 41%;
        left: 0px;
        top: 0px;
        height: 39px;
        font-size: medium;
    }
        .auto-style20 {
            width: 99%;
            height: 39px;
        }
        .auto-style21 {
            width: 69%;
            font-size: 13px;
            line-height: 25px;
            border: 4px inset #F2F2F2;
            margin: 0 auto;
            padding: 0;
            background-color: #FFFFFF;
        }
        .auto-style22 {
            margin-top: 0px;
        font-size: medium;
    }
        .auto-style23 {
        left: 0px;
        top: 0px;
        width: 41%;
        font-size: medium;
    }
        .auto-style24 {
            left: 0px;
            top: 0px;
            width: 37%;
        }
        .auto-style25 {
            width: 37%;
            left: 0px;
            top: 0px;
            height: 39px;
        }
    .auto-style26 {
        font-weight: normal;
        font-size: medium;
    }
    .auto-style27 {
        left: 0px;
        top: 0px;
        width: 37%;
        font-size: medium;
    }
    .auto-style28 {
        font-size: medium;
    }
        .auto-style31 {
            left: 0px;
            top: 0px;
            font-size: medium;
            height: 31px;
            color: #404040;
            text-align: center;
            background-color: #ED6004;
        }
        .auto-style32 {
            width: 41%;
            left: 0px;
            top: 0px;
            height: 10px;
            font-size: medium;
        }
        .auto-style33 {
            width: 37%;
            left: 0px;
            top: 0px;
            height: 10px;
        }
        .auto-style34 {
            width: 99%;
            height: 10px;
        }
        .auto-style35 {
            font-size: x-large;
        }
        .auto-style36 {
            width: 1170px;
            height: 542px;
        }
        .auto-style37 {
            height: 542px;
        }
    </style>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {width: 86%;}
        .auto-style3 {width: 1170px;
        }
        .auto-style6 {width: 456px;height: 313px;}
        .auto-style8 {left: 0px;top: 0px;width: 97%;}
        .auto-style9 {
            width: 41%;
            left: 0px;
            top: 0px;
            height: 237px;
        font-size: medium;
    }
        .auto-style11 {
        width: 99%;
        font-size: medium;
    }
        .auto-style18 {
        width: 41%;
        left: 0px;
        top: 0px;
        height: 39px;
        font-size: medium;
    }
        .auto-style20 {
            width: 99%;
            height: 39px;
        }
        .auto-style21 {
            width: 69%;
            font-size: 13px;
            line-height: 25px;
            border: 4px inset #F2F2F2;
            margin: 0 auto;
            padding: 0;
            background-color: #FFFFFF;
        }
        .auto-style22 {
            margin-top: 0px;
        font-size: medium;
    }
        .auto-style23 {
        left: 0px;
        top: 0px;
        width: 41%;
        font-size: medium;
    }
        .auto-style24 {
            left: 0px;
            top: 0px;
            width: 37%;
        }
        .auto-style25 {
            width: 37%;
            left: 0px;
            top: 0px;
            height: 39px;
        }
    .auto-style26 {
        font-weight: normal;
        font-size: medium;
    }
    .auto-style27 {
        left: 0px;
        top: 0px;
        width: 37%;
        font-size: medium;
    }
    .auto-style28 {
        font-size: medium;
    }
        .auto-style31 {
            left: 0px;
            top: 0px;
            font-size: medium;
            height: 31px;
            color: #404040;
            text-align: center;
            background-color: #ED6004;
        }
        .auto-style32 {
            width: 41%;
            left: 0px;
            top: 0px;
            height: 10px;
            font-size: medium;
        }
        .auto-style33 {
            width: 37%;
            left: 0px;
            top: 0px;
            height: 10px;
        }
        .auto-style34 {
            width: 99%;
            height: 10px;
        }
        .auto-style35 {
            font-size: x-large;
        }
        .auto-style36 {
            width: 1170px;
            height: 542px;
        }
        .auto-style37 {
            height: 542px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
                <h2>Dejanos un <span>Comentario</span></h2>

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div>
        <ajaxToolkit:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="2">
                <ajaxToolkit:TabPanel runat="server" HeaderText="TabPanel1" ID="TabPanel1">
                    <HeaderTemplate>
                        Sucursal Norte&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </HeaderTemplate>
                    <ContentTemplate>
                        <div>
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/images/restaurantes-.jpg" Height="276px" Width="726px" />
                        </div>                        
                        <div>
                            Av. Juan tanca Marengo km 12 Mz 1536 V8
                        </div>                        
                    </ContentTemplate>
                </ajaxToolkit:TabPanel>
                <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" HeaderText="TabPanel2">
                    <HeaderTemplate>
                        &nbsp;&nbsp; Sucursal Centro&nbsp;&nbsp;&nbsp;&nbsp;
                    </HeaderTemplate>
                    <ContentTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Restaurantes-para-festejar-el-15-de-septiembre_opt-1.jpg" Height="276px" Width="726px" />
                        <div>
                        Av 9 de Octubre y Chile mz 56 Sl 23
                        </div>
                    </ContentTemplate>
                </ajaxToolkit:TabPanel>
                <ajaxToolkit:TabPanel ID="TabPanel3" runat="server" HeaderText="TabPanel3">
                    <HeaderTemplate>
                        &nbsp; Sucursal Sur&nbsp;&nbsp;&nbsp;
                    </HeaderTemplate>
                    <ContentTemplate>
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/images/Restaurantes.png" Height="276px" Width="726px"/>
                        <div>
                            Av Portete 1525 solar 67<br />
                        </div>                        
                    </ContentTemplate>
                </ajaxToolkit:TabPanel>
            </ajaxToolkit:TabContainer>        
        <div>            
            <h3 style="padding-left:100px;" >Comentarios</h3>
            <table class="auto-style21">
                        <tr>
                        <td class="auto-style31" colspan="3">
                            <strong class="auto-style35"><span class="color-1">&nbsp;&nbsp;&nbsp; RestauranTES</span>.com</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style32"></td>
                        <td class="auto-style33"></td>
                        <td class="auto-style34">
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style18"><strong class="auto-style26"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Su nombre:</strong></strong></td>
                        <td class="auto-style25"><strong><asp:TextBox ID="TextBox2" onkeypress="return soloLetras(event);" runat="server" Width="200px" CssClass="auto-style28"></asp:TextBox>
                            </strong></td>
                        <td class="auto-style20">
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style18"><strong class="auto-style26"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Su correo:</strong></strong></td>
                        <td class="auto-style25"><strong><asp:TextBox ID="TextBox1" runat="server" Width="200px" CssClass="auto-style28"></asp:TextBox>
                            </strong>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Ingreso inválido" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="auto-style28"></asp:RegularExpressionValidator>
                            </td>
                        <td class="auto-style20">
                            </td>
                    </tr>
                    <tr>
                        <td class="auto-style9"><strong class="auto-style26"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Su mensaje:</strong></strong></td>
                        <td class="auto-style24"><strong><asp:TextBox ID="TextBox3" runat="server" Height="221px" TextMode="MultiLine" Width="339px" CssClass="auto-style28"></asp:TextBox>
                            </strong></td>
                        <td class="auto-style11">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style23">&nbsp;</td>
                        <td class="auto-style24">
                            <asp:Button ID="Button1" runat="server" Text="Enviar Comentario" CssClass="auto-style22" />
                        </td>
                        <td class="auto-style11">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style23">&nbsp;</td>
                        <td class="auto-style27">&nbsp;</td>
                        <td class="auto-style11">
                            &nbsp;</td>
                        
                    </tr>
                </table>
        </div>        
        <div>
            
                    <h3 style="padding-left:45px;">Nuestra Ubicación</h3>                    
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3987.012065478157!2d-79.91341298579437!3d-2.1490676377805813!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x902d6d78f7b7eaad%3A0x585b40469a7b2862!2sCentro+de+Estudios+Espiritu+Santo!5e0!3m2!1ses!2sec!4v1442807161039"  style="border:0;padding-left:50px;" class="auto-style6" ></iframe>
        </div>
        <div>
            <h6 style="padding-left:100px;" >Ecuador - Guayaquil</h6>
        </div>
        <div>
            <h6 style="padding-left:100px;" >Telefono:&nbsp;2316688 Ext. 16</h6>           
        </div>                    
                    
    </div>



    <%-- SE CORRIGIÓ TODO EL DISEÑO DE ESTA PÁGINA, YA QUE ESTABA PÉSIMA LA MAQUETACIÓN DE LA MISMA --%>

</asp:Content>


