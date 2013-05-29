object Problem023 extends App {
  val max = 28123
  def abundant(i:Int):Boolean = (1 to i/2).filter(i%_==0).sum > i

  val abundants = (0 to max).filter(abundant(_))
  var res = (0 to max).toSet
  for (i <- 0 until abundants.size)
    for (j <- i until abundants.size)
       res -= (abundants(i)+abundants(j))
  println(res.sum)
}
