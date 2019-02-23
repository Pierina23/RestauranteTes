Imports System.Data
Imports System.Data.SqlClient
Imports System.IO


Partial Class Contactenos
    Inherits System.Web.UI.Page
    Public con As SqlConnection
    Public sda As SqlDataAdapter
    Public dt As DataTable
    Public dtbA, dtbB, dtbciu, dtbpai As DataTable
    Public strSQL As String
    Public strSQL2 As String
    Public strSQL3 As String

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            Dim cont As Integer
            con = New SqlConnection(CStr(Session("sessStrCon")))
            con.Open()
            strSQL = "select 'False', Codigo_Plato as [Codigo],[Nombre],[Estado],[Fecha], [CI] from[tbm_sugerirplato] where Estado='P' order by CI desc"
            sda = New SqlDataAdapter(strSQL, con)
            dt = New DataTable()
            dt.Columns.Add("Check", Type.GetType("System.Boolean"))
            dt.Columns.Add("Codigo", Type.GetType("System.String"))
            dt.Columns.Add("Nombre", Type.GetType("System.String"))
            dt.Columns.Add("Estado", Type.GetType("System.String"))
            dt.Columns.Add("Fecha", Type.GetType("System.DateTime"))
            dt.Columns.Add("CI", Type.GetType("System.String"))
            sda.Fill(dt)
            con.Close()
            cont = dt.Rows.Count
            gridvPla.DataSource = dt
            gridvPla.DataBind()
        End If

    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim count As Integer = 0
        For Each row As GridViewRow In gridvPla.Rows
            Dim chkcheck As CheckBox = DirectCast(row.FindControl("chkid"), CheckBox)
            If chkcheck.Checked Then
                Dim codigo As String = row.Cells(1).Text
                Dim nombre As String = row.Cells(2).Text.Trim()
                con = New SqlConnection(CStr(Session("sessStrCon")))
                con.Open()
                strSQL2 = "select MAX(IdPlato) + 1 from [tbm_Platos]"
                sda = New SqlDataAdapter(strSQL2, con)
                dt = New DataTable()
                sda.Fill(dt)
                Dim maximo As String = dt.Rows(0)(0).ToString()
                strSQL = "INSERT INTO tbm_Platos(IdPlato, Nombre, Estado, CreadoDate, CreadoPor, IdPlatCat) "
                strSQL = strSQL & " VALUES(" & maximo & ",'" & nombre & "','" & "A" & "','" & DateTime.Now.Date.ToString("yyyy-MM-dd") & "','" & "Plato Sugerido" & "'," & "3" & ")"
                Dim insertar As New SqlCommand(strSQL, con)
                count = insertar.ExecuteNonQuery()
                strSQL3 = "UPDATE [tbm_sugerirplato] set Estado = 'A' where Codigo_Plato = " & codigo
                Dim actu As New SqlCommand(strSQL3, con)
                count = actu.ExecuteNonQuery()
                con.Close()
            End If
        Next

        If count > 0 Then
            MsgBox("Plato agregado con éxito!!!")
        Else
            MsgBox("Plato no se agregó!!!")
        End If

        Dim cont As Integer
        con = New SqlConnection(CStr(Session("sessStrCon")))
        con.Open()
        strSQL = "select 'False', Codigo_Plato as [Codigo],[Nombre],[Estado],[Fecha], [CI] from[tbm_sugerirplato] where Estado='P' order by CI desc"
        sda = New SqlDataAdapter(strSQL, con)
        dt = New DataTable()
        dt.Columns.Add("Check", Type.GetType("System.Boolean"))
        dt.Columns.Add("Codigo", Type.GetType("System.String"))
        dt.Columns.Add("Nombre", Type.GetType("System.String"))
        dt.Columns.Add("Estado", Type.GetType("System.String"))
        dt.Columns.Add("Fecha", Type.GetType("System.DateTime"))
        dt.Columns.Add("CI", Type.GetType("System.String"))
        sda.Fill(dt)
        con.Close()
        cont = dt.Rows.Count
        gridvPla.DataSource = dt
        gridvPla.DataBind()

    End Sub
End Class
