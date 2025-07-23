select st.student_id, st.student_name, sub.subject_name, 
count(ex.subject_name) as attended_exams 
from students st 
cross join subjects sub
left join examinations ex
 on sub.subject_name = ex.subject_name
 and ex.student_id = st.student_id
group by st.student_id, sub.subject_name
order by student_id, subject_name;