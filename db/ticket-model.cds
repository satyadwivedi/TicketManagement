using { cuid, managed } from '@sap/cds/common';

namespace com.satya;

entity CompanyMain : cuid, managed {
   key companyID : String(10);
       companyName: String(255);
       ticket : Association to Tickets
}

entity Tickets : cuid, managed {
    key ticketID : String(10);
        heading: String(255);
        details: String;
        company : Association to many CompanyMain on company.ticket = $self
}






