import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

//Alumno: Norberto Hernández Cárdenas

public class Programa3 {

    public static void main(String[] args) {
        String rutaArchivo = "C:\\Users\\NorJr\\Desktop\\texto.txt";
        String texto_completo;
        String[] lexemas;
        int num_espacios;
        int palabras = 0;
        int enteros = 0;
        int compuestos = 0;
        boolean isNum;
        boolean isChar;
        //String rutaArchivo = "\\texto.txt";
        
        texto_completo = leerArchivo(rutaArchivo);
        
        lexemas = texto_completo.split("\\s+");
        num_espacios = texto_completo.split(" ").length;
        //lexemas = texto_completo.split(" ");
        
        for(String cadenas: lexemas){
            isNum=false;
            isChar=false;
            for(char c: cadenas.toCharArray()){
                if(Character.isDigit(c))
                    isNum=true;
                if(Character.isLetter(c))
                    isChar=true;
            }
            if(!isNum && isChar)
                palabras+=1;
            else if(isNum && !isChar)
                enteros+=1;
            else if(isNum && isChar)
                compuestos+=1;
        }
        
        System.out.println("Total de caracteres (con espacios): "+texto_completo.length());
        System.out.println("Total de caracteres (sin espacios): "+(texto_completo.length()-num_espacios));
        System.out.println("Total de lexemas: "+lexemas.length);
        System.out.println("Total de palabras: "+palabras);
        System.out.println("Total de números: "+enteros);
        System.out.println("Total de combinadas: "+compuestos);
        //System.out.println(contenido);
    }

    public static String leerArchivo(String rutaArchivo) {
        StringBuilder contenido = new StringBuilder();

        try (BufferedReader br = new BufferedReader(new FileReader(rutaArchivo))) {
            String linea;
            while ((linea = br.readLine()) != null) {
                contenido.append(linea).append("\n");
            }
        } catch (IOException e) {
            System.err.println("Error al leer el archivo: " + e.getMessage());
        }
        return contenido.toString();
    }
}