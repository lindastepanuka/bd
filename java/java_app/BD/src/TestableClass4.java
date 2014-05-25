public class TestableClass4 {
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}
   public TestableClass4(){
   }

   public int calculate(int n){
	    if(n == 0)
	        return 0;
	    else if(n == 1)
	      return 1;
	   else
	      return calculate(n - 1) + calculate(n - 2);
   }
}
