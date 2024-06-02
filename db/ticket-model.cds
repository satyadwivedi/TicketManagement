using { cuid, managed, sap.common.CodeList } from '@sap/cds/common';

namespace com.satya;

/**
 * Customers using products sold by our company.
 * Customers can create support Incidents.
 */

entity Customers : cuid, managed {
   key companyID      : String(10);
       companyName    : String(255);
       email          : EMailAddress;
       phone          : PhoneNumber;
       creditCardNo   : String(16) @assert.format: '^[1-9]\d{15}$';
       tickets        : Association to many Tickets on tickets.customer = $self
}

entity Tickets : cuid, managed {
    key ticketID      : String(10);
        title         : String(255);
        otherDetails  : String;
        urgency       : Association to Urgency default 'M';
        status        : Association to Status default 'N';
        conversation  : Composition of many {
            key ID    : UUID;
            timestamp : type of managed:createdAt;
            author    : type of managed:createdBy;
            message   : String;
        };
        customer : Association to Customers;
}

entity Status : CodeList {
    key code    : String enum {
        new        = 'N';
        assigned   = 'A';
        in_process = 'I';
        on_hold    = 'H';
        resolved   = 'R';
        closed     = 'C';
    };
    criticality : Integer;
}

entity Urgency : CodeList {
    key code : String enum {
        high   = 'H';
        medium = 'M';
        low    = 'L';
    };
}

type EMailAddress : String;
type PhoneNumber  : String;





