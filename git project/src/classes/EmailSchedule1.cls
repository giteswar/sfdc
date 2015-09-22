global class EmailSchedule1 implements Schedulable {
    global void execute(SchedulableContext sc) {
        List<Messaging.SingleEmailMessage> mails = new List<Messaging.SingleEmailMessage>();
        Messaging.EmailFileAttachment attach = new Messaging.EmailFileAttachment();


 

        attach.setContentType('application/pdf');
        attach.setFileName('Employee.pdf');
       
        pagereference Pg = Page.PDFPage;
        Blob body = pg.getcontentAsPdf();

        attach.Body = body;
               
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        mail.setToAddresses(new String[] { 'eswarsfdc12@gmail.com' });
        mail.setSubject('PDF Generation');
        mail.setHtmlBody('PFA');
        mail.setFileAttachments(new Messaging.EmailFileAttachment[] { attach });    
       
        mails.add(mail); 
       
        if(!mails.isEmpty()) {
            Messaging.SendEmail(mails);
        }
    }
}