import java.util.Scanner;

//Alumno: Norberto Hernández Cárdenas

public class Programa2 {
    public static void main(String[] args) {
        String cadena;
        
        boolean isNum;
        boolean isChar;
        
        int enteros=0;
        int palabras=0;
        int compuestos=0;

        Scanner scanner = new Scanner(System.in);
        System.out.print("Introduzca un texto: ");
        cadena = scanner.nextLine();
        
        String[] partes = cadena.split(" ");
        
        for(String cadenas: partes){
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
        
        if(enteros>0){
           System.out.print("\n"+enteros+" entero");
        }
        
        if(palabras>0){
           System.out.print("\n"+palabras+" palabra");
        }
        
        if(compuestos>0){
           System.out.print("\n"+compuestos+" compuesta");
        }

        scanner.nextLine();
    }
}
