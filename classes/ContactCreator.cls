public class ContactCreator {
    public static void createContacts() {
        List<Contact> contactsToInsert = new List<Contact>();
        
        // Create 10 Contact records
        for (Integer i = 0; i < 10; i++) {
            Contact con = new Contact();
            con.FirstName = 'First Name ' + String.valueOf(i+1);
            con.LastName = 'Last Name ' + String.valueOf(i+1);
            contactsToInsert.add(con);
        }
        
        // Insert the Contact records
        insert contactsToInsert;
    }
}