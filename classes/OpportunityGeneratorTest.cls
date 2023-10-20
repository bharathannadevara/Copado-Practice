@isTest
public class OpportunityGeneratorTest {
    @isTest
    static void testCreateOpportunities() {
        OpportunityGenerator.createOpportunities(); // Call the method to create opportunities
        
        // Verify that 10 opportunities have been created
        Integer opportunityCount = [SELECT COUNT() FROM Opportunity];
        System.assertEquals(10, opportunityCount, 'Incorrect number of opportunities created');
        
        // Verify specific opportunity details
        List<Opportunity> createdOpportunities = [SELECT Name, StageName, CloseDate, Amount FROM Opportunity];
        System.assertEquals(10, createdOpportunities.size(), 'Incorrect number of opportunities queried');
        
        for (Integer i = 0; i < createdOpportunities.size(); i++) {
            Opportunity opportunity = createdOpportunities[i];
            System.assertEquals('Opportunity ' + (i + 1), opportunity.Name, 'Incorrect opportunity name');
            System.assertEquals('Prospecting', opportunity.StageName, 'Incorrect stage');
            System.assertEquals(System.today().addDays(30), opportunity.CloseDate, 'Incorrect close date');
            System.assertEquals(10000, opportunity.Amount, 'Incorrect amount');
            // Add additional field verifications as needed
        }
    }
}