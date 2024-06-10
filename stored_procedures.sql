use productdb;

drop procedure new_procedure;
delimiter $
create procedure new_procedure(in var1 int,in var2 int)
BEGIN
select * from products where price=var1 and product_id=var2;
END $
delimiter ;

call new_procedure();
 
drop procedure procedure_with_output;
delimiter $
create procedure procedure_with_output(out var1 int)
begin
select count(*) into var1 from products;
select @var1 as var;
end $
delimiter ;

call procedure_with_output(@var);


drop procedure procedure_with_variable;
delimiter $
create procedure procedure_with_variable(out var_out int)
begin
declare variable int default 2;
set @var_out=variable;
select @var_out as output;
end $
delimiter ; 

call procedure_with_variable(@var);
