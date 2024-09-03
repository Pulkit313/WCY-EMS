trigger ApexAccountTrigger on Account (before insert , before update) {
    
    If ((Trigger.isBefore) && ((Trigger.isInsert) || (Trigger.isUpdate)))
    {
        for(Account acc: Trigger.new)
        {
            If (acc.Industry == 'Banking' || acc.Industry == 'Healthcare')
            {
                acc.Rating = 'Hot';
            }
        }
    }
}