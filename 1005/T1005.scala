import java.util.Scanner
object TOJ1005{
	def main(args: Array[String]){
		val in = new Scanner(System.in)
		val n = in.nextInt() 
		var vec: List[Int] = List()
		for (i <- 1 to n){
			vec = in.nextInt()::vec
		}
		if (n == 1){
			println(vec.head)
		}
		else
			if (n == 2){
				println(MyAbs(vec.head - vec.tail.head))
			}

			else{
				var k1 = 0
				var k2 = 0
				var min = 100000000
				var n2 = 2<<(n-1)
				val bit1 = 0x1
				var j1 = 0
				for (i <- 1 to n2){
					
					for(j <- vec){
						k1 += j * (((i>>j1&bit1)+1)&bit1)
						k2 += j * (i>>j1&bit1)
						j1+= 1
					}
					j1 = 0
					
					if(MyAbs(k1-k2)<min)
						min = MyAbs(k1 - k2)
					k1 = 0 
					k2 = 0
					if (min ==0){
						println(min)
						in.close
						return
					}
						
				}
				println(min)
		in.close()
	}
	}
	def MyAbs(x: Int): Int = if (x<0) -x else x
	
}
