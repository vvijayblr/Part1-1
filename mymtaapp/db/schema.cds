// provide namespace, to avoid collision of these entities defined below
namespace demo;

type Address {
    street : String(100);
    city   : String(100);
    state  : String(100);
    zip    : String(100);
}

entity Users {
    key id      : Integer;
        name    : String(100);
        email   : String(100);
        phone   : String(100);
        //make use of custom data type: Address defined above
        address : Address;
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
