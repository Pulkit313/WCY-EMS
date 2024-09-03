trigger AccountCreationOnIndustryTrigger on Account (before insert,after insert) {
    List<Contact> accList = new List<Contact>();
    If((Trigger.isBefore) && (Trigger.isInsert))
    {
        for(Account acc: Trigger.new)
        {
          Contact con = new Contact(); 
            {
                acc.Id = con.AccountId;
                acc.Name = con.LastName;
                accList.add(con);
            }
            
        }
        If(!accList.isEmpty())
        {
            insert accList;
        }
    }
    
    
}