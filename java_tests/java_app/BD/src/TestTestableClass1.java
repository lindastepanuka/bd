import static org.junit.Assert.*;

import org.junit.Test;


public class TestTestableClass1 {

	@Test
	public void testTestableClass1With10() {
		TestableClass1 problem = new TestableClass1();
		
		assertEquals("Must return correct value for 10", 10, problem.calculate(10));
	}
	
	@Test
	public void testTestableClass1With100() {
		TestableClass1 problem = new TestableClass1();
		
		assertEquals("Must return correct value for 100", 100, problem.calculate(100));
	}
	
	@Test
	public void testTestableClass1With10False() {
		TestableClass1 problem = new TestableClass1();
		assertFalse("Must return correct value with 10", problem.calculate(10) == 100);
	}
	
	@Test	
	public void testTestableClass2With10() {
		TestableClass2 problem = new TestableClass2();
		
		assertEquals("Must return correct value for 10", 23, problem.calculate(10));
	}

	@Test	
	public void testTestableClass2With100() {
		TestableClass2 problem = new TestableClass2();
		assertEquals("Must return correct value for 100", 2318, problem.calculate(100));
	}

	@Test	
	public void testTestableClass2With1000() {
		TestableClass2 problem = new TestableClass2();
		assertEquals("Must return correct value for 100", 233168, problem.calculate(1000));
	}

	@Test	
	public void testTestableClass2With10False() {
		TestableClass2 problem = new TestableClass2();
		assertFalse("Must return correct value with 10", problem.calculate(10) == 24);
	}

	@Test	
	public void testTestableClass3With10() {
		TestableClass3 problem = new TestableClass3();
		
		assertEquals("Must return correct value for 10", 2640, problem.calculate(10));
	}

	@Test	
	public void testTestableClass3With100() {
		TestableClass3 problem = new TestableClass3();
		assertEquals("Must return correct value for 100", 25164150, problem.calculate(100));
	}

	@Test	
	public void testTestableClass3With10False() {
		TestableClass3 problem = new TestableClass3();
		assertFalse("Must return correct value with 10", problem.calculate(10) == 24);
	}

	@Test
	public void testTestableClass4With10() {
		TestableClass4 problem = new TestableClass4();
		
		assertEquals("Must return correct value for 10", 55, problem.calculate(10));
	}

	@Test
	public void testTestableClass4With20() {
		TestableClass4 problem = new TestableClass4();
		
		assertEquals("Must return correct value for 20", 6765, problem.calculate(20));
	}
	
	@Test
	public void testTestableClass4With10False() {
		TestableClass4 problem = new TestableClass4();
		assertFalse("Must return correct value with 10", problem.calculate(10) == 100);
	}


}
