using { com.satya as db } from '../db/ticket-model';

@(requires:'support')
service TicketService @(path:'/processor')  {
   entity Incidents as projection on db.Tickets;
   entity Customers @readonly as projection on db.Customers;

}

service AdminService @(requires:'admin') {
  entity Customers as projection on db.Customers;
  entity Incidents as projection on db.Tickets;
}






