SELECT emp_no, title, hits ,emp_group,emp_mail
FROM EMPLOYMENT 
ORDER BY emp_no DESC

SELECT ROW_NUMBER() OVER(ORDER BY emp_no DESC) as rnum ,emp_no, title, hits ,emp_group,emp_mail
FROM EMPLOYMENT 

SELECT rnum, emp_no,emp_group,hits
FROM(
	SELECT ROW_NUMBER() OVER(ORDER BY emp_no DESC) as rnum ,emp_no, title, hits ,emp_group,emp_mail
FROM EMPLOYMENT 
) WHERE rnum BETWEEN 1 AND 5


SELECT 가격
FROM 
 (
  SELECT 가격
  FROM 테이블
  ORDER BY 가격 DESC
 )
WHERE  <= 10

select*
from
(
select com_name, round(avg(rating),2) 
from( 
			select e.com_name ,r.rating
			from EMP_MEMBER e, REVIEW r
			where e.id=r.id 
	)GROUP BY com_name 
order by avg(rating) desc
)
WHERE ROWNUM <=3
