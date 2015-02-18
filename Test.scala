class TestInt(i :Int) extends Test {
    override def foo(): String = {
        if (i == 1) return "bar"
        super.foo()
    }
}

class TestStr(s :String) extends Test {
    override def foo(): String = {
        if (s.equals("1")) return "baz"
        super.foo()
    }
}

class Test {
    def foo() = "?"
}

object Test {
  def main(args: Array[String]) {
    println(new TestInt( 0 ).foo());
    println(new TestInt( 1 ).foo());
    println(new TestStr("0").foo());
    println(new TestStr("1").foo());
  }
}
