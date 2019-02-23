<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="~/PAG1.aspx.vb" Inherits="PAG01" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style1 {width: 86%;}
        .auto-style8 {left: 0px;top: 0px;width: 97%;}
        .auto-style11 {
        width: 99%;
        font-size: medium;
    }
        div.a {
  text-align: center;
}

div.b {
  text-align: left;
}

div.c {
  text-align: right;
}

div.c {
  text-align: justify;
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
    .auto-style27 {
        left: 0px;
        top: 0px;
        width: 37%;
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
    <style>
        .grdContent
        {
            width: 80%;
            border: solid 2px black;
            min-width: 80%;
        }
        .header
        {
            background-color: #646464;
            font-family: Arial;
            color: White;
            border: none 0px transparent;
            height: 25px;
            text-align: left;
            font-size: 16px;
        }
        .rows
        {
            background-color: #fff;
            font-family: Arial;
            font-size: 14px;
            color: #000;
            min-height: 25px;
            text-align: left;
            border: none 0px transparent;
        }
        .rows:hover
        {
            background-color: #ff8000;
            font-family: Arial;
            color: #fff;
            text-align: left;
        }
        .selectedrow
        {
            background-color: #ff8000;
            font-family: Arial;
            color: #fff;
            font-weight: bold;
            text-align: left;
        }
        .mydatagrid a /** FOR THE PAGING ICONS  **/
         {
            background-color: Transparent;
            padding: 5px 5px 5px 5px;
            color: #fff;
            text-decoration: none;
            font-weight: bold;
        }
        .mygrdContent a:hover /** FOR THE PAGING ICONS  HOVER STYLES**/
        {
            background-color: #000;
            color: #fff;
        }
        .mygrdContent span /** FOR THE PAGING ICONS CURRENT PAGE INDICATOR **/
         {
            background-color: #c9c9c9;
            color: #000;
            padding: 5px 5px 5px 5px;
        }
        .pager
        {
            background-color: #646464;
            font-family: Arial;
            color: White;
            height: 30px;
            text-align: left;
        }
        .mygrdContent td
        {
            padding: 5px;
        }
        .mygrdContent th
        {
            padding: 5px;
        }
    </style> 
     <div class="row-bot">
        <div class="row-bot-bg">
            <div class="main">
                <h2>SUGERIR PLATO</h2>
            </div>
        </div>
    </div>
        
    <section id="content" class="auto-style8"><div class="ic"></div> 
        <div>
            <strong class="auto-style35"><span class="color-1">&nbsp;&nbsp;&nbsp; RestauranTES</span>.com</strong>
            <div>
                <asp:GridView ID="gridvPla" runat="server" AutoGenerateColumns="False" Width="100%" CssClass="mygrdContent" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True">
                            <Columns>
                                <asp:TemplateField HeaderText="Votos">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="chkVoto" runat="server" Checked='<%# Eval("Check") %>' OnLoad="CheckBox2_CheckedChanged " />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Código Plato">
                                    <ItemTemplate>
                                        <asp:Label ID="lblCodigo" runat="server" Text='<%# Eval("Codigo") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>         
                                <asp:TemplateField HeaderText="Nombre Plato">
                                    <ItemTemplate>
                                        <asp:Label ID="lblNombre" runat="server" Text='<%# Eval("Nombre") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>      
                                <%--<asp:TemplateField HeaderText="Total Votos">
                                    <ItemTemplate>
                                        <asp:Label ID="lblTotalVotos" runat="server" Text='<%# Eval("TotalVotos") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>      --%>                 
                            </Columns>
                        </asp:GridView>
            </div>
            <div>
                <asp:Button ID="Button2" runat="server" Text="Votar" CssClass="auto-style22" OnClick="Button2_Click" />
            </div>
        </div>       
        </section>

</asp:Content>
