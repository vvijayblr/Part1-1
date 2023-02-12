// Adding service keyword here, is auto expose the entities defined below as oData service
service ProjectService {
    entity Users {
        key id      : Integer;
            name    : String(100);
            email   : String(100);
            //User has one project as there is no cardinality mentioned below
            project : Association to Projects;
    }

    entity Projects {
        key id          : Integer;
            name        : String(100);
            description : String(1000);
            //Project have many users, when we use many keyword shoul have an on condition, to specifiy the relationship
            user        : Association to many Users
                              on user.project = $self;
    }
}
