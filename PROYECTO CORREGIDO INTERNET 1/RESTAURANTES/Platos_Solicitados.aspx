<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Platos_Solicitados.aspx.vb" Inherits="Contactenos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {width: 86%;}
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
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="row-bot">
        <div class="row-bot-bg">
            <div class="main">
                <h2>PLATOS MAS SOLICITADOS</h2>
            </div>
        </div>
    </div>
        
    <section id="content" class="auto-style8"><div class="ic"></div> 
        <table style="width:100%;">
                    
            <tr>
                 <td> 
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
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style25">
                            <asp:gridview ID="gridvPla" runat="server" 

                            AutoGenerateColumns="False" CellPadding="5" 

                            CssClass="grdData" ForeColor="#333333" 
                                DataKeyNames="Codigo"
                             Width="800">
                                        <alternatingrowstyle BackColor="White" 

                                        ForeColor="#284775"></alternatingrowstyle>
                                        <columns>
                                            <asp:templatefield HeaderText="Dar alta">
                                                 <ItemTemplate>
                                                <asp:CheckBox ID="chkid" runat="server"  />
                                                </ItemTemplate>
                                            </asp:templatefield>
                                            <asp:boundfield DataField="Codigo" HeaderStyle-HorizontalAlign="left" ItemStyle-HorizontalAlign="Justify"

                                            HeaderText="Codigo"></asp:boundfield>
                                            <asp:boundfield DataField="Nombre" HeaderStyle-HorizontalAlign="left" ItemStyle-HorizontalAlign="Justify"

                                            HeaderText="Nombre"></asp:boundfield>
                                            <asp:boundfield DataField="Estado" HeaderStyle-HorizontalAlign="left" ItemStyle-HorizontalAlign="Justify"

                                            HeaderText="Estado"></asp:boundfield>
                                            <asp:boundfield DataField="Fecha" HeaderStyle-HorizontalAlign="left" ItemStyle-HorizontalAlign="Justify"

                                            HeaderText="Fecha"></asp:boundfield>
                                            <asp:boundfield DataField="CI" HeaderStyle-HorizontalAlign="left" ItemStyle-HorizontalAlign="Justify"

                                            HeaderText="Cantidad Votos"></asp:boundfield>
                                        </columns>
                                        <editrowstyle BackColor="#999999"></editrowstyle>
                                        <footerstyle BackColor="#5D7B9D" Font-Bold="True" 

                                        ForeColor="White"></footerstyle>
                                        <headerstyle BackColor="#5D7B9D" Font-Bold="True" 

                                        ForeColor="White"></headerstyle>
                                        <pagerstyle BackColor="#284775" ForeColor="White" 

                                        HorizontalAlign="Center"></pagerstyle>
                                        <rowstyle BackColor="#F7F6F3" ForeColor="#333333"></rowstyle>
                                        <selectedrowstyle BackColor="#E2DED6" Font-Bold="True" 

                                        ForeColor="#333333"></selectedrowstyle>
                                        <sortedascendingcellstyle BackColor="#E9E7E2"></sortedascendingcellstyle>
                                        <sortedascendingheaderstyle BackColor="#506C8C"></sortedascendingheaderstyle>
                                        <sorteddescendingcellstyle BackColor="#FFFDF8"></sorteddescendingcellstyle>
                                        <sorteddescendingheaderstyle BackColor="#6F8DAE"></sorteddescendingheaderstyle>
                </asp:gridview>
                          
                        </td>
                        <td class="auto-style20">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style23">&nbsp;</td>
                        <td class="auto-style24">
                            <asp:Button ID="Button1" runat="server" Text="PUBLICAR PLATOS" CssClass="auto-style22" />
                        </td>
                        <td class="auto-style11">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style23">&nbsp;</td>
                        <td class="auto-style27">
                            &nbsp;</td>
                        <td class="auto-style11">
                            &nbsp;</td>
                        
                    </tr>
                </table>
            </td>
        </tr>
        
    </table>
        <br />
    <br />
    <br />
        </section>
    
</asp:Content>

