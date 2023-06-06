package home.my;

public class Main {
    public static void main(String[] args) throws InterruptedException {
        for(int i = 0 ; i < 100; i++){
            System.out.println("Hello World Ping " + i );
            Thread.sleep(100);
        }
    }
}
