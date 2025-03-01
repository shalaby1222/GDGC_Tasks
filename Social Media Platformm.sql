create Database Social_Media_Platformm
use Social_Media_Platformm

create table Userr(
Userr_ID INT Primary key not null,
Namee Nvarchar (50) not null,
Email Nvarchar (100) unique not null,
Gender Nvarchar (10) unique not null,
BOD Date ,
Join_Date Date Default Getdate()
);
insert into Userr (Userr_ID,Namee, Gender,BOD,Email,Join_Date )
values 
(1,'Mohamed','Malee','2005-05-08','mm@gamil.com','2025-03-02'),
(2,'Shalaby','Male','2005-05-08','jj@gamil.com','2025-08-07');


create table Post(
Post_ID INT,
Userr_ID Int,
Content Nvarchar (100)  not null,
Vasbility Nvarchar (100)  not null,
Post_Date Date Default GetDate(),
constraint pk_Post primary key(Post_ID),
constraint fk_Post Foreign key(Userr_ID) references Userr,
);
insert into Post (Userr_ID,Post_ID, Content,Vasbility,Post_Date )
values 
(1,222,'grggt','y','2025-03-02'),
(2,333,'tehheth','o','2025-08-07');

create table Comment(
Comment_ID INT ,
Post_ID int,
Userr_ID int,
Content Nvarchar (100)  not null,
Comment_Date Date Default Getdate(),
constraint pk_Comment primary key(Comment_ID),
constraint fk_Comment Foreign key(Userr_ID) references Userr,
constraint fk2_Comment Foreign key(Post_ID) references Post,
); 
insert into Comment (Userr_ID,Post_ID,Comment_ID,Content,Comment_Date )
values 
(1,222,444,'grggt','2005-03-02'),
(2,333,555,'tehheth','2002-08-07');


create table Interaction (
Interaction_ID INT PRIMARY KEY ,
Interaction_Date Date Default Getdate()
);
insert into Interaction (Interaction_ID , Interaction_Date)
values 
(999,'2002-08-05');


create table Interacts(
Post_ID int,
Userr_ID int,
Interaction_ID int,
constraint fk1_Interacts Foreign key(Userr_ID) references Userr,
constraint fk2_Interacts Foreign key(Post_ID) references Post,
constraint fk3_Interacts Foreign key(Interaction_ID ) references Interaction,
);
insert into Interacts (Userr_ID,Post_ID, Interaction_ID)
values 
(1,222,555),
(2,333,999);

select * from Userr ;
select * from Post;
select * from Comment;
select * from Interacts;

Drop Table Userr;
Drop database Social_Media_Platformm;
