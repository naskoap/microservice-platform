drop table T_EMPLOYER if exists;

create table T_EMPLOYER (
                        EMPLOYER_ID bigint identity primary key,
                        NUMBER varchar(6),
                        NAME varchar(50) not null,
                        DATEREGISTERED int not null,
                        NUMBER_OF_ACCOUNTS bigint not null
                        );
