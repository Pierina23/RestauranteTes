<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="PagEstadoPed.aspx.vb" Inherits="PagEstadoPed" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
            height: 243px;
        }
        .auto-style4 {
            height: 26px;
            left: 0px;
            top: 0px;
            width: 84%;
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <div class="row-bot">
            <div class="row-bot-bg">
                <div class="main">
                	<h2>&nbsp;Estado de Su Pedido</h2>
                    <br />                                      
                </div>
            </div>
        </div>        
            <div style="width: 100%; overflow: auto;">
                    <asp:GridView ID="griConsul" runat="server" CssClass="GridViewStyle"
                        HeaderStyle-CssClass="gridhdr" RowStyle-CssClass="RowStyle" AlternatingRowStyle-CssClass="gridalt"
                        HeaderStyle-Wrap="true" RowStyle-Wrap="false" AutoGenerateColumns="true" AllowPaging="false"
                        Width="100%" 
                        AllowSorting="true" >
                         
                    </asp:GridView>
                </div>
    </div>
</asp:Content>

