@isTest
public class ContactCreatorTest {
    @isTest
    static void testCreateContacts() {
        // Call the method to create contacts
        ContactCreator.createContacts();
        
        // Query the created contacts
        List<Contact> createdContacts = [SELECT Id, FirstName, LastName FROM Contact];
        
        // Assert the number of created contacts
        System.assertEquals(10, createdContacts.size(), 'Incorrect number of contacts created.');
    }
}