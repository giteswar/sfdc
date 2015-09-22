trigger ChangingFirstlttrUpper on Account (before insert,before update) {
   ChanignToCaps.Change(trigger.new);
      if(trigger.isBefore )
         if(trigger.IsInsert ||trigger.IsUpdate )
           ChanignToCaps.Change(trigger.new);
}