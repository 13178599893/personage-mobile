SET NAMES UTF8;
DROP DATABASE IF EXISTS lyl;
CREATE DATABASE lyl CHARSET=UTF8;
USE lyl;

/*****注册表*****/
CREATE TABLE lyl_reg(
    id INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(32),
    upwd VARCHAR(32),
    uphone VARCHAR(15)
);

/***********测试*********/
INSERT INTO lyl_reg VALUES(NULL,"lyl123","123456",13178599893);

/*****轮播图****/
CREATE TABLE lyl_banner(
    id INT PRIMARY KEY AUTO_INCREMENT,
    url VARCHAR(128)
);


/****轮播图数据*****/
INSERT INTO lyl_banner VALUES
(NULL,"banner_1.jpg"),
(NULL,"banner_2.jpg"),
(NULL,"banner_3.jpg"),
(NULL,"banner_4.jpg");


CREATE TABLE lyl_banner2(
    id INT PRIMARY KEY AUTO_INCREMENT,
    url VARCHAR(128)
);


/****轮播图数据*****/
INSERT INTO lyl_banner2 VALUES
(NULL,"banner2_1.jpg"),
(NULL,"banner2_2.jpg"),
(NULL,"banner2_3.jpg"),
(NULL,"banner2_4.jpg"),
(NULL,"banner2_5.jpg"),
(NULL,"banner2_6.jpg");