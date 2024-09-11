using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MiPrimerProyecto {

    internal class Program {
        static void Main() {
            Conversores objConversor = new Conversores();
            String continuar = "s";
            while (continuar == "s")
            {
                Console.WriteLine("::.. MENU ..::");
                Console.WriteLine("1. Monedas.");
                Console.WriteLine("2. Longitud.");
                Console.WriteLine("3. Masa.");
                Console.WriteLine("4. Tiempo.");
                Console.WriteLine("0. Salir.");
                Console.Write("Opcion: ");
                int opcion = int.Parse(Console.ReadLine());

                if (opcion == 0) {
                    continuar = "n";
                } else {
                    Console.Clear();
                    for (int i = 1; i <objConversor.etiquetas[opcion].Length; i++) {
                        Console.WriteLine("{0}. {1}", i, objConversor.etiquetas[opcion][i]);
                    }
                    Console.Write("De: ");
                    int de = int.Parse(Console.ReadLine());

                    Console.Write("A: ");
                    int a = int.Parse(Console.ReadLine());

                    Console.Write("Cantidad: ");
                    double cantidad = double.Parse(Console.ReadLine());

                    Console.WriteLine("{0} \n", objConversor.convertir(de-1, a-1, cantidad, opcion));
                }
            }
        }
    }
}