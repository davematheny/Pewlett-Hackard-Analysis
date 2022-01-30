select a.*
from mentorship_eligibilty a
where a.title not in (select distinct b.title from unique_titles b)
