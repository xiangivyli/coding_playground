select t.worker_title
from worker w
inner join title t
on w.worker_id = t.worker_ref_id
where salary = (
        select salary
        from worker
        order by salary desc
        limit 1);
