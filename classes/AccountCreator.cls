public class AccountCreator {
    public static void createAccounts() {
        List<Account> accountsToInsert = new List<Account>();
        
        // Create 10 Account records
        for (Integer i = 0; i < 10; i++) {
            Account acc = new Account();
            acc.Name = 'Account ' + String.valueOf(i+1);
            accountsToInsert.add(acc);
        }
        
        // Insert the Account records
        insert accountsToInsert;
    }
}