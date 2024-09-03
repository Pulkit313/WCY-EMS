trigger CreateOpportunityFromAccountTrigger on Account (after insert) {
     List<Opportunity> oppList = new List<Opportunity>();
    If((Trigger.isAfter) && (Trigger.isInsert))
    {
        for(Account acc:Trigger.new)
        {
            Opportunity opp = new Opportunity();
            opp.AccountId = acc.Id;
            Opp.StageName = 'Prospecting';
            opp.CloseDate = System.Today();
            opp.Name = acc.Name;
            oppList.add(opp);
        }
    }
    If(!oppList.isEmpty())
    {
        insert oppList;
    }
    
}