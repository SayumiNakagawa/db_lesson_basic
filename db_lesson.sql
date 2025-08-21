Q1
create table departments (
  department_id INT unsigned primary key not null auto_increment,
  name varchar(20) not null,
  created_at timestamp default current_timestamp,
  updated_at timestamp default current_timestamp on update current_timestamp
  );

Q2
alter table people add department_id INT unsigned after email;


Q3
insert into departments (name)
values ('sales'),
('development'),
('accounting'),
('human resources'),
('information system');


insert into people (name, department_id)
values ('佐藤さん', '1'),
('鈴木さん', '1'),
('高橋さん', '1'),
('田中さん', '2'),
('伊藤さん', '2'),
('山本さん', '2'),
('渡辺さん', '2'),
('中村さん', '3'),
('小林さん', '4'),
('加藤さん', '5');


insert into reports (person_id, content)
values ('9', 'えんぴつ'),
('10', '消しゴム'),
('11', 'ボールペン'),
('12', '万年筆'),
('13', 'ガラスペン'),
('14', '赤鉛筆'),
('15', '印鑑'),
('16', '定規'),
('17', 'ねりけし'),
('18', '修正テープ');

update reports set content = 'あきのたのかりほのいほの' where person_id = 9;
update reports set content = 'はるすぎてなつきにけらし' where person_id = 10;
update reports set content = 'あしびきのやまどりのをの' where person_id = 11;
update reports set content = 'たごのうらにうちいでてみれば' where person_id = 12;
update reports set content = 'おくやまにもみぢふみわけ' where person_id = 13;
update reports set content = 'かささぎのわたせるはしに' where person_id = 14;
update reports set content = 'あまのはらふりさけみれば' where person_id = 15;
update reports set content = 'わがいほはみやこのたつみ' where person_id = 16;
update reports set content = 'はなのいろはうつりにけりな' where person_id = 17;
update reports set content = 'これやこのいくもかへるも' where person_id = 18;

update people set age = '25' where person_id = '9';
update people set age = '29' where person_id = '10';
update people set age = '33' where person_id = '11';
update people set age = '37' where person_id = '12';
update people set age = '41' where person_id = '13';
update people set age = '44' where person_id = '14';
update people set age = '48' where person_id = '15';
update people set age = '53' where person_id = '16';
update people set age = '57' where person_id = '17';
update people set age = '58' where person_id = '18';

update people set gender = '1' where person_id = '9';
update people set gender = '1' where person_id = '10';
update people set gender = '1' where person_id = '11';
update people set gender = '2' where person_id = '12';
update people set gender = '2' where person_id = '13';
update people set gender = '1' where person_id = '14';
update people set gender = '2' where person_id = '15';
update people set gender = '1' where person_id = '16';
update people set gender = '2' where person_id = '17';
update people set gender = '1' where person_id = '18';

Q4
update people set department_id = '3' where person_id = '1';
update people set department_id = '4' where person_id = '4';
update people set department_id = '4' where person_id = '6';
update people set department_id = '5' where person_id = '7';
update people set department_id = '5' where person_id = '8';



Q5
select name, age, gender from people where gender = '1' order by age desc;


Q6
peopleテーブルにあるdepartment_idが１となっているレコードに対して、
name、email、ageの３つのカラムを日報が作成された順で取得する。


Q7
select name, age, gender from people where (age between 20 and 29 and gender = 2)
or (age between 40 and 49 and gender = '1');


Q8
select department_id, name, age from people where department_id = '1' order by age asc;


Q9
select AVG(age), gender AS average_age from people where (gender = '2') and (department_id = '2') group by gender;

Q10
select p.name, p.department_id, r.content from people p join reports r using (person_id);


Q11
select p.name from people p left outer join reports r using (person_id) where report_id is NULL;

プルリクエスト2回目