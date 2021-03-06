create table TaskVariableImpl (
    id int8 not null,
    modificationDate timestamp,
    name varchar(255),
    processId varchar(255),
    processInstanceId int8,
    taskId int8,
    type int4,
    value varchar(4000),
    primary key (id)
);
create sequence TASK_VAR_ID_SEQ;

create table QueryDefinitionStore (
    id int8 not null,
    qExpression text,
    qName varchar(255),
    qSource varchar(255),
    qTarget varchar(255),
    primary key (id)
);

alter table QueryDefinitionStore 
        add constraint UK_4ry5gt77jvq0orfttsoghta2j unique (qName);
        
create sequence QUERY_DEF_ID_SEQ;        