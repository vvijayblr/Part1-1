using {demo} from '../db/schema';

// Adding service keyword here, is auto expose the entities defined below as oData service
service ProjectService {
    //Expose the entities
    entity Users    as select from demo.Users;
    entity Projects as select from demo.Projects;
}
