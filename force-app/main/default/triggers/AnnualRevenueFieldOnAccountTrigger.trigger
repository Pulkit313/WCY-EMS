trigger AnnualRevenueFieldOnAccountTrigger on Account (before insert, before update) {
    if((Trigger.isBefore) && ((Trigger.isInsert) || (Trigger.isUpdate)))
       {
           for( Account acc : Trigger.new)
           {
              
                   if(acc.Industry == 'Banking')
                   {
                       acc.Annualrevenue = 5000000;
                   }
                   else if(acc.Industry == 'Finance')
                   {
                       acc.Annualrevenue = 4000000;
                   }
                  else  if(acc.Industry == 'Insurance')
                   {
                       acc.Annualrevenue = 3500000;
                   }
                  else  if(acc.Industry == 'Healthcare')
                   {
                       acc.Annualrevenue = 2500000;
                   }
               else
                   {
                       acc.Annualrevenue = 500000;
                   }
           }
       }

}