/*
	SELECT(데이터 조회)
    SELECT 컬럼1, 컬럼2 FROM 테이블명;
*/

select student_name as sn, student_age, student_age from student_tb where student_age > 25;
select 10 as number;
select * from (select 10 + 20 as number2, 40 as number3) as n_tb;

/*
	select 결과들을 합치는 방법(union - 중복제거, union all)
    제약조건 
    1. 컬럼의 개수가 일치해야한다.
    2. 테이블을 select한 결과를 합치려면 자료형도 일치해야한다.
*/
select 30, 40 union select 50, '가';
select 10, 20 union all select 10, 20;