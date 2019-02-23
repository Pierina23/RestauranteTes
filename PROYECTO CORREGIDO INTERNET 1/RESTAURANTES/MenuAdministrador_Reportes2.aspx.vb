
Partial Class MenuAdministrador_Reportes2
    Inherits System.Web.UI.Page


    Public Sub cargarDatos()

        Dim strCon As String
        strCon = ""
        If cbopersona.SelectedIndex > 0 Then
            strCon += "idRol={0}"

        End If
        SqlDataSource2.FilterExpression = IIf(strCon.Equals(""), Nothing, strCon)
    End Sub

    Protected Sub btnBuscar_Click(sender As Object, e As EventArgs) Handles btnBuscar.Click
        cargarDatos()
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            SqlDataSource2.ConnectionString = Session("sessStrCon")
            SqlDataSource2.SelectCommand = "SELECT tbm_Personas.IdPersona, tbm_Personas.Nombres, tbm_Personas.Apellidos, tbm_Personas.CI, tbm_Personas.id_rol, tbm_Rol.description FROM tbm_Personas INNER JOIN tbm_Rol ON tbm_Personas.id_rol = tbm_Rol.idRol"
            SqlDataSource1.ConnectionString = Session("sessStrCon")
            SqlDataSource1.SelectCommand = "SELECT [idRol], [description] FROM [tbm_Rol]"
        End If
    End Sub
End Class
