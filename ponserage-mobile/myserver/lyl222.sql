-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-09-16 03:33:12
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lyl`
--
CREATE DATABASE IF NOT EXISTS `lyl` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `lyl`;

-- --------------------------------------------------------

--
-- 表的结构 `lyl_banner`
--

DROP TABLE IF EXISTS `lyl_banner`;
CREATE TABLE IF NOT EXISTS `lyl_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lyl_banner`
--

INSERT INTO `lyl_banner` (`id`, `url`) VALUES
(1, 'banner_1.jpg'),
(2, 'banner_2.jpg'),
(3, 'banner_3.jpg'),
(4, 'banner_4.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `lyl_banner2`
--

DROP TABLE IF EXISTS `lyl_banner2`;
CREATE TABLE IF NOT EXISTS `lyl_banner2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lyl_banner2`
--

INSERT INTO `lyl_banner2` (`id`, `url`) VALUES
(1, 'banner2_1.jpg'),
(2, 'banner2_3.jpg'),
(3, 'banner2_4.jpg'),
(4, 'banner2_5.jpg'),
(5, 'banner2_6.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `lyl_cart`
--

DROP TABLE IF EXISTS `lyl_cart`;
CREATE TABLE IF NOT EXISTS `lyl_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `details` varchar(128) DEFAULT NULL,
  `price` varchar(32) DEFAULT NULL,
  `img_url` varchar(128) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `isshow` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lyl_cart`
--

INSERT INTO `lyl_cart` (`id`, `pid`, `uid`, `title`, `details`, `price`, `img_url`, `count`, `isshow`) VALUES
(1, 53, 1, 'POLO衫', '夏季翻领短袖T恤男薄款冰丝透气宽松百搭潮流商务休闲潮牌polo衫', '285', 'p_121.jpg', 27, '0'),
(2, 1, 1, '潮流外套', '港风复古纯色牛仔衣外套男生BF风宽松潮流上衣外套韩版情侣夹克女', '128', 'p_1.jpg', 27, '0'),
(3, 47, 1, 'POLO衫', '港风复古拼色POLO衫T恤潮男女百搭基础款短袖tee韩版个性青年学生', '68', 'p_111.jpg', 22, '0'),
(4, 2, 1, '棒球服', '夹克男MA-1飞行员棒球服潮牌余文乐男装美国NASA宇航员空军外套', '352', 'p_21.jpg', 10, '0'),
(5, 4, 1, '棒球服', '夹克男MA-1飞行员棒球服潮牌余文乐男装美国NASA宇航员空军外套', '352', 'p_21.jpg', 10, '1'),
(6, 78, 1, '针织衫', '日系学院风撞色条纹海魂长袖毛衣 韩国港风男女宽松BF风ins针织衫', '85', 'p_181.jpg', 11, '0'),
(7, 65, 1, '牛仔裤', '唐狮春秋新款牛仔裤男修身小脚弹力小脚裤子男士牛仔长裤韩版潮流', '139', 'p_131.jpg', 10, '1'),
(8, 29, 1, '休闲西装', '休闲西装xifu西服单件爸爸男士nans中年人便衣nan穿外套2019男士', '199', 'p_91.jpg', 20, '0'),
(9, 54, 1, 'POLO衫', '港风复古拼色POLO衫T恤潮男女百搭基础款短袖tee韩版个性青年学生', '68', 'p_111.jpg', 3, '0'),
(10, 56, 1, '衬衣长袖', '港风极简白衬衫外套男士衬衣长袖韩版潮流宽松BF文艺百搭休闲黑白', '109', 'p_41.jpg', 11, '1'),
(11, 58, 1, 'POLO衫', '港风复古拼色POLO衫T恤潮男女百搭基础款短袖tee韩版个性青年学生', '68', 'p_111.jpg', 15, '0'),
(12, 59, 1, '休闲西装', '休闲西装xifu西服单件爸爸男士nans中年人便衣nan穿外套2019男士', '199', 'p_91.jpg', 20, '1'),
(13, 57, 1, 'POLO衫', '夏季翻领短袖T恤男薄款冰丝透气宽松百搭潮流商务休闲潮牌polo衫', '285', 'p_121.jpg', 10, '1'),
(14, 77, 1, '针织衫', '2019秋冬季新款男士圆领针织衫长袖毛衣男韩版潮流修身毛衣上衣服', '89', 'p_171.jpg', 4, '1'),
(15, 80, 1, '针织衫', '日系学院风撞色条纹海魂长袖毛衣 韩国港风男女宽松BF风ins针织衫', '85', 'p_181.jpg', 10, '1'),
(16, 34, 1, '休闲西装', 'lr老人秋冬休闲西服xifu单件爸爸男士nans中老年人穿羊毛外套西装', '218', 'p_101.jpg', 10, '1'),
(17, 7, 8, '衬衣长袖', '港风极简白衬衫外套男士衬衣长袖韩版潮流宽松BF文艺百搭休闲黑白', '109', 'p_31.jpg', 3, '1'),
(18, 53, 8, 'POLO衫', '夏季翻领短袖T恤男薄款冰丝透气宽松百搭潮流商务休闲潮牌polo衫', '285', 'p_121.jpg', 27, '1'),
(19, 54, 8, 'POLO衫', '港风复古拼色POLO衫T恤潮男女百搭基础款短袖tee韩版个性青年学生', '68', 'p_111.jpg', 3, '1'),
(20, 56, 8, '衬衣长袖', '港风极简白衬衫外套男士衬衣长袖韩版潮流宽松BF文艺百搭休闲黑白', '109', 'p_41.jpg', 11, '1'),
(21, 13, 10, '圆领T恤', '【设计师合作款】男装 圆领T恤(短袖) 414351 优衣库UNIQLO', '79', 'p_51.jpg', 2, '0'),
(22, 14, 10, '亚麻短袖', '亚麻短袖男士宽松夏季薄款纯色t恤胖子潮牌加肥加大码棉麻半袖ins', '78', 'p_61.jpg', 31, '0'),
(23, 16, 10, '亚麻短袖', '亚麻短袖男士宽松夏季薄款纯色t恤胖子潮牌加肥加大码棉麻半袖ins', '78', 'p_61.jpg', 41, '0'),
(24, 29, 10, '休闲西装', '休闲西装xifu西服单件爸爸男士nans中年人便衣nan穿外套2019男士', '199', 'p_91.jpg', 20, '0'),
(25, 53, 10, 'POLO衫', '夏季翻领短袖T恤男薄款冰丝透气宽松百搭潮流商务休闲潮牌polo衫', '285', 'p_121.jpg', 27, '0'),
(26, 54, 10, 'POLO衫', '港风复古拼色POLO衫T恤潮男女百搭基础款短袖tee韩版个性青年学生', '68', 'p_111.jpg', 18, '1'),
(27, 55, 10, '休闲西装', '休闲西装xifu西服单件爸爸男士nans中年人便衣nan穿外套2019男士', '199', 'p_91.jpg', 1, '0'),
(28, 29, 11, '休闲西装', '休闲西装xifu西服单件爸爸男士nans中年人便衣nan穿外套2019男士', '199', 'p_91.jpg', 20, '1'),
(29, 30, 11, '休闲西装', 'lr老人秋冬休闲西服xifu单件爸爸男士nans中老年人穿羊毛外套西装', '218', 'p_101.jpg', 15, '1'),
(30, 77, 11, '针织衫', '2019秋冬季新款男士圆领针织衫长袖毛衣男韩版潮流修身毛衣上衣服', '89', 'p_171.jpg', 4, '1'),
(31, 47, 16, 'POLO衫', '港风复古拼色POLO衫T恤潮男女百搭基础款短袖tee韩版个性青年学生', '68', 'p_111.jpg', 22, '1'),
(32, 48, 16, 'POLO衫', '夏季翻领短袖T恤男薄款冰丝透气宽松百搭潮流商务休闲潮牌polo衫', '285', 'p_121.jpg', 25, '1'),
(33, 49, 16, 'POLO衫', '港风复古拼色POLO衫T恤潮男女百搭基础款短袖tee韩版个性青年学生', '68', 'p_111.jpg', 12, '1'),
(34, 51, 16, 'POLO衫', '港风复古拼色POLO衫T恤潮男女百搭基础款短袖tee韩版个性青年学生', '68', 'p_111.jpg', 11, '1'),
(35, 19, 9, '长袖卫衣', '男士长袖卫衣2019新款潮流秋季韩版宽松ins圆领卫衣男装潮牌秋衣服', '89', 'p_71.jpg', 6, '0'),
(36, 19, 9, '长袖卫衣', '男士长袖卫衣2019新款潮流秋季韩版宽松ins圆领卫衣男装潮牌秋衣服', '89', 'p_71.jpg', 7, '0'),
(37, 53, 9, 'POLO衫', '夏季翻领短袖T恤男薄款冰丝透气宽松百搭潮流商务休闲潮牌polo衫', '285', 'p_121.jpg', 27, '1'),
(38, 13, 8, '圆领T恤', '【设计师合作款】男装 圆领T恤(短袖) 414351 优衣库UNIQLO', '79', 'p_51.jpg', 2, '1');

-- --------------------------------------------------------

--
-- 表的结构 `lyl_index`
--

DROP TABLE IF EXISTS `lyl_index`;
CREATE TABLE IF NOT EXISTS `lyl_index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `details` varchar(128) DEFAULT NULL,
  `price` varchar(32) DEFAULT NULL,
  `img_url` varchar(128) DEFAULT NULL,
  `details_img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lyl_index`
--

INSERT INTO `lyl_index` (`id`, `title`, `details`, `price`, `img_url`, `details_img`) VALUES
(1, '极简白衬衫', '港风极简白衬衫外套男士衬衣长袖韩版潮流宽松BF文艺百搭休闲黑白', '159', 'lg_1.jpg,sm_1.jpg', 'd_1.jpg,d_2.jpg,d_3.jpg,d_4.jpg,d_5.jpg,d_6.jpg,d_7.jpg,d_8.jpg,d_9.jpg,d_10.jpg'),
(2, '装裤男直筒宽松港风裤子', '唐狮2019新款cargo工装裤男直筒宽松港风裤子男韩版潮流秋季学生', '199', 'lg_2.jpg', 'd_21.jpg,d_22.jpg,d_23.jpg,d_24.jpg,d_25.jpg,d_26.jpg,d_27.jpg,d_28.jpg,d_29.jpg,d_210.jpg'),
(3, '九分裤男2019新款夏季薄款', '美特斯邦威九分裤男2019新款夏季薄款潮流青少年修身弹力休闲裤男', '99', 'lg_3.jpg', 'd_31.jpg,d_32.jpg,d_33.jpg,d_34.jpg,d_35.jpg,d_36.jpg,d_37.jpg,d_38.jpg,d_39.jpg,d_310.jpg'),
(4, '装裤男直筒宽松港风裤子', '唐狮2019新款cargo工装裤男直筒宽松港风裤子男韩版潮流秋季学生', '199', 'lg_2.jpg', 'd_21.jpg,d_22.jpg,d_23.jpg,d_24.jpg,d_25.jpg,d_26.jpg,d_27.jpg,d_28.jpg,d_29.jpg,d_210.jpg'),
(5, '九分裤男2019新款夏季薄款', '美特斯邦威九分裤男2019新款夏季薄款潮流青少年修身弹力休闲裤男', '99', 'lg_3.jpg', 'd_31.jpg,d_32.jpg,d_33.jpg,d_34.jpg,d_35.jpg,d_36.jpg,d_37.jpg,d_38.jpg,d_39.jpg,d_310.jpg'),
(6, '男夏季薄款', '坠感小西裤男夏季薄款修身九分裤韩版商务裤子条纹小脚男士休闲裤', '199', 'lg_4.jpg', 'd_41.jpg,d_42.jpg,d_43.jpg,d_44.jpg,d_45.jpg,d_46.jpg,d_47.jpg,d_48.jpg,d_49.jpg,d_410.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `lyl_productlist`
--

DROP TABLE IF EXISTS `lyl_productlist`;
CREATE TABLE IF NOT EXISTS `lyl_productlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_img` varchar(128) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `details` varchar(128) DEFAULT NULL,
  `price` varchar(32) DEFAULT NULL,
  `img_url` varchar(128) DEFAULT NULL,
  `details_img` varchar(255) DEFAULT NULL,
  `productclass` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lyl_productlist`
--

INSERT INTO `lyl_productlist` (`id`, `banner_img`, `title`, `details`, `price`, `img_url`, `details_img`, `productclass`) VALUES
(1, 'p_1.jpg,p_2.jpg,p_3.jpg', '潮流外套', '港风复古纯色牛仔衣外套男生BF风宽松潮流上衣外套韩版情侣夹克女', '128', 'p_1.jpg', 'pd_1.jpg,pd_2.jpg,pd_3.jpg,pd_4.jpg,pd_5.jpg,pd_6.jpg,pd_7.jpg,pd_8.jpg,pd_9.jpg,pd_10.jpg', '夹克'),
(2, 'p_21.jpg,p_22.jpg,p_23.jpg', '棒球服', '夹克男MA-1飞行员棒球服潮牌余文乐男装美国NASA宇航员空军外套', '352', 'p_21.jpg', 'pd_21.jpg,pd_22.jpg,pd_23.jpg,pd_24.jpg,pd_25.jpg,pd_26.jpg,pd_27.jpg,pd_28.jpg,pd_29.jpg,pd_210.jpg', '夹克'),
(3, 'p_1.jpg,p_2.jpg,p_3.jpg', '潮流外套', '港风复古纯色牛仔衣外套男生BF风宽松潮流上衣外套韩版情侣夹克女', '128', 'p_1.jpg', 'pd_1.jpg,pd_2.jpg,pd_3.jpg,pd_4.jpg,pd_5.jpg,pd_6.jpg,pd_7.jpg,pd_8.jpg,pd_9.jpg,pd_10.jpg', '夹克'),
(4, 'p_21.jpg,p_22.jpg,p_23.jpg', '棒球服', '夹克男MA-1飞行员棒球服潮牌余文乐男装美国NASA宇航员空军外套', '352', 'p_21.jpg', 'pd_21.jpg,pd_22.jpg,pd_23.jpg,pd_24.jpg,pd_25.jpg,pd_26.jpg,pd_27.jpg,pd_28.jpg,pd_29.jpg,pd_210.jpg', '夹克'),
(5, 'p_1.jpg,p_2.jpg,p_3.jpg', '潮流外套', '港风复古纯色牛仔衣外套男生BF风宽松潮流上衣外套韩版情侣夹克女', '128', 'p_1.jpg', 'pd_1.jpg,pd_2.jpg,pd_3.jpg,pd_4.jpg,pd_5.jpg,pd_6.jpg,pd_7.jpg,pd_8.jpg,pd_9.jpg,pd_10.jpg', '夹克'),
(6, 'p_21.jpg,p_22.jpg,p_23.jpg', '棒球服', '夹克男MA-1飞行员棒球服潮牌余文乐男装美国NASA宇航员空军外套', '352', 'p_21.jpg', 'pd_21.jpg,pd_22.jpg,pd_23.jpg,pd_24.jpg,pd_25.jpg,pd_26.jpg,pd_27.jpg,pd_28.jpg,pd_29.jpg,pd_210.jpg', '夹克'),
(7, 'p_31.jpg,p_32.jpg,p_33.jpg', '衬衣长袖', '港风极简白衬衫外套男士衬衣长袖韩版潮流宽松BF文艺百搭休闲黑白', '109', 'p_31.jpg', 'pd_31.jpg,pd_32.jpg,pd_33.jpg,pd_34.jpg,pd_35.jpg,pd_36.jpg,pd_37.jpg,pd_38.jpg,pd_39.jpg,pd_310.jpg', '衬衫'),
(8, 'p_41.jpg,p_42.jpg,p_43.jpg', '衬衣长袖', '港风极简白衬衫外套男士衬衣长袖韩版潮流宽松BF文艺百搭休闲黑白', '109', 'p_41.jpg', 'pd_41.jpg,pd_42.jpg,pd_43.jpg,pd_44.jpg,pd_45.jpg,pd_46.jpg,pd_47.jpg,pd_48.jpg,pd_49.jpg,pd_410.jpg', '衬衫'),
(9, 'p_31.jpg,p_32.jpg,p_33.jpg', '衬衣长袖', '港风极简白衬衫外套男士衬衣长袖韩版潮流宽松BF文艺百搭休闲黑白', '109', 'p_31.jpg', 'pd_31.jpg,pd_32.jpg,pd_33.jpg,pd_34.jpg,pd_35.jpg,pd_36.jpg,pd_37.jpg,pd_38.jpg,pd_39.jpg,pd_310.jpg', '衬衫'),
(10, 'p_41.jpg,p_42.jpg,p_43.jpg', '衬衣长袖', '港风极简白衬衫外套男士衬衣长袖韩版潮流宽松BF文艺百搭休闲黑白', '109', 'p_41.jpg', 'pd_41.jpg,pd_42.jpg,pd_43.jpg,pd_44.jpg,pd_45.jpg,pd_46.jpg,pd_47.jpg,pd_48.jpg,pd_49.jpg,pd_410.jpg', '衬衫'),
(11, 'p_31.jpg,p_32.jpg,p_33.jpg', '衬衣长袖', '港风极简白衬衫外套男士衬衣长袖韩版潮流宽松BF文艺百搭休闲黑白', '109', 'p_31.jpg', 'pd_31.jpg,pd_32.jpg,pd_33.jpg,pd_34.jpg,pd_35.jpg,pd_36.jpg,pd_37.jpg,pd_38.jpg,pd_39.jpg,pd_310.jpg', '衬衫'),
(12, 'p_41.jpg,p_42.jpg,p_43.jpg', '衬衣长袖', '港风极简白衬衫外套男士衬衣长袖韩版潮流宽松BF文艺百搭休闲黑白', '109', 'p_41.jpg', 'pd_41.jpg,pd_42.jpg,pd_43.jpg,pd_44.jpg,pd_45.jpg,pd_46.jpg,pd_47.jpg,pd_48.jpg,pd_49.jpg,pd_410.jpg', '衬衫'),
(13, 'p_51.jpg,p_52.jpg,p_53.jpg', '圆领T恤', '【设计师合作款】男装 圆领T恤(短袖) 414351 优衣库UNIQLO', '79', 'p_51.jpg', 'pd_51.jpg,pd_52.jpg,pd_53.jpg,pd_54.jpg,pd_55.jpg,pd_56.jpg', 'T恤'),
(14, 'p_61.jpg,p_62.jpg,p_63.jpg', '亚麻短袖', '亚麻短袖男士宽松夏季薄款纯色t恤胖子潮牌加肥加大码棉麻半袖ins', '78', 'p_61.jpg', 'pd_61.jpg,pd_62.jpg,pd_63.jpg,pd_64.jpg,pd_65.jpg,pd_66.jpg,pd_67.jpg,pd_68.jpg,pd_69.jpg,pd_610.jpg', 'T恤'),
(15, 'p_51.jpg,p_52.jpg,p_53.jpg', '圆领T恤', '【设计师合作款】男装 圆领T恤(短袖) 414351 优衣库UNIQLO', '79', 'p_51.jpg', 'pd_51.jpg,pd_52.jpg,pd_53.jpg,pd_54.jpg,pd_55.jpg,pd_56.jpg', 'T恤'),
(16, 'p_61.jpg,p_62.jpg,p_63.jpg', '亚麻短袖', '亚麻短袖男士宽松夏季薄款纯色t恤胖子潮牌加肥加大码棉麻半袖ins', '78', 'p_61.jpg', 'pd_61.jpg,pd_62.jpg,pd_63.jpg,pd_64.jpg,pd_65.jpg,pd_66.jpg,pd_67.jpg,pd_68.jpg,pd_69.jpg,pd_610.jpg', 'T恤'),
(17, 'p_51.jpg,p_52.jpg,p_53.jpg', '圆领T恤', '【设计师合作款】男装 圆领T恤(短袖) 414351 优衣库UNIQLO', '79', 'p_51.jpg', 'pd_51.jpg,pd_52.jpg,pd_53.jpg,pd_54.jpg,pd_55.jpg,pd_56.jpg', 'T恤'),
(18, 'p_61.jpg,p_62.jpg,p_63.jpg', '亚麻短袖', '亚麻短袖男士宽松夏季薄款纯色t恤胖子潮牌加肥加大码棉麻半袖ins', '78', 'p_61.jpg', 'pd_61.jpg,pd_62.jpg,pd_63.jpg,pd_64.jpg,pd_65.jpg,pd_66.jpg,pd_67.jpg,pd_68.jpg,pd_69.jpg,pd_610.jpg', 'T恤'),
(19, 'p_71.jpg,p_72.jpg,p_73.jpg', '长袖卫衣', '男士长袖卫衣2019新款潮流秋季韩版宽松ins圆领卫衣男装潮牌秋衣服', '89', 'p_71.jpg', 'pd_71.jpg,pd_72.jpg,pd_73.jpg,pd_74.jpg,pd_75.jpg,pd_76.jpg,pd_77.jpg,pd_78.jpg,pd_79.jpg,pd_710.jpg', '卫衣'),
(20, 'p_81.jpg,p_82.jpg,p_83.jpg', '长袖卫衣', '长袖卫衣男2019新款春秋装衣服宽松潮牌潮流秋季上衣男装卫衣', '89', 'p_81.jpg', 'pd_81.jpg,pd_82.jpg,pd_83.jpg,pd_84.jpg,pd_85.jpg,pd_86.jpg,pd_87.jpg,pd_88.jpg,pd_89.jpg,pd_810.jpg', '卫衣'),
(21, 'p_71.jpg,p_72.jpg,p_73.jpg', '长袖卫衣', '男士长袖卫衣2019新款潮流秋季韩版宽松ins圆领卫衣男装潮牌秋衣服', '89', 'p_71.jpg', 'pd_71.jpg,pd_72.jpg,pd_73.jpg,pd_74.jpg,pd_75.jpg,pd_76.jpg,pd_77.jpg,pd_78.jpg,pd_79.jpg,pd_710.jpg', '卫衣'),
(22, 'p_81.jpg,p_82.jpg,p_83.jpg', '长袖卫衣', '长袖卫衣男2019新款春秋装衣服宽松潮牌潮流秋季上衣男装卫衣', '89', 'p_81.jpg', 'pd_81.jpg,pd_82.jpg,pd_83.jpg,pd_84.jpg,pd_85.jpg,pd_86.jpg,pd_87.jpg,pd_88.jpg,pd_89.jpg,pd_810.jpg', '卫衣'),
(23, 'p_71.jpg,p_72.jpg,p_73.jpg', '长袖卫衣', '男士长袖卫衣2019新款潮流秋季韩版宽松ins圆领卫衣男装潮牌秋衣服', '89', 'p_71.jpg', 'pd_71.jpg,pd_72.jpg,pd_73.jpg,pd_74.jpg,pd_75.jpg,pd_76.jpg,pd_77.jpg,pd_78.jpg,pd_79.jpg,pd_710.jpg', '卫衣'),
(24, 'p_81.jpg,p_82.jpg,p_83.jpg', '长袖卫衣', '长袖卫衣男2019新款春秋装衣服宽松潮牌潮流秋季上衣男装卫衣', '89', 'p_81.jpg', 'pd_81.jpg,pd_82.jpg,pd_83.jpg,pd_84.jpg,pd_85.jpg,pd_86.jpg,pd_87.jpg,pd_88.jpg,pd_89.jpg,pd_810.jpg', '卫衣'),
(25, 'p_71.jpg,p_72.jpg,p_73.jpg', '长袖卫衣', '男士长袖卫衣2019新款潮流秋季韩版宽松ins圆领卫衣男装潮牌秋衣服', '89', 'p_71.jpg', 'pd_71.jpg,pd_72.jpg,pd_73.jpg,pd_74.jpg,pd_75.jpg,pd_76.jpg,pd_77.jpg,pd_78.jpg,pd_79.jpg,pd_710.jpg', '卫衣'),
(26, 'p_81.jpg,p_82.jpg,p_83.jpg', '长袖卫衣', '长袖卫衣男2019新款春秋装衣服宽松潮牌潮流秋季上衣男装卫衣', '89', 'p_81.jpg', 'pd_81.jpg,pd_82.jpg,pd_83.jpg,pd_84.jpg,pd_85.jpg,pd_86.jpg,pd_87.jpg,pd_88.jpg,pd_89.jpg,pd_810.jpg', '卫衣'),
(27, 'p_71.jpg,p_72.jpg,p_73.jpg', '长袖卫衣', '男士长袖卫衣2019新款潮流秋季韩版宽松ins圆领卫衣男装潮牌秋衣服', '89', 'p_71.jpg', 'pd_71.jpg,pd_72.jpg,pd_73.jpg,pd_74.jpg,pd_75.jpg,pd_76.jpg,pd_77.jpg,pd_78.jpg,pd_79.jpg,pd_710.jpg', '卫衣'),
(28, 'p_81.jpg,p_82.jpg,p_83.jpg', '长袖卫衣', '长袖卫衣男2019新款春秋装衣服宽松潮牌潮流秋季上衣男装卫衣', '89', 'p_81.jpg', 'pd_81.jpg,pd_82.jpg,pd_83.jpg,pd_84.jpg,pd_85.jpg,pd_86.jpg,pd_87.jpg,pd_88.jpg,pd_89.jpg,pd_810.jpg', '卫衣'),
(29, 'p_91.jpg,p_92.jpg,p_93.jpg', '休闲西装', '休闲西装xifu西服单件爸爸男士nans中年人便衣nan穿外套2019男士', '199', 'p_91.jpg', 'pd_91.jpg,pd_92.jpg,pd_93.jpg,pd_94.jpg,pd_95.jpg,pd_96.jpg,pd_97.jpg,pd_98.jpg,pd_99.jpg,pd_910.jpg', '西服'),
(30, 'p_101.jpg,p_102.jpg,p_103.jpg', '休闲西装', 'lr老人秋冬休闲西服xifu单件爸爸男士nans中老年人穿羊毛外套西装', '218', 'p_101.jpg', 'pd_101.jpg,pd_102.jpg,pd_103.jpg,pd_104.jpg,pd_105.jpg,pd_106.jpg,pd_107.jpg,pd_108.jpg,pd_109.jpg,pd_1010.jpg', '西服'),
(31, 'p_91.jpg,p_92.jpg,p_93.jpg', '休闲西装', '休闲西装xifu西服单件爸爸男士nans中年人便衣nan穿外套2019男士', '199', 'p_91.jpg', 'pd_91.jpg,pd_92.jpg,pd_93.jpg,pd_94.jpg,pd_95.jpg,pd_96.jpg,pd_97.jpg,pd_98.jpg,pd_99.jpg,pd_910.jpg', '西服'),
(32, 'p_101.jpg,p_102.jpg,p_103.jpg', '休闲西装', 'lr老人秋冬休闲西服xifu单件爸爸男士nans中老年人穿羊毛外套西装', '218', 'p_101.jpg', 'pd_101.jpg,pd_102.jpg,pd_103.jpg,pd_104.jpg,pd_105.jpg,pd_106.jpg,pd_107.jpg,pd_108.jpg,pd_109.jpg,pd_1010.jpg', '西服'),
(33, 'p_91.jpg,p_92.jpg,p_93.jpg', '休闲西装', '休闲西装xifu西服单件爸爸男士nans中年人便衣nan穿外套2019男士', '199', 'p_91.jpg', 'pd_91.jpg,pd_92.jpg,pd_93.jpg,pd_94.jpg,pd_95.jpg,pd_96.jpg,pd_97.jpg,pd_98.jpg,pd_99.jpg,pd_910.jpg', '西服'),
(34, 'p_101.jpg,p_102.jpg,p_103.jpg', '休闲西装', 'lr老人秋冬休闲西服xifu单件爸爸男士nans中老年人穿羊毛外套西装', '218', 'p_101.jpg', 'pd_101.jpg,pd_102.jpg,pd_103.jpg,pd_104.jpg,pd_105.jpg,pd_106.jpg,pd_107.jpg,pd_108.jpg,pd_109.jpg,pd_1010.jpg', '西服'),
(35, 'p_91.jpg,p_92.jpg,p_93.jpg', '休闲西装', '休闲西装xifu西服单件爸爸男士nans中年人便衣nan穿外套2019男士', '199', 'p_91.jpg', 'pd_91.jpg,pd_92.jpg,pd_93.jpg,pd_94.jpg,pd_95.jpg,pd_96.jpg,pd_97.jpg,pd_98.jpg,pd_99.jpg,pd_910.jpg', '西服'),
(36, 'p_101.jpg,p_102.jpg,p_103.jpg', '休闲西装', 'lr老人秋冬休闲西服xifu单件爸爸男士nans中老年人穿羊毛外套西装', '218', 'p_101.jpg', 'pd_101.jpg,pd_102.jpg,pd_103.jpg,pd_104.jpg,pd_105.jpg,pd_106.jpg,pd_107.jpg,pd_108.jpg,pd_109.jpg,pd_1010.jpg', '西服'),
(37, 'p_91.jpg,p_92.jpg,p_93.jpg', '休闲西装', '休闲西装xifu西服单件爸爸男士nans中年人便衣nan穿外套2019男士', '199', 'p_91.jpg', 'pd_91.jpg,pd_92.jpg,pd_93.jpg,pd_94.jpg,pd_95.jpg,pd_96.jpg,pd_97.jpg,pd_98.jpg,pd_99.jpg,pd_910.jpg', '西服'),
(38, 'p_101.jpg,p_102.jpg,p_103.jpg', '休闲西装', 'lr老人秋冬休闲西服xifu单件爸爸男士nans中老年人穿羊毛外套西装', '218', 'p_101.jpg', 'pd_101.jpg,pd_102.jpg,pd_103.jpg,pd_104.jpg,pd_105.jpg,pd_106.jpg,pd_107.jpg,pd_108.jpg,pd_109.jpg,pd_1010.jpg', '西服'),
(39, 'p_91.jpg,p_92.jpg,p_93.jpg', '休闲西装', '休闲西装xifu西服单件爸爸男士nans中年人便衣nan穿外套2019男士', '199', 'p_91.jpg', 'pd_91.jpg,pd_92.jpg,pd_93.jpg,pd_94.jpg,pd_95.jpg,pd_96.jpg,pd_97.jpg,pd_98.jpg,pd_99.jpg,pd_910.jpg', '西服'),
(40, 'p_101.jpg,p_102.jpg,p_103.jpg', '休闲西装', 'lr老人秋冬休闲西服xifu单件爸爸男士nans中老年人穿羊毛外套西装', '218', 'p_101.jpg', 'pd_101.jpg,pd_102.jpg,pd_103.jpg,pd_104.jpg,pd_105.jpg,pd_106.jpg,pd_107.jpg,pd_108.jpg,pd_109.jpg,pd_1010.jpg', '西服'),
(41, 'p_91.jpg,p_92.jpg,p_93.jpg', '休闲西装', '休闲西装xifu西服单件爸爸男士nans中年人便衣nan穿外套2019男士', '199', 'p_91.jpg', 'pd_91.jpg,pd_92.jpg,pd_93.jpg,pd_94.jpg,pd_95.jpg,pd_96.jpg,pd_97.jpg,pd_98.jpg,pd_99.jpg,pd_910.jpg', '西服'),
(42, 'p_101.jpg,p_102.jpg,p_103.jpg', '休闲西装', 'lr老人秋冬休闲西服xifu单件爸爸男士nans中老年人穿羊毛外套西装', '218', 'p_101.jpg', 'pd_101.jpg,pd_102.jpg,pd_103.jpg,pd_104.jpg,pd_105.jpg,pd_106.jpg,pd_107.jpg,pd_108.jpg,pd_109.jpg,pd_1010.jpg', '西服'),
(43, 'p_91.jpg,p_92.jpg,p_93.jpg', '休闲西装', '休闲西装xifu西服单件爸爸男士nans中年人便衣nan穿外套2019男士', '199', 'p_91.jpg', 'pd_91.jpg,pd_92.jpg,pd_93.jpg,pd_94.jpg,pd_95.jpg,pd_96.jpg,pd_97.jpg,pd_98.jpg,pd_99.jpg,pd_910.jpg', '西服'),
(44, 'p_101.jpg,p_102.jpg,p_103.jpg', '休闲西装', 'lr老人秋冬休闲西服xifu单件爸爸男士nans中老年人穿羊毛外套西装', '218', 'p_101.jpg', 'pd_101.jpg,pd_102.jpg,pd_103.jpg,pd_104.jpg,pd_105.jpg,pd_106.jpg,pd_107.jpg,pd_108.jpg,pd_109.jpg,pd_1010.jpg', '西服'),
(45, 'p_91.jpg,p_92.jpg,p_93.jpg', '休闲西装', '休闲西装xifu西服单件爸爸男士nans中年人便衣nan穿外套2019男士', '199', 'p_91.jpg', 'pd_91.jpg,pd_92.jpg,pd_93.jpg,pd_94.jpg,pd_95.jpg,pd_96.jpg,pd_97.jpg,pd_98.jpg,pd_99.jpg,pd_910.jpg', '西服'),
(46, 'p_101.jpg,p_102.jpg,p_103.jpg', '休闲西装', 'lr老人秋冬休闲西服xifu单件爸爸男士nans中老年人穿羊毛外套西装', '218', 'p_101.jpg', 'pd_101.jpg,pd_102.jpg,pd_103.jpg,pd_104.jpg,pd_105.jpg,pd_106.jpg,pd_107.jpg,pd_108.jpg,pd_109.jpg,pd_1010.jpg', '西服'),
(47, 'p_111.jpg,p_112.jpg,p_113.jpg', 'POLO衫', '港风复古拼色POLO衫T恤潮男女百搭基础款短袖tee韩版个性青年学生', '68', 'p_111.jpg', 'pd_111.jpg,pd_112.jpg,pd_113.jpg,pd_114.jpg,pd_115.jpg,pd_116.jpg,pd_117.jpg,pd_118.jpg,pd_119.jpg,pd_1110.jpg', 'polo'),
(48, 'p_121.jpg,p_122.jpg,p_123.jpg', 'POLO衫', '夏季翻领短袖T恤男薄款冰丝透气宽松百搭潮流商务休闲潮牌polo衫', '285', 'p_121.jpg', 'pd_121.jpg,pd_122.jpg,pd_123.jpg,pd_124.jpg,pd_125.jpg,pd_126.jpg,pd_127.jpg,pd_128.jpg', 'polo'),
(49, 'p_111.jpg,p_112.jpg,p_113.jpg', 'POLO衫', '港风复古拼色POLO衫T恤潮男女百搭基础款短袖tee韩版个性青年学生', '68', 'p_111.jpg', 'pd_111.jpg,pd_112.jpg,pd_113.jpg,pd_114.jpg,pd_115.jpg,pd_116.jpg,pd_117.jpg,pd_118.jpg,pd_119.jpg,pd_1110.jpg', 'polo'),
(50, 'p_121.jpg,p_122.jpg,p_123.jpg', 'POLO衫', '夏季翻领短袖T恤男薄款冰丝透气宽松百搭潮流商务休闲潮牌polo衫', '285', 'p_121.jpg', 'pd_121.jpg,pd_122.jpg,pd_123.jpg,pd_124.jpg,pd_125.jpg,pd_126.jpg,pd_127.jpg,pd_128.jpg', 'polo'),
(51, 'p_111.jpg,p_112.jpg,p_113.jpg', 'POLO衫', '港风复古拼色POLO衫T恤潮男女百搭基础款短袖tee韩版个性青年学生', '68', 'p_111.jpg', 'pd_111.jpg,pd_112.jpg,pd_113.jpg,pd_114.jpg,pd_115.jpg,pd_116.jpg,pd_117.jpg,pd_118.jpg,pd_119.jpg,pd_1110.jpg', 'polo'),
(52, 'p_121.jpg,p_122.jpg,p_123.jpg', 'POLO衫', '夏季翻领短袖T恤男薄款冰丝透气宽松百搭潮流商务休闲潮牌polo衫', '285', 'p_121.jpg', 'pd_121.jpg,pd_122.jpg,pd_123.jpg,pd_124.jpg,pd_125.jpg,pd_126.jpg,pd_127.jpg,pd_128.jpg', 'polo'),
(53, 'p_121.jpg,p_122.jpg,p_123.jpg', 'POLO衫', '夏季翻领短袖T恤男薄款冰丝透气宽松百搭潮流商务休闲潮牌polo衫', '285', 'p_121.jpg', 'pd_121.jpg,pd_122.jpg,pd_123.jpg,pd_124.jpg,pd_125.jpg,pd_126.jpg,pd_127.jpg,pd_128.jpg', '夏季新品'),
(54, 'p_111.jpg,p_112.jpg,p_113.jpg', 'POLO衫', '港风复古拼色POLO衫T恤潮男女百搭基础款短袖tee韩版个性青年学生', '68', 'p_111.jpg', 'pd_111.jpg,pd_112.jpg,pd_113.jpg,pd_114.jpg,pd_115.jpg,pd_116.jpg,pd_117.jpg,pd_118.jpg,pd_119.jpg,pd_1110.jpg', '夏季新品'),
(55, 'p_91.jpg,p_92.jpg,p_93.jpg', '休闲西装', '休闲西装xifu西服单件爸爸男士nans中年人便衣nan穿外套2019男士', '199', 'p_91.jpg', 'pd_91.jpg,pd_92.jpg,pd_93.jpg,pd_94.jpg,pd_95.jpg,pd_96.jpg,pd_97.jpg,pd_98.jpg,pd_99.jpg,pd_910.jpg', '夏季新品'),
(56, 'p_41.jpg,p_42.jpg,p_43.jpg', '衬衣长袖', '港风极简白衬衫外套男士衬衣长袖韩版潮流宽松BF文艺百搭休闲黑白', '109', 'p_41.jpg', 'pd_41.jpg,pd_42.jpg,pd_43.jpg,pd_44.jpg,pd_45.jpg,pd_46.jpg,pd_47.jpg,pd_48.jpg,pd_49.jpg,pd_410.jpg', '夏季新品'),
(57, 'p_121.jpg,p_122.jpg,p_123.jpg', 'POLO衫', '夏季翻领短袖T恤男薄款冰丝透气宽松百搭潮流商务休闲潮牌polo衫', '285', 'p_121.jpg', 'pd_121.jpg,pd_122.jpg,pd_123.jpg,pd_124.jpg,pd_125.jpg,pd_126.jpg,pd_127.jpg,pd_128.jpg', '夏季新品'),
(58, 'p_111.jpg,p_112.jpg,p_113.jpg', 'POLO衫', '港风复古拼色POLO衫T恤潮男女百搭基础款短袖tee韩版个性青年学生', '68', 'p_111.jpg', 'pd_111.jpg,pd_112.jpg,pd_113.jpg,pd_114.jpg,pd_115.jpg,pd_116.jpg,pd_117.jpg,pd_118.jpg,pd_119.jpg,pd_1110.jpg', '夏季新品'),
(59, 'p_91.jpg,p_92.jpg,p_93.jpg', '休闲西装', '休闲西装xifu西服单件爸爸男士nans中年人便衣nan穿外套2019男士', '199', 'p_91.jpg', 'pd_91.jpg,pd_92.jpg,pd_93.jpg,pd_94.jpg,pd_95.jpg,pd_96.jpg,pd_97.jpg,pd_98.jpg,pd_99.jpg,pd_910.jpg', '夏季新品'),
(60, 'p_41.jpg,p_42.jpg,p_43.jpg', '衬衣长袖', '港风极简白衬衫外套男士衬衣长袖韩版潮流宽松BF文艺百搭休闲黑白', '109', 'p_41.jpg', 'pd_41.jpg,pd_42.jpg,pd_43.jpg,pd_44.jpg,pd_45.jpg,pd_46.jpg,pd_47.jpg,pd_48.jpg,pd_49.jpg,pd_410.jpg', '夏季新品'),
(61, 'p_121.jpg,p_122.jpg,p_123.jpg', 'POLO衫', '夏季翻领短袖T恤男薄款冰丝透气宽松百搭潮流商务休闲潮牌polo衫', '285', 'p_121.jpg', 'pd_121.jpg,pd_122.jpg,pd_123.jpg,pd_124.jpg,pd_125.jpg,pd_126.jpg,pd_127.jpg,pd_128.jpg', '夏季新品'),
(62, 'p_111.jpg,p_112.jpg,p_113.jpg', 'POLO衫', '港风复古拼色POLO衫T恤潮男女百搭基础款短袖tee韩版个性青年学生', '68', 'p_111.jpg', 'pd_111.jpg,pd_112.jpg,pd_113.jpg,pd_114.jpg,pd_115.jpg,pd_116.jpg,pd_117.jpg,pd_118.jpg,pd_119.jpg,pd_1110.jpg', '夏季新品'),
(63, 'p_91.jpg,p_92.jpg,p_93.jpg', '休闲西装', '休闲西装xifu西服单件爸爸男士nans中年人便衣nan穿外套2019男士', '199', 'p_91.jpg', 'pd_91.jpg,pd_92.jpg,pd_93.jpg,pd_94.jpg,pd_95.jpg,pd_96.jpg,pd_97.jpg,pd_98.jpg,pd_99.jpg,pd_910.jpg', '夏季新品'),
(64, 'p_41.jpg,p_42.jpg,p_43.jpg', '衬衣长袖', '港风极简白衬衫外套男士衬衣长袖韩版潮流宽松BF文艺百搭休闲黑白', '109', 'p_41.jpg', 'pd_41.jpg,pd_42.jpg,pd_43.jpg,pd_44.jpg,pd_45.jpg,pd_46.jpg,pd_47.jpg,pd_48.jpg,pd_49.jpg,pd_410.jpg', '夏季新品'),
(65, 'p_131.jpg,p_132.jpg,p_133.jpg', '牛仔裤', '唐狮春秋新款牛仔裤男修身小脚弹力小脚裤子男士牛仔长裤韩版潮流', '139', 'p_131.jpg', 'pd_131.jpg,pd_132.jpg,pd_133.jpg,pd_134.jpg,pd_135.jpg,pd_136.jpg,pd_137.jpg,pd_138.jpg,pd_139.jpg,pd_1310.jpg', '牛仔裤'),
(66, 'p_141.jpg,p_142.jpg,p_143.jpg', '牛仔裤', '弹力男士九分牛仔裤秋季新款潮牌修身韩版潮流破洞小脚裤百搭裤子', '119', 'p_141.jpg', 'pd_141.jpg,pd_142.jpg,pd_143.jpg,pd_144.jpg,pd_145.jpg,pd_146.jpg,pd_147.jpg,pd_148.jpg,pd_149.jpg,pd_1410.jpg', '牛仔裤'),
(67, 'p_131.jpg,p_132.jpg,p_133.jpg', '牛仔裤', '唐狮春秋新款牛仔裤男修身小脚弹力小脚裤子男士牛仔长裤韩版潮流', '139', 'p_131.jpg', 'pd_131.jpg,pd_132.jpg,pd_133.jpg,pd_134.jpg,pd_135.jpg,pd_136.jpg,pd_137.jpg,pd_138.jpg,pd_139.jpg,pd_1310.jpg', '牛仔裤'),
(68, 'p_141.jpg,p_142.jpg,p_143.jpg', '牛仔裤', '弹力男士九分牛仔裤秋季新款潮牌修身韩版潮流破洞小脚裤百搭裤子', '119', 'p_141.jpg', 'pd_141.jpg,pd_142.jpg,pd_143.jpg,pd_144.jpg,pd_145.jpg,pd_146.jpg,pd_147.jpg,pd_148.jpg,pd_149.jpg,pd_1410.jpg', '牛仔裤'),
(69, 'p_131.jpg,p_132.jpg,p_133.jpg', '牛仔裤', '唐狮春秋新款牛仔裤男修身小脚弹力小脚裤子男士牛仔长裤韩版潮流', '139', 'p_131.jpg', 'pd_131.jpg,pd_132.jpg,pd_133.jpg,pd_134.jpg,pd_135.jpg,pd_136.jpg,pd_137.jpg,pd_138.jpg,pd_139.jpg,pd_1310.jpg', '牛仔裤'),
(70, 'p_141.jpg,p_142.jpg,p_143.jpg', '牛仔裤', '弹力男士九分牛仔裤秋季新款潮牌修身韩版潮流破洞小脚裤百搭裤子', '119', 'p_141.jpg', 'pd_141.jpg,pd_142.jpg,pd_143.jpg,pd_144.jpg,pd_145.jpg,pd_146.jpg,pd_147.jpg,pd_148.jpg,pd_149.jpg,pd_1410.jpg', '牛仔裤'),
(71, 'p_151.jpg,p_152.jpg,p_153.jpg', '休闲裤', '男装 EZY束脚工装运动裤 420806 优衣库UNIQLO', '249', 'p_151.jpg', 'pd_151.jpg,pd_152.jpg,pd_153.jpg,pd_154.jpg,pd_155.jpg,pd_156.jpg,pd_157.jpg,pd_158.jpg', '休闲裤'),
(72, 'p_161.jpg,p_162.jpg,p_163.jpg', '休闲裤', '裤子男韩版潮流修身黑色男士休闲裤九分男裤秋季长裤小脚西裤男', '99', 'p_161.jpg', 'pd_161.jpg,pd_162.jpg,pd_163.jpg,pd_164.jpg,pd_165.jpg,pd_166.jpg,pd_167.jpg,pd_168.jpg,pd_169.jpg,pd_1610.jpg', '休闲裤'),
(73, 'p_151.jpg,p_152.jpg,p_153.jpg', '休闲裤', '男装 EZY束脚工装运动裤 420806 优衣库UNIQLO', '249', 'p_151.jpg', 'pd_151.jpg,pd_152.jpg,pd_153.jpg,pd_154.jpg,pd_155.jpg,pd_156.jpg,pd_157.jpg,pd_158.jpg', '休闲裤'),
(74, 'p_161.jpg,p_162.jpg,p_163.jpg', '休闲裤', '裤子男韩版潮流修身黑色男士休闲裤九分男裤秋季长裤小脚西裤男', '99', 'p_161.jpg', 'pd_161.jpg,pd_162.jpg,pd_163.jpg,pd_164.jpg,pd_165.jpg,pd_166.jpg,pd_167.jpg,pd_168.jpg,pd_169.jpg,pd_1610.jpg', '休闲裤'),
(75, 'p_151.jpg,p_152.jpg,p_153.jpg', '休闲裤', '男装 EZY束脚工装运动裤 420806 优衣库UNIQLO', '249', 'p_151.jpg', 'pd_151.jpg,pd_152.jpg,pd_153.jpg,pd_154.jpg,pd_155.jpg,pd_156.jpg,pd_157.jpg,pd_158.jpg', '休闲裤'),
(76, 'p_161.jpg,p_162.jpg,p_163.jpg', '休闲裤', '裤子男韩版潮流修身黑色男士休闲裤九分男裤秋季长裤小脚西裤男', '99', 'p_161.jpg', 'pd_161.jpg,pd_162.jpg,pd_163.jpg,pd_164.jpg,pd_165.jpg,pd_166.jpg,pd_167.jpg,pd_168.jpg,pd_169.jpg,pd_1610.jpg', '休闲裤'),
(77, 'p_171.jpg,p_172.jpg,p_173.jpg', '针织衫', '2019秋冬季新款男士圆领针织衫长袖毛衣男韩版潮流修身毛衣上衣服', '89', 'p_171.jpg', 'pd_171.jpg,pd_172.jpg,pd_173.jpg,pd_174.jpg,pd_175.jpg,pd_176.jpg,pd_177.jpg,pd_178.jpg,pd_179.jpg,pd_1710.jpg', '针织衫'),
(78, 'p_181.jpg,p_182.jpg,p_183.jpg', '针织衫', '日系学院风撞色条纹海魂长袖毛衣 韩国港风男女宽松BF风ins针织衫', '85', 'p_181.jpg', 'pd_181.jpg,pd_182.jpg,pd_183.jpg,pd_184.jpg,pd_185.jpg,pd_186.jpg,pd_187.jpg,pd_188.jpg,pd_189.jpg,pd_1810.jpg', '针织衫'),
(79, 'p_171.jpg,p_172.jpg,p_173.jpg', '针织衫', '2019秋冬季新款男士圆领针织衫长袖毛衣男韩版潮流修身毛衣上衣服', '89', 'p_171.jpg', 'pd_171.jpg,pd_172.jpg,pd_173.jpg,pd_174.jpg,pd_175.jpg,pd_176.jpg,pd_177.jpg,pd_178.jpg,pd_179.jpg,pd_1710.jpg', '针织衫'),
(80, 'p_181.jpg,p_182.jpg,p_183.jpg', '针织衫', '日系学院风撞色条纹海魂长袖毛衣 韩国港风男女宽松BF风ins针织衫', '85', 'p_181.jpg', 'pd_181.jpg,pd_182.jpg,pd_183.jpg,pd_184.jpg,pd_185.jpg,pd_186.jpg,pd_187.jpg,pd_188.jpg,pd_189.jpg,pd_1810.jpg', '针织衫'),
(81, 'p_171.jpg,p_172.jpg,p_173.jpg', '针织衫', '2019秋冬季新款男士圆领针织衫长袖毛衣男韩版潮流修身毛衣上衣服', '89', 'p_171.jpg', 'pd_171.jpg,pd_172.jpg,pd_173.jpg,pd_174.jpg,pd_175.jpg,pd_176.jpg,pd_177.jpg,pd_178.jpg,pd_179.jpg,pd_1710.jpg', '针织衫'),
(82, 'p_181.jpg,p_182.jpg,p_183.jpg', '针织衫', '日系学院风撞色条纹海魂长袖毛衣 韩国港风男女宽松BF风ins针织衫', '85', 'p_181.jpg', 'pd_181.jpg,pd_182.jpg,pd_183.jpg,pd_184.jpg,pd_185.jpg,pd_186.jpg,pd_187.jpg,pd_188.jpg,pd_189.jpg,pd_1810.jpg', '针织衫'),
(83, 'p_171.jpg,p_172.jpg,p_173.jpg', '针织衫', '2019秋冬季新款男士圆领针织衫长袖毛衣男韩版潮流修身毛衣上衣服', '89', 'p_171.jpg', 'pd_171.jpg,pd_172.jpg,pd_173.jpg,pd_174.jpg,pd_175.jpg,pd_176.jpg,pd_177.jpg,pd_178.jpg,pd_179.jpg,pd_1710.jpg', '针织衫'),
(84, 'p_181.jpg,p_182.jpg,p_183.jpg', '针织衫', '日系学院风撞色条纹海魂长袖毛衣 韩国港风男女宽松BF风ins针织衫', '85', 'p_181.jpg', 'pd_181.jpg,pd_182.jpg,pd_183.jpg,pd_184.jpg,pd_185.jpg,pd_186.jpg,pd_187.jpg,pd_188.jpg,pd_189.jpg,pd_1810.jpg', '针织衫'),
(85, 'p_171.jpg,p_172.jpg,p_173.jpg', '针织衫', '2019秋冬季新款男士圆领针织衫长袖毛衣男韩版潮流修身毛衣上衣服', '89', 'p_171.jpg', 'pd_171.jpg,pd_172.jpg,pd_173.jpg,pd_174.jpg,pd_175.jpg,pd_176.jpg,pd_177.jpg,pd_178.jpg,pd_179.jpg,pd_1710.jpg', '针织衫'),
(86, 'p_181.jpg,p_182.jpg,p_183.jpg', '针织衫', '日系学院风撞色条纹海魂长袖毛衣 韩国港风男女宽松BF风ins针织衫', '85', 'p_181.jpg', 'pd_181.jpg,pd_182.jpg,pd_183.jpg,pd_184.jpg,pd_185.jpg,pd_186.jpg,pd_187.jpg,pd_188.jpg,pd_189.jpg,pd_1810.jpg', '针织衫');

-- --------------------------------------------------------

--
-- 表的结构 `lyl_reg`
--

DROP TABLE IF EXISTS `lyl_reg`;
CREATE TABLE IF NOT EXISTS `lyl_reg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `uphone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lyl_reg`
--

INSERT INTO `lyl_reg` (`id`, `uname`, `upwd`, `uphone`) VALUES
(8, 'aaa123', '123456', '13178599890'),
(9, 'lyl121', 'aaaaaa', '13178599897'),
(10, 'lyl122', 'aaaaaa', '13178599895'),
(12, 'aaaaaa', 'aaaaaaa', '13729029051'),
(14, 'asdqwe', 'asdqwe', '13710870573'),
(15, 'asdada', 'adasdasd', '13178599898'),
(16, 'zyf123', '123456', '15071224523');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
