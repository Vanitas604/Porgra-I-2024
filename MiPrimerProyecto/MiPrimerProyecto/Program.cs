
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    using System;

    namespace MiPrimerProyecto
    {
        class Program
        {
            static void Main()
            {
                string[] unidades = { "Pie Cuadrado", "Vara Cuadrada", "Yarda Cuadrada", "Metro Cuadrado", "Tareas", "Manzana", "Hectárea" };

                // Factores de conversión correctos basados en el Pie Cuadrado
                double[] factores = { 1, 1.43083, 9, 10.7639, 1111.111, 107639.1, 107639.1 };

                try
                {
                    Console.WriteLine("Seleccione la unidad de origen:");
                    MostrarOpciones(unidades);
                    int origen = Convert.ToInt32(Console.ReadLine());

                    Console.WriteLine("Seleccione la unidad de destino:");
                    MostrarOpciones(unidades);
                    int destino = Convert.ToInt32(Console.ReadLine());

                    Console.WriteLine("Ingrese el valor en " + unidades[origen - 1] + ":");
                    double valor = Convert.ToDouble(Console.ReadLine());

                    double resultado = ConvertirArea(valor, factores[origen - 1], factores[destino - 1]);
                    Console.WriteLine($"{valor} {unidades[origen - 1]} equivalen a {resultado:F6} {unidades[destino - 1]}");
                }
                catch (FormatException)
                {
                    Console.WriteLine("Error: Ingrese un valor numérico válido.");
                }
                catch (IndexOutOfRangeException)
                {
                    Console.WriteLine("Error: Seleccione una opción válida del menú.");
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Ocurrió un error inesperado: {ex.Message}");
                }
                finally
                {
                    // Pausar la consola antes de salir
                    Console.WriteLine("Presione cualquier tecla para salir...");
                    Console.ReadKey();
                }
            }

            static void MostrarOpciones(string[] opciones)
            {
                for (int i = 0; i < opciones.Length; i++)
                {
                    Console.WriteLine($"{i + 1}. {opciones[i]}");
                }
            }

            static double ConvertirArea(double valor, double factorOrigen, double factorDestino)
            {
                return (valor * factorOrigen) / factorDestino;
            }
        }
    }
}

class Program
{
    static void Main()
    {
        try
        {
            Console.WriteLine("Ingrese el monto de la actividad económica:");
            double monto = Convert.ToDouble(Console.ReadLine());
            double impuesto = CalcularImpuesto(monto);
            Console.WriteLine($"El impuesto a pagar es: ${impuesto:F2}");
        }
        catch (FormatException)
        {
            Console.WriteLine("Error: Ingrese un valor numérico válido.");
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Ocurrió un error: {ex.Message}");
        }
        finally
        {
            Console.WriteLine("Presione cualquier tecla para salir...");
            Console.ReadKey();  // Evita el cierre automático de la consola
        }
    }

    static double CalcularImpuesto(double monto)
    {
        double impuesto = 0;

        if (monto >= 0.01 && monto <= 500)
        {
            impuesto = 1.5;
        }
        else if (monto > 500 && monto <= 1000)
        {
            impuesto = 1.5 + ((monto - 500) / 1000 * 3);
        }
        else if (monto > 1000 && monto <= 2000)
        {
            impuesto = 3 + ((monto - 1000) / 1000 * 3);
        }
        else if (monto > 2000 && monto <= 3000)
        {
            impuesto = 6 + ((monto - 2000) / 1000 * 3);
        }
        else if (monto > 3000 && monto <= 6000)
        {
            impuesto = 9 + ((monto - 3000) / 1000 * 2);
        }
        else if (monto > 6000 && monto <= 8000)
        {
            impuesto = 15 + ((monto - 6000) / 1000 * 2);
        }
        else if (monto > 8000 && monto <= 18000)
        {
            impuesto = 19 + ((monto - 8000) / 1000 * 2);
        }
        else if (monto > 18000 && monto <= 30000)
        {
            impuesto = 39 + ((monto - 18000) / 1000 * 2);
        }
        else if (monto > 30000 && monto <= 60000)
        {
            impuesto = 63 + ((monto - 30000) / 1000 * 1);
        }
        else if (monto > 60000 && monto <= 100000)
        {
            impuesto = 93 + ((monto - 60000) / 1000 * 0.8);
        }
        else if (monto > 100000 && monto <= 200000)
        {
            impuesto = 125 + ((monto - 100000) / 1000 * 0.7);
        }
        else if (monto > 200000 && monto <= 300000)
        {
            impuesto = 195 + ((monto - 200000) / 1000 * 0.6);
        }
        else if (monto > 300000 && monto <= 400000)
        {
            impuesto = 255 + ((monto - 300000) / 1000 * 0.45);
        }
        else if (monto > 400000 && monto <= 500000)
        {
            impuesto = 300 + ((monto - 400000) / 1000 * 0.4);
        }
        else if (monto > 500000 && monto <= 1000000)
        {
            impuesto = 340 + ((monto - 500000) / 1000 * 0.3);
        }
        else if (monto > 1000000)
        {
            impuesto = 490 + ((monto - 1000000) / 1000 * 0.18);
        }

        return impuesto;
    }
}