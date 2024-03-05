create database `kais`;
use `kais`;

create table `product` (
	id bigint not null auto_increment,
    name varchar(200) not null,
    description varchar(200) not null,
    category varchar(200) not null,
    price float not null,
    quantity int not null,
    primary key (id)
);

insert into `product` (name, description, category, price, quantity)
values ("Dendeng Nyet Berapi", "Dendeng is a classic dark and oily dish made up of tender beef marinated in spices and herbs and is usually served with rice and any other foods.", "Canned and Packed Food", 15, 1000);
insert into `product` (name, description, category, price, quantity)
values ("sambal Nyet Berapi", "Spicy and fragrant sambal original made by KA which best served with rice", "Canned and Packed Food", 16, 1000);

create table `user` (
	id bigint not null auto_increment,
	username varchar(200) not null,
	email varchar(200) not null,
	password varchar(64) not null,
	primary key (id)
);

create table `role` (
	id bigint not null auto_increment,
    name varchar(20) not null,
    primary key (id)
);

INSERT INTO `role`(`name`) VALUES ('USER');
INSERT INTO `role`(`name`) VALUES ('ADMIN');

create table `users_roles` (
	`user_id` bigint not null,
    `role_id` bigint not null,
    key `user_fk_idx` (`user_id`),
    key `role_fk_idx` (`role_id`),
    constraint `role_fk` foreign key (`role_id`) references `role` (`id`),
    constraint `user_fk` foreign key (`user_id`) references `user` (`id`) 
);
