
select a.*
from unique_titles a
where a.title not in (select distinct b.title from mentorship_eligibilty b)
