using { com.satya as db } from '../db/ticket-model';

service TicketService @(path:'/tickets')  {
    entity company as projection on db.CompanyMain;

    

}







