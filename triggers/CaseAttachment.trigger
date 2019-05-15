trigger CaseAttachment on Case (after insert, after delete) {    
    //object of AttachmentTriggerHandler Class    
    
    AttachmentTriggerHandler handler = new AttachmentTriggerHandler();
    //created a map for matching each parentId
    //Map<Id, Integer> parentCount = new Map<Id, Integer>();
    if((Trigger.isBefore) && Trigger.isInsert){
        handler.countTotalNumberOfAttachment(Trigger.New);
    }
    
}