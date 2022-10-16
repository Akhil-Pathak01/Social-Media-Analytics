use accenture;
select * from accenture_projects


create view project as select u.sr_no, u.user_id, u.name, u.email, c.content_id, c.type, c.category, c.url, l.address, p.intrests, p.age, 
s.device, s.duration, r.content, r.datetime, r.type1, rt.sentiment, rt.score from user u 
right join content c on u.user_id = c.user_id
right join location l on u.user_id = l.user_id
left join `profile` p on p.user_id = u.user_id
left join `session` s on s.user_id = u.user_id
left join reactions r on r.user_id = u.user_id
left join reaction_types rt on rt.`type` = r.type1


create view sample as select u.sr_no, u.user_id, u.name, u.email, c.content_id, c.type, 
c.category, c.url, l.address,  p.intrests, p.age,  s.device, s.duration  from user u 
right join content c on u.user_id = c.user_id
right join location l on u.user_id = l.user_id
left join `profile` p on p.user_id =  u.user_id
left join `session` s on s.user_id =  u.user_id;

select * from sample

alter table reaction_types 
rename column sr_no to sr_noo;
create view sample1 as select * from reactions r left join reaction_types rt on r.type1 = rt.type;


select * from sample s 
cross join sample1 a on s.user_id =  a.user_id;




select * from project;

create view project as select u.sr_no, u.user_id, u.name, u.email, c.content_id, c.type, c.category, c.url, l.address, p.intrests, p.age, 
s.device, s.duration, r.content, r.datetime, r.type1, rt.sentiment, rt.score from user u 
right join content c on u.user_id = c.user_id
right join location l on u.user_id = l.user_id
left join `profile` p on p.user_id = u.user_id
left join `session` s on s.user_id = u.user_id
cross join reactions r on r.user_id = u.user_id
cross join reaction_types rt on c.`type` = r.type1;




SELECT * FROm REACTIONs;
select * from content;
select * from reaction_types;


alter view a
rename column sr_noo to sr_no;
drop view 

create view a as select * from reactions r 
right join content c on c.content_id	 = r.content;
create view f as select a.sr_noo, a.content, a.user_id, a.type1, a.type,a. category, a.datetime, rt.sentiment, rt.score  from a a left join reaction_types rt on a.type1 = rt.type ;

select category, sum(score) from f group by category;
select * from f;
sele







