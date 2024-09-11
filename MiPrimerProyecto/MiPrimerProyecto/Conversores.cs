using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MiPrimerProyecto
{
    class Conversores {
        double[][] valores = new double[][] {
            new double[]{},//vacio solo para comenzar en 1
            new double[] {1,7.73,24.76,36.80,517.08,8.75,0.9},//monedas
            new double[] {1,100,39.37,3.2884,1.196308,1.09361,0.001},//longitud
            new double[]{1,453.592,16,0.453592,0.00446429},//masa
            new double[]{1,86400, 1440, 24, 0.142857,0.032876643423, 0.0027397232876831892345},//Tiempo
        };
        public String[][] etiquetas = new String[][]{
            new string[] { },//vacio solo para comenzar en 1
            new string[] {"","Dolar","Quetzal","Lempira","Cordoba","Colon CR","Colon SV","Euro"},//Monedas
            new string[] {"","Metro","Cm","Pulgada","Pie","Vara","Yarda","Km"},//Longitud
            new string[] {"","Libra","Gramo","Onza","CKilogramo","Tonelada Larga"},//Masa
            new string[] {"","Dia","Sg","Min","Horas","Semana","Mes","Año"},
        };
        public double convertir(int de, int a, double cantidad, int opcion) {
            return valores[opcion][a] / valores[opcion][de] * cantidad;

        }
    }
}
