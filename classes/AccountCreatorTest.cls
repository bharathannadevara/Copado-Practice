@isTest
public class AccountCreatorTest {
    @isTest
    static void testCreateAccounts() {
        // Call the method to create accounts
        AccountCreator.createAccounts();
        
        // Query the created accounts
        List<Account> createdAccounts = [SELECT Id, Name FROM Account];
        
        // Assert the number of created accounts
        System.assertEquals(10, createdAccounts.size(), 'Incorrect number of accounts created.');
    }
}