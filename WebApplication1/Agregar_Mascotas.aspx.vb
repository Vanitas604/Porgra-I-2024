Imports System.Data.SqlClient

Partial Class Agregar_Mascotas
    Inherits System.Web.UI.Page

    ' Cadena de conexión a la base de datos
    Dim connectionString As String = "Data Source=DESKTOP-1SF5QKF\SQLEXPRESS;Initial Catalog=AdopcionMascotas;Integrated Security=True"

    Protected Sub btnAgregar_Click(sender As Object, e As EventArgs)
        ' Obtener los datos del formulario
        Dim nombre As String = txtNombre.Text.Trim()
        Dim edad As String = txtEdad.Text.Trim()  ' Guardamos la edad como texto
        Dim raza As String = txtRaza.Text.Trim()
        Dim especie As String = txtEspecie.Text.Trim()  ' Obtener el valor de especie
        Dim descripcion As String = txtDescripcion.Text.Trim()
        Dim imagenUrl As String = txtImagenUrl.Text.Trim()

        ' Validar los campos
        If String.IsNullOrEmpty(nombre) OrElse String.IsNullOrEmpty(edad) OrElse String.IsNullOrEmpty(raza) OrElse String.IsNullOrEmpty(descripcion) OrElse String.IsNullOrEmpty(especie) Then
            lblMensaje.Text = "Todos los campos son obligatorios."
            lblMensaje.ForeColor = System.Drawing.Color.Red
            Return
        End If

        ' Insertar los datos en la base de datos
        Dim query As String = "INSERT INTO mascotas (Nombre, Edad, Raza, Especie, Descripcion, ImagenUrl) VALUES (@Nombre, @Edad, @Raza, @Especie, @Descripcion, @ImagenUrl)"
        Using connection As New SqlConnection(connectionString)
            connection.Open()

            Using command As New SqlCommand(query, connection)
                command.Parameters.AddWithValue("@Nombre", nombre)
                command.Parameters.AddWithValue("@Edad", edad)  ' Guardamos la edad como texto
                command.Parameters.AddWithValue("@Raza", raza)
                command.Parameters.AddWithValue("@Especie", especie)  ' Agregar especie
                command.Parameters.AddWithValue("@Descripcion", descripcion)
                command.Parameters.AddWithValue("@ImagenUrl", If(String.IsNullOrEmpty(imagenUrl), DBNull.Value, imagenUrl))

                ' Ejecutar la consulta
                command.ExecuteNonQuery()

                lblMensaje.Text = "La mascota se ha agregado correctamente."
                lblMensaje.ForeColor = System.Drawing.Color.Green

                ' Limpiar los campos
                LimpiarCampos()
            End Using
        End Using
    End Sub

    ' Función para limpiar los campos del formulario
    Private Sub LimpiarCampos()
        txtNombre.Text = ""
        txtEdad.Text = ""
        txtRaza.Text = ""
        txtEspecie.Text = ""  ' Limpiar campo de especie
        txtDescripcion.Text = ""
        txtImagenUrl.Text = ""
    End Sub
End Class










