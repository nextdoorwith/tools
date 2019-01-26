-- truncate table MST_KBN;
insert into MST_KBN("GROUP","KBN","NAME","SHORT_NAME","VALUE","DISP_ORDER","DELETE_FLAG","CREATE_USER","CREATE_TIMESTAMP","UPDATE_USER","UPDATE_TIMESTAMP") values('UserType','Admin','管理者',null,'10',1,'0','system',now(),'system',now());
insert into MST_KBN("GROUP","KBN","NAME","SHORT_NAME","VALUE","DISP_ORDER","DELETE_FLAG","CREATE_USER","CREATE_TIMESTAMP","UPDATE_USER","UPDATE_TIMESTAMP") values('UserType','Normal','一般',null,'01',2,'0','system',now(),'system',now());
insert into MST_KBN("GROUP","KBN","NAME","SHORT_NAME","VALUE","DISP_ORDER","DELETE_FLAG","CREATE_USER","CREATE_TIMESTAMP","UPDATE_USER","UPDATE_TIMESTAMP") values('UserType','Agent','一般代理',null,'09',3,'0','system',now(),'system',now());
insert into MST_KBN("GROUP","KBN","NAME","SHORT_NAME","VALUE","DISP_ORDER","DELETE_FLAG","CREATE_USER","CREATE_TIMESTAMP","UPDATE_USER","UPDATE_TIMESTAMP") values('DeleteFlag','Invalid','無効',null,'0',1,'0','system',now(),'system',now());
insert into MST_KBN("GROUP","KBN","NAME","SHORT_NAME","VALUE","DISP_ORDER","DELETE_FLAG","CREATE_USER","CREATE_TIMESTAMP","UPDATE_USER","UPDATE_TIMESTAMP") values('DeleteFlag','Valid','有効',null,'1',2,'0','system',now(),'system',now());
insert into MST_KBN("GROUP","KBN","NAME","SHORT_NAME","VALUE","DISP_ORDER","DELETE_FLAG","CREATE_USER","CREATE_TIMESTAMP","UPDATE_USER","UPDATE_TIMESTAMP") values('SubmitStatus','NotYet','未提出','未','0',1,'0','system',now(),'system',now());
insert into MST_KBN("GROUP","KBN","NAME","SHORT_NAME","VALUE","DISP_ORDER","DELETE_FLAG","CREATE_USER","CREATE_TIMESTAMP","UPDATE_USER","UPDATE_TIMESTAMP") values('SubmitStatus','Done','提出済','済','1',2,'0','system',now(),'system',now());
insert into MST_KBN("GROUP","KBN","NAME","SHORT_NAME","VALUE","DISP_ORDER","DELETE_FLAG","CREATE_USER","CREATE_TIMESTAMP","UPDATE_USER","UPDATE_TIMESTAMP") values('SubmitStatus','Unknown','不明','？','9',3,'0','system',now(),'system',now());

