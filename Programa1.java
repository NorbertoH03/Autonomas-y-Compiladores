import java.util.Scanner;

public class Programa1 {
    
    public static void main(String[] args) {
        String cadena;
        boolean numeros=false;
        boolean caracteres=false;

        Scanner scanner = new Scanner(System.in);
        int num;
        System.out.print("Introduzca un texto: ");
        cadena = scanner.nextLine();
        
        for(char c: cadena.toCharArray()){
            if(Character.isDigit(c))
                numeros=true;
            
            if(Character.isLetter(c))
                caracteres=true;
        }
        
        if(!numeros && caracteres){
            System.out.print("\nEs una cadena de palabras\n");
        }else if(numeros && !caracteres){
            System.out.print("\n Es una cadena de números enteros\n");
        }else if(numeros && caracteres){
            System.out.print("Es una cadena compuesta\n");
        }else{
            System.out.print("Esta vacia la cadena!\n");
        }
        
        scanner.nextLine();
    }
}
