
Imports System.Data
Imports System.Data.SqlClient
Partial Class PAG01



    Inherits System.Web.UI.Page
    Public con As SqlConnection
    Public sda As SqlDataAdapter
    Public dt As DataTable
    Public dt2 As DataTable
    Public dt3 As DataTable
    Public dtbA, dtbB, dtbciu, dtbpai As DataTable
    Public strSQL As String
    Public strSQL2 As String
    Public strSQL3 As String
    Public Usuario As String
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            Usuario = CStr(Session("CodigoMesero"))
            Dim cont As Integer
            Dim cont2 As Integer
            con = New SqlConnection(CStr(Session("sessStrCon")))
            con.Open()
            strSQL = "select 0 [Check], Codigo_Plato as [Codigo],[Nombre],[CI] as TotalVotos from[tbm_sugerirplato] where Estado='P' and CI <= 0"
            sda = New SqlDataAdapter(strSQL, con)
            dt = New DataTable()
            dt.Columns.Add("Check", Type.GetType("System.Boolean"))
            dt.Columns.Add("Codigo", Type.GetType("System.String"))
            dt.Columns.Add("Nombre", Type.GetType("System.String"))
            dt.Columns.Add("TotalVotos", Type.GetType("System.String"))

            sda.Fill(dt)


            'Cliente
            strSQL2 = "select 1 [Check], Codigo_Plato as [Codigo],[Nombre],[CI] as TotalVotos from tbm_sugerirplato where estado = 'P' and IdPersona in ('" & Usuario & "') and CI > 0"
            sda = New SqlDataAdapter(strSQL2, con)
            dt2 = New DataTable()
            dt2.Columns.Add("Check", Type.GetType("System.Boolean"))
            dt2.Columns.Add("Codigo", Type.GetType("System.String"))
            dt2.Columns.Add("Nombre", Type.GetType("System.String"))
            dt2.Columns.Add("TotalVotos", Type.GetType("System.String"))
            sda.Fill(dt2)


            con.Close()
            cont = dt.Rows.Count
            cont2 = dt2.Rows.Count
            dt.Merge(dt2)

            gridvPla.DataSource = dt
            gridvPla.DataBind()
        End If
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click

        Dim i As Integer
        Dim row As GridViewRow
        Dim ch As CheckBox
        Dim count As Integer = 0
        Usuario = CStr(Session("CodigoMesero"))
        For i = 0 To gridvPla.Rows.Count - 1
            row = gridvPla.Rows(i)
            If row.RowType = DataControlRowType.DataRow Then
                ch = row.FindControl("chkVoto")
                Dim valueCheck = ch.Checked
                If valueCheck Then
                    Dim valueCodigo As Label = TryCast(row.FindControl("lblCodigo"), Label)
                    Dim valueNombre As Label = TryCast(row.FindControl("lblNombre"), Label)
                    con = New SqlConnection(CStr(Session("sessStrCon")))
                    con.Open()
                    strSQL3 = "select * from [tbm_sugerirplato] where Codigo_Plato =" & valueCodigo.Text & " and IdPersona = " & Usuario & " and CI > 0"
                    sda = New SqlDataAdapter(strSQL3, con)
                    dt3 = New DataTable()
                    sda.Fill(dt3)
                    If dt3.Rows.Count <= 0 Then
                        strSQL = "select * from [tbm_sugerirplato] where Codigo_Plato =" & valueCodigo.Text
                        sda = New SqlDataAdapter(strSQL, con)
                        dt = New DataTable()
                        sda.Fill(dt)
                        Dim valor As Integer = Convert.ToInt32(dt.Rows(0)(5).ToString())
                        Dim nombre As String = dt.Rows(0)(2).ToString()
                        Dim observacion As String = dt.Rows(0)(3).ToString()
                        Dim resultado As Integer = valor + 1

                        strSQL = ""
                        strSQL = "INSERT INTO tbm_sugerirplato(Codigo_Plato, Nombre,  Observaciones, Fecha, Estado, IdPersona, CI)" &
                        " VALUES(" & valueCodigo.Text & ", '" & nombre & "' ,'" & observacion & "', '" & DateTime.Now.ToString("yyyy-MM-dd") &
                        "', 'V'," & Usuario & "," & 1 & ")"

                        Dim actualizar As New SqlCommand(strSQL, con)
                        count = actualizar.ExecuteNonQuery()
                        con.Close()
                        If count > 0 Then
                            MsgBox("Usted votó por el plato " & valueNombre.Text.TrimEnd() & " muchas gracias por apreciarnos...")
                        Else
                            MsgBox("No se actualizó ningún registro!!!")
                        End If
                    Else
                        MsgBox("Usted ya votó por el plato " & valueNombre.Text.TrimEnd() & ", sólo puede dar el voto una sola vez.")
                    End If
                End If
            End If
        Next

        For i = 0 To gridvPla.Rows.Count - 1
            row = gridvPla.Rows(i)
            If row.RowType = DataControlRowType.DataRow Then
                ch = row.FindControl("chkVoto")
                ch.Checked = False
            End If
        Next




    End Sub
    Protected Sub CheckBox2_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub

End Class
