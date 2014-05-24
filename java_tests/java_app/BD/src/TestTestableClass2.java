import static org.junit.Assert.*;

import org.junit.Test;


public class TestTestableClass2 {

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
