public class AccountGenerator {
    public static void createAccounts() {
        List<Account> accountsToCreate = new List<Account>();
        
        for (Integer i = 1; i <= 50; i++) {
            Account account = new Account();
            account.Name = 'Account ' + i;
            // Set other fields as needed
            accountsToCreate.add(account);
        }
        
        if (!accountsToCreate.isEmpty()) {
            insert accountsToCreate;
        }
    }
}