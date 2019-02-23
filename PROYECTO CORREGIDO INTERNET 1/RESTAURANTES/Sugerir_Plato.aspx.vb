Imports System.Data
Imports System.Data.SqlClient
Imports System.IO


Partial Class Contactenos
    Inherits System.Web.UI.Page
    Public con As SqlConnection
    Public sda As SqlDataAdapter
    Public dset As DataSet

    Public dtbbusA, dtbbusB, dtbbusC, dtbape, dtbins, dtbpla, dtbcat As DataTable
    Public strSQL As String         'TEXTO DE SENTENCIAS SQL
    Public intCodPer As Integer

    Dim Usuario As String
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            con = New SqlConnection(CStr(Session("sessStrCon")))
            con.Open()
            strSQL = ""
            strSQL = "SELECT MAX(ISNULL(Codigo_Plato,0)) + 1 FROM tbm_sugerirplato"
            sda = New SqlDataAdapter(strSQL, con)
            dtbins = New DataTable
            sda.Fill(dtbins)
            If dtbins.Rows(0).Item(0).ToString() <> Nothing Then
                intCodPer = dtbins.Rows(0).Item(0)
            Else
                intCodPer = 1
            End If
            dtbins.Clear()

            If InsertarRegistro() Then
                MsgBox("Rergistrado Con éxito!!!")
            Else
                MsgBox("No se ha podido guardar el Registro\nCorrigalo y vuelva a intentar!!")
            End If

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
            con.Close()
        End Try

    End Sub

    Private Function InsertarRegistro() As Boolean
        Dim intNumFilIns As Integer = 0
        Dim ok As Boolean = False
        Dim dia As Integer = Today.Day
        Dim mes As Integer = Today.Month
        Dim anio As Integer = Today.Year
        Dim fecha As String = Trim(dia.ToString()) & "/" & Trim(mes.ToString()) & "/" & Trim(anio.ToString())
        Try
            strSQL = ""
            strSQL = "INSERT INTO tbm_sugerirplato(Codigo_Plato, Nombre,  Observaciones, Fecha, Estado, IdPersona, CI)" &
            " VALUES(" & intCodPer & ", '" & TxNombre.Text & "' ,'" & TxtObs.Text & "', '" & DateTime.Now.ToString("yyyy-MM-dd") &
            "', 'P'," & 0 & "," & 0 & ")"
            Dim InsertCommand As New SqlCommand(strSQL, con)
            intNumFilIns = InsertCommand.ExecuteNonQuery()

            If intNumFilIns > 0 Then
                ok = True
            Else
                ok = False
            End If
        Catch ex As Exception

        End Try
        Return ok
    End Function

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            Usuario = Session("CodigoMesero")

        End If
    End Sub
End Class
