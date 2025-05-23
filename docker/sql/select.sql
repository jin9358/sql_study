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

/*
	JOIN(테이블 합치기)
    SELECT * FROM 테이블1 JOIN 테이블2;
*/
select * from student_tb as st1 join student_tb as st2;
select * from 
student_tb st1 
left outer join 
student_tb st2 on(st2.student_id = st1.student_id + 1)
left outer join
student_tb st3 on(st3.student_id = st2.student_id + 1);

select 
	* 
from 
	student_tb st1 
	inner join student_tb st2 on(st2.student_id = st1.student_id + 1)
	left outer join student_tb st3 on(st3.student_id = st2.student_id + 1);
    
/*
	for (int i = 0; i < 10; i++) {
		for (int j = 0; j < 10; j++) {
			if (j == i) {
				테이블 붙이기
			}
		}
	}
    
    int a = 10;
    if (10 == a) {}
*/