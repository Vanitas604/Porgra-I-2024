Imports System.Data
Imports System.Data.SqlClient

Public Class Mascotas
    Inherits System.Web.UI.Page

    ' Este método se ejecuta al cargar la página
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            CargarMascotas() ' Llama a la función para cargar las mascotas al cargar la página
        End If
    End Sub

    Private Sub CargarMascotas()
        ' Llama a la función para cargar las mascotas desde la base de datos
        CargarMascotas(repeaterMascotas)
    End Sub

    ' Función para cargar las mascotas desde la base de datos
    Private Sub CargarMascotas(repeaterMascotas As Repeater)
        ' Obtiene la cadena de conexión desde el archivo web.config
        Dim connectionString As String = System.Configuration.ConfigurationManager.ConnectionStrings("TuConexion")?.ConnectionString

        ' Verifica si la cadena de conexión es válida
        If String.IsNullOrEmpty(connectionString) Then
            Response.Write("Error: La cadena de conexión no está configurada correctamente.")
            Return
        End If

        ' Conexión a la base de datos
        Using conn As New SqlConnection(connectionString)
            Try
                ' Comando SQL para seleccionar los datos de las mascotas, incluyendo Especie
                Dim cmd As New SqlCommand("SELECT MascotaID, Nombre, Edad, Raza, Especie, Descripcion, ImagenUrl FROM Mascotas", conn)
                conn.Open()

                ' Ejecuta la consulta y carga los datos en una tabla
                Dim reader As SqlDataReader = cmd.ExecuteReader()
                Dim mascotas As New DataTable()
                mascotas.Load(reader)

                ' Asigna los datos al Repeater en la página ASPX
                repeaterMascotas.DataSource = mascotas
                repeaterMascotas.DataBind()
            Catch ex As Exception
                ' Manejo de errores: muestra un mensaje de error en la página
                Response.Write("Error al cargar las mascotas: " & ex.Message)
            End Try
        End Using
    End Sub
End Class
