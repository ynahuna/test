package cho.youna.ums.presentation;
import java.util.Scanner;

public class Console {
	private static Scanner sc=new Scanner(System.in);
	
	public static String inStr(){
		return sc.nextLine().trim();	
	}
	public static int inNum(){
		int input=-1;
		try{
			input=Integer.parseInt(inStr());
		}catch (NumberFormatException e) { }
		return input;
	}
	
	public static void info(String msg){
		System.out.println(msg);
	}
	public static void info(Object obj){
		System.out.println(obj);
	}
	public static void in(String msg){
		System.out.print(msg+"\n→ ");
	}
	public static void err(String msg){
		System.out.println("ERROR: "+ msg);
		}
}



