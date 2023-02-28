TRUNCATE X;
insert into X VALUES ('{"KEY1":"VALUE1"}');
select Y from X;

#JSON INSERT
update X set Y = JSON_INSERT(Y, "$.KEY2", "VALUE2");
select Y from X;
update X set Y = JSON_INSERT(Y, "$.KEY3", "VALUE3", "$.KEY4", "VALUE4");
select Y from X;

#JSON REPLACE
update X SET Y = JSON_REPLACE (Y, "$.KEY1", "VALUE2"); #A chave 1 passou a ter o valor "VALUE2"
select Y from X;

#JSON REMOVE
update X set Y = JSON_REMOVE (Y, "$.KEY2", "$.KEY4"); #REMOVE A KEY 1
select Y from X;

#JSON SET
update X set Y = JSON_SET (Y, "$.KEY3", "VALUEX", "$.KEY5", "VALUE5"); #o que exister será substituido e o que não existe será criado.
select Y from X;

