public class OpportunityGenerator {
    public static void createOpportunities() {
        List<Opportunity> opportunitiesToCreate = new List<Opportunity>();
        
        for (Integer i = 1; i <= 10; i++) {
            Opportunity opportunity = new Opportunity();
            opportunity.Name = 'Opportunity ' + i;
            opportunity.StageName = 'Prospecting';
            opportunity.CloseDate = System.today().addDays(30);
            opportunity.Amount = 10000; // Set the initial amount
            // Set other Opportunity fields as needed
            opportunitiesToCreate.add(opportunity);
        }
        // For loop ends here after iterating for 10 times
        if (!opportunitiesToCreate.isEmpty()) {
            insert opportunitiesToCreate;
        }
    }
}