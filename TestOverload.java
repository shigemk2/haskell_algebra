class Test {
    public static String foo() {
        return "?";
    }
    public static String foo(int i) {
        if (i == 1) return "bar";
        return foo();
    }
    public static String foo(String s) {
        if (s.equals("1")) return "baz";
        return foo();
    }
    public static void main(String[] args) {
        System.out.println(foo( 0 ));
        System.out.println(foo( 1 ));
        System.out.println(foo("0"));
        System.out.println(foo("1"));
    }
}
