public class TestableClass3 {
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}
   public TestableClass3(){
   }

   public int calculate(int n){
		int a = 0;
		int b = 0;
		for (int i = 0; i <=n; i++) {
			a += i*i;
			b += i;
		}
		return b * b - a;
   }
}
