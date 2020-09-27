package Main;

import javax.servlet.http.HttpServlet;

/**
 *
 * @author aguare
 */
public class Calculadora extends HttpServlet{
    
    
    
    public double suma(double a, double b){
        return a + b;
    }
    
    public double resta(double a, double b){
        return a - b;
    }
    
    public double multiplicacion(double a, double b){
        return a * b;
    }
    
    public double division(double a, double b){
        if (b == 0) {
            return 0;
        }else{
            return a/b;
        }
    }
    
    public double obtenerMayor(double a, double b){
        if (a > b) {
            return a;
        }else{
            return b;
        }
    }
    
    public double potencia(double a, double b){
        return Math.pow(a, b);
    }
    
    public String obtenerBinarios(double a, double b){
        String binario1 = Long.toBinaryString((long) a);
        String binario2 = Long.toBinaryString((long) b);
        return "#1 = "+binario1+"\n"+"#2 = "+ binario2+"\n";
    }
}
