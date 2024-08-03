using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MiPrimerProyecto
{
    class Program
    {
        static void Main(string[] args) {
            Boolean comprobar = true;
            Console.WriteLine("El valor es:{0}");
            //Prioridad de los peradores aritmeticos.
            //Se pone el sufijo m para la division con decimales.
            decimal respuesta = 5 + 8 - 2 * 4 + 1; //14.75 valor incorrecto 11.5 -> Valor correcto
            Console.WriteLine("La respuesta es:{0}", respuesta);

            Console.WriteLine("Nombre:");
            string nombre = Console.ReadLine();

            Console.WriteLine("Hola {0} bienvenido", nombre);

            DateTime fechaActual = new DateTime();
            fechaActual = DateTime.Now;
            Console.WriteLine("La fecha actual es: {0}", fechaActual);
            Console.WriteLine("La division de 5/4 es {0}", 5 / 4);
            //Pausa.
            Console.ReadLine();
        }
}
