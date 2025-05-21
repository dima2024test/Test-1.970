trigger ContactTrigger on Contact (before insert, before update) {
    for (Contact con : Trigger.new) {
        // Example logic: Set a default value or modify fields
        if (con.FirstName == null) {
            con.FirstName = 'Default First Name';
        }
        
        // Optionally set LastModifiedById (usually handled by Salesforce)
        con.MailingStreet = UserInfo.getUserId();
    }
}