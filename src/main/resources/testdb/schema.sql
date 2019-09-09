drop table T_ACCOUNT if exists;

create table T_ACCOUNT (
                        ID bigint identity primary key, NUMBER varchar(9),
                        NAME varchar(50) not null,
                        BALANCE decimal(8,2), unique(NUMBER),
                        EMPLOYER_ID bigint,
                        YEARS_EMPLOYED decimal(3, 1)
                        );
                        
ALTER TABLE T_ACCOUNT ALTER COLUMN BALANCE SET DEFAULT 0.0;
ALTER TABLE T_ACCOUNT ALTER COLUMN YEARS_EMPLOYED SET DEFAULT 1.0;
