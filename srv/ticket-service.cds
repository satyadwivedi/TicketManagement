using { com.satya as db } from '../db/ticket-model';

@(requires:'support')
service TicketService @(path:'/processor')  {
   entity Incidents as projection on db.Incidents;
   entity Customers @readonly as projection on db.Customers;
   action myCustAction ( name: String(10)) returns Customers

}

service AdminService @(requires:'admin') {
  entity Customers as projection on db.Customers;
  entity Incidents as projection on db.Incidents;
}






