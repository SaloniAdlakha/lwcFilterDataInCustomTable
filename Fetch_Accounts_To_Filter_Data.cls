public with sharing class Fetch_Accounts_To_Filter_Data {
    @AuraEnabled( cacheable = true )
    public static List< Account > fetchAccounts() {     
        return [ SELECT Id, Name, Industry, AccountNumber, Rating
                 FROM Account LIMIT 5 ];
    }  
}
