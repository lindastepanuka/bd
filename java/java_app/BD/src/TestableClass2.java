public class TestableClass2 {
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}
   public TestableClass2(){
   }

   public int calculate(int n){
	    int a = 0;
	    for (int i=1;i< n; i=i+1) {
	      if (i%3==0||i%5==0) {
	        a= a+i;
	      }
	    }
	    return a;
   }
}
