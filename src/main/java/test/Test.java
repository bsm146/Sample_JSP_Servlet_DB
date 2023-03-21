package test;

public class Test {

    public static void main(String[] args) {


        try {
            aaa();
        } catch (Exception e) {
            System.out.println("에러");
        }
    }

    static void aaa() throws Exception {

        throw new Exception();
    }
}
