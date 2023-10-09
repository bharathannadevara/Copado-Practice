@isTest
public class AdditionCalculatorTest {
    @isTest
    static void testAddNumbers() {
        Integer num1 = 10;
        Integer num2 = 15;
        
        Integer expectedResult = num1 + num2;
        
        Integer actualResult = AdditionCalculator.addNumbers(num1, num2);
        
        // Check if the actual result matches the expected result
        System.assertEquals(expectedResult, actualResult, 'Addition result is incorrect.');
    }
}