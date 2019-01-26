-- drop table MST_KBN;
create table MST_KBN (
  "GROUP" character varying(256) not null
  , "KBN" character varying(256) not null
  , "NAME" character varying(256) not null
  , "SHORT_NAME" character varying(16)
  , "VALUE" character varying(256) not null
  , "DISP_ORDER" integer
  , "DELETE_FLAG" character(1) default '0'
  , "CREATE_USER" character(16)
  , "CREATE_TIMESTAMP" timestamp
  , "UPDATE_USER" character(16)
  , "UPDATE_TIMESTAMP" timestamp
  , primary key ("GROUP", "KBN")
);
