trigger MandatoryFieldsOnContactTrigger on Contact (before insert,before update,after insert) {
    
    if((Trigger.isBefore) && ((Trigger.isInsert) || (Trigger.isUpdate)))
    {
        for(Contact con : Trigger.new)
        {
            if(con.Phone == null || con.Phone == '')
            {
                con.Phone.addError('Please enter a valid Phone Number');
            }
             if(con.Email == null || con.Email == '')
             {
                  con.Email.addError('Please enter a valid Email');
             }
            
        }
    }
    
   
    }