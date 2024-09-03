trigger CreateAccountFromContactTrigger on Contact (after insert) {
     List<Account> accList = new List<Account>();
    If ((Trigger.isAfter) && (Trigger.isInsert))
    {
       
        for(Contact con: Trigger.new)
        {
            If(con.AccountId == null){
                Account acc = new Account();
                acc.Name= con.LastName;
                acc.Phone = con.Phone ;
                accList.add(acc);
            }
        }
        If(!accList.isEmpty())
        {
            insert accList;
        }
    }
    
    
}