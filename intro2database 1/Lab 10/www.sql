CREATE PROCEDURE `LeftJoinStudent` ()
BEGIN
select * from professor 
left join student 
 on professorprogram = studentprogram ;
END
