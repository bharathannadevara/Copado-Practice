@isTest
public class AccountGeneratorTest {
    @isTest
    static void testCreateAccounts() {
        AccountGenerator.createAccounts(); // Call the method to create accounts
        
        // Verify that 50 accounts have been created
        Integer accountCount = [SELECT COUNT() FROM Account];
        System.assertEquals(50, accountCount, 'Incorrect number of accounts created');
        
        // Verify specific account details
        List<Account> createdAccounts = [SELECT Name FROM Account];
        System.assertEquals(50, createdAccounts.size(), 'Incorrect number of accounts queried');
        
        for (Integer i = 0; i < createdAccounts.size(); i++) {
            Account account = createdAccounts[i];
            System.assertEquals('Account ' + (i + 1), account.Name, 'Incorrect account name');
            // Add additional field verifications as needed
        }
    }
}