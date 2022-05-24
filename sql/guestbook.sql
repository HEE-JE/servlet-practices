-- guestbook

desc guestbook;

-- insert
insert into guestbook values(null, '희제', '1234', '안녕하세요', now());

-- delete
delete from guestbook where no = 1 and password = 1234;

-- select
select no, name, date_format(reg_date, '%Y-%m-%d %r'), message from guestbook order by no desc;