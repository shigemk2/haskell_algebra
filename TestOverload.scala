class Test {
  def foo(): String = {
    return "?"
  }
  def foo(i: Int): String = {
    if (i == 1) return "bar"
    return foo()
  }
  def foo(s: String): String = {
    if (s.equals("1")) return "baz";
    return foo()
  }
}

object Test {
  def main(args: Array[String]) {
    println(new Test().foo( 0 ));
    println(new Test().foo( 1 ));
    println(new Test().foo("0"));
    println(new Test().foo("1"));
  }
}
