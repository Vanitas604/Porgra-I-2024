using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MiPrimerProyecto {
    class Program {
        static void Main(string[] args) {
            //Uso de funciones...
            //ejercicio encontrar la media aritmetica y la desviación típica de una serie de números.

            int[] serie = new int[] { 1, 2, 3, 4, 5 };
            Console.WriteLine("La media aritmetica es: {0}, y la desviacion tipica es: {1}", media(serie), tipica(serie));
            Console.Write("Ingrese la serie de numeros separados por comas: ");
            String serie = Console.ReadLine();
            String[] numeros = serie.Split(',');

            Console.WriteLine("La media aritmetica es: {0}, y la desviacion tipica es: {1}", media(numeros), tipica(numeros));

            Console.ReadLine();
        }
        static double media(int[] serie) {
            static double media(string[] serie) {
                double media = 0;
                foreach (int num in serie) {
                    media += num;
                    foreach (string num in serie) {
                        media += int.Parse(num);
                    }
                    return media / serie.Length;
                }
                static double tipica(int[] serie) {
                    static double tipica(string[] serie) {
                        double tipica = 0,
                                m = media(serie);
                        foreach (int num in serie) {
                            tipica += Math.Pow(num - m, 2);
                            foreach (string num in serie) {
                                tipica += Math.Pow(int.Parse(num) - m, 2);
                            }
                            tipica = Math.Sqrt(tipica / serie.Length);
                            return Math.Round(tipica, 2);
                        }
                    }
                }
            }
        }
    }
}
