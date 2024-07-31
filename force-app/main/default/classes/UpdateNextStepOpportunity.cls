public with sharing class UpdateNextStepOpportunity {
    
    public void updateOpportunityNextStep(List<Opportunity> opportunityStage) {
        
        if (opportunityStage.isEmpty()) {
            return;
        }
 
        List<Opportunity> newOpportunity = new List<Opportunity>();

        for (Opportunity opp : opportunityStage) {
           
            if (opp.StageName == 'Closed Won') {
                
                opp.NextStep = 'Put into Production';
                newOpportunity.add(opp);
            }
        }

        if (!newOpportunity.isEmpty() && Schema.sObjectType.Opportunity.isUpdateable()) {
            update newOpportunity;
        }
    }
    
}
