import math._

object Problem039 extends App {
  var res = Map.empty[Int, Int]
  val max = 1000
  for (a <- 1 to max/2) {
    for (b <- a to max/2) {
      val c = pow(pow(a, 2) + pow(b, 2), .5)
      if (c%1==0) {
        val p = a + b + c.toInt
        if (res contains p)
          res = res + (p -> (res(p) + 1))
        else
          res = res + (p -> 1)
      }  
    }
  }
  println(res.maxBy(_._2))
}
