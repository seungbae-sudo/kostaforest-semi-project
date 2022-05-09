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


