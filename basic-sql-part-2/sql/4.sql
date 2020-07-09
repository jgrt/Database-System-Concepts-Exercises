WITH never_acted as (
	select
		aid
	from actors
	EXCEPT
		select
			ar.aid
		from actor_role ar
		INNER JOIN actors a
			ON ar.aid = a.aid
)
select name from actors where aid in (select aid from never_acted);