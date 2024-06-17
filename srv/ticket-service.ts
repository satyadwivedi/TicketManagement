//import cds from '@sap/cds' 

//const cds = require('@sap/cds')

// module.exports = class TicketService extends  cds.ApplicationService { init() {
//     const { Incidents } = require('#cds-models/com/satya')

//     this.before('CREATE', Incidents, async (req: { data: any }) => {
//         console.log('Tickets creation called')
//         console.log( req.data )
//        // req.data  // known to be a Book. Code completion suggests:
//               // ID (number)
//               // title (string)
//               // author (Author)
//               // createdAt (Date)
//               // …
//     });

//     this.before('READ', Incidents, (req: { data: any }) => {
//         console.log('before read incients')
//     })


//     this.after('READ', Incidents, (req: { data: any }) => {
//         console.log('after read incients')
//     })

//     //const { Customers } = await import('#cds-models/com/satya') 
//      const { Customers } = require('#cds-models/com/satya')

//     this.on('myCustAction', async (req: {data: any}) => {
//         console.log('myCustAction  called')

//     })


//     return super.init();
// }}


/*
module.exports = class AdminService extends cds.ApplicationService { init(){
  this.before ('NEW','Authors', genid)
  this.before ('NEW','Books', genid)
  return super.init()
}}

async function genid (req) {
    const {id} = await SELECT.one.from(req.target).columns('max(ID) as id')
    req.data.ID = id - id % 100 + 100 + 1
}
*/

import { Service, Request } from '@sap/cds'
//import { cds } from '@sap/cds'
//import  cds  from '@sap/cds' 
import type { Incidents } from '#cds-models/cap/satya'

 
export = (srv: Service) =>{


    srv.before('READ', 'Incidents', async(req) => {
        console.log('before incident read')
    })

    srv.after('READ', 'Incidents', async(req) => {
        console.log('after incident read')
    })

    srv.on('myCustAction', async (req: Request) => {
        console.log('my myCustAction  called')
        console.log('data = ', req.data)

       // const { Incidents } = require('#cds-models/cap/satya')
       //const { Incidents } = await import('#cds-models/cap/satya')
       const { Incidents } = require('#cds-models/com/satya')
      


       

        console.log('Incidents')


    })

}
