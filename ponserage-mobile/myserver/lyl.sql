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
(NULL,"banner2_3.jpg"),
(NULL,"banner2_4.jpg"),
(NULL,"banner2_5.jpg"),
(NULL,"banner2_6.jpg");

CREATE TABLE lyl_index(
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(128),
    details VARCHAR(128),
    price VARCHAR(32),
    img_url VARCHAR(128),
    details_img VARCHAR(255)
);

INSERT INTO lyl_index VALUES
(NULL,'极简白衬衫','港风极简白衬衫外套男士衬衣长袖韩版潮流宽松BF文艺百搭休闲黑白','159','lg_1.jpg,sm_1.jpg','d_1.jpg,d_2.jpg,d_3.jpg,d_4.jpg,d_5.jpg,d_6.jpg,d_7.jpg,d_8.jpg,d_9.jpg,d_10.jpg'),
(NULL,'装裤男直筒宽松港风裤子','唐狮2019新款cargo工装裤男直筒宽松港风裤子男韩版潮流秋季学生','199','lg_2.jpg','d_21.jpg,d_22.jpg,d_23.jpg,d_24.jpg,d_25.jpg,d_26.jpg,d_27.jpg,d_28.jpg,d_29.jpg,d_210.jpg'),
(NULL,'九分裤男2019新款夏季薄款','美特斯邦威九分裤男2019新款夏季薄款潮流青少年修身弹力休闲裤男','99','lg_3.jpg','d_31.jpg,d_32.jpg,d_33.jpg,d_34.jpg,d_35.jpg,d_36.jpg,d_37.jpg,d_38.jpg,d_39.jpg,d_310.jpg'),
(NULL,'装裤男直筒宽松港风裤子','唐狮2019新款cargo工装裤男直筒宽松港风裤子男韩版潮流秋季学生','199','lg_2.jpg','d_21.jpg,d_22.jpg,d_23.jpg,d_24.jpg,d_25.jpg,d_26.jpg,d_27.jpg,d_28.jpg,d_29.jpg,d_210.jpg'),
(NULL,'九分裤男2019新款夏季薄款','美特斯邦威九分裤男2019新款夏季薄款潮流青少年修身弹力休闲裤男','99','lg_3.jpg','d_31.jpg,d_32.jpg,d_33.jpg,d_34.jpg,d_35.jpg,d_36.jpg,d_37.jpg,d_38.jpg,d_39.jpg,d_310.jpg'),
(NULL,'男夏季薄款','坠感小西裤男夏季薄款修身九分裤韩版商务裤子条纹小脚男士休闲裤','199','lg_4.jpg','d_41.jpg,d_42.jpg,d_43.jpg,d_44.jpg,d_45.jpg,d_46.jpg,d_47.jpg,d_48.jpg,d_49.jpg,d_410.jpg');

/**********商品列表************/
CREATE TABLE lyl_productlist(
    id INT PRIMARY KEY AUTO_INCREMENT,
    banner_img VARCHAR(128),
    title VARCHAR(128),
    details VARCHAR(128),
    price VARCHAR(32),
    img_url VARCHAR(128),
    details_img VARCHAR(255),
    productclass VARCHAR(32)
);

INSERT INTO lyl_productlist VALUES
(NULL,'p_1.jpg,p_2.jpg,p_3.jpg','潮流外套','港风复古纯色牛仔衣外套男生BF风宽松潮流上衣外套韩版情侣夹克女',128,'p_1.jpg','pd_1.jpg,pd_2.jpg,pd_3.jpg,pd_4.jpg,pd_5.jpg,pd_6.jpg,pd_7.jpg,pd_8.jpg,pd_9.jpg,pd_10.jpg','夹克'),
(NULL,'p_21.jpg,p_22.jpg,p_23.jpg','棒球服','夹克男MA-1飞行员棒球服潮牌余文乐男装美国NASA宇航员空军外套',352,'p_21.jpg','pd_21.jpg,pd_22.jpg,pd_23.jpg,pd_24.jpg,pd_25.jpg,pd_26.jpg,pd_27.jpg,pd_28.jpg,pd_29.jpg,pd_210.jpg','夹克'),
(NULL,'p_1.jpg,p_2.jpg,p_3.jpg','潮流外套','港风复古纯色牛仔衣外套男生BF风宽松潮流上衣外套韩版情侣夹克女',128,'p_1.jpg','pd_1.jpg,pd_2.jpg,pd_3.jpg,pd_4.jpg,pd_5.jpg,pd_6.jpg,pd_7.jpg,pd_8.jpg,pd_9.jpg,pd_10.jpg','夹克'),
(NULL,'p_21.jpg,p_22.jpg,p_23.jpg','棒球服','夹克男MA-1飞行员棒球服潮牌余文乐男装美国NASA宇航员空军外套',352,'p_21.jpg','pd_21.jpg,pd_22.jpg,pd_23.jpg,pd_24.jpg,pd_25.jpg,pd_26.jpg,pd_27.jpg,pd_28.jpg,pd_29.jpg,pd_210.jpg','夹克'),
(NULL,'p_1.jpg,p_2.jpg,p_3.jpg','潮流外套','港风复古纯色牛仔衣外套男生BF风宽松潮流上衣外套韩版情侣夹克女',128,'p_1.jpg','pd_1.jpg,pd_2.jpg,pd_3.jpg,pd_4.jpg,pd_5.jpg,pd_6.jpg,pd_7.jpg,pd_8.jpg,pd_9.jpg,pd_10.jpg','夹克'),
(NULL,'p_21.jpg,p_22.jpg,p_23.jpg','棒球服','夹克男MA-1飞行员棒球服潮牌余文乐男装美国NASA宇航员空军外套',352,'p_21.jpg','pd_21.jpg,pd_22.jpg,pd_23.jpg,pd_24.jpg,pd_25.jpg,pd_26.jpg,pd_27.jpg,pd_28.jpg,pd_29.jpg,pd_210.jpg','夹克'),
(NULL,'p_31.jpg,p_32.jpg,p_33.jpg','衬衣长袖','港风极简白衬衫外套男士衬衣长袖韩版潮流宽松BF文艺百搭休闲黑白',109,'p_31.jpg','pd_31.jpg,pd_32.jpg,pd_33.jpg,pd_34.jpg,pd_35.jpg,pd_36.jpg,pd_37.jpg,pd_38.jpg,pd_39.jpg,pd_310.jpg','衬衫'),
(NULL,'p_41.jpg,p_42.jpg,p_43.jpg','衬衣长袖','港风极简白衬衫外套男士衬衣长袖韩版潮流宽松BF文艺百搭休闲黑白',109,'p_41.jpg','pd_41.jpg,pd_42.jpg,pd_43.jpg,pd_44.jpg,pd_45.jpg,pd_46.jpg,pd_47.jpg,pd_48.jpg,pd_49.jpg,pd_410.jpg','衬衫'),
(NULL,'p_31.jpg,p_32.jpg,p_33.jpg','衬衣长袖','港风极简白衬衫外套男士衬衣长袖韩版潮流宽松BF文艺百搭休闲黑白',109,'p_31.jpg','pd_31.jpg,pd_32.jpg,pd_33.jpg,pd_34.jpg,pd_35.jpg,pd_36.jpg,pd_37.jpg,pd_38.jpg,pd_39.jpg,pd_310.jpg','衬衫'),
(NULL,'p_41.jpg,p_42.jpg,p_43.jpg','衬衣长袖','港风极简白衬衫外套男士衬衣长袖韩版潮流宽松BF文艺百搭休闲黑白',109,'p_41.jpg','pd_41.jpg,pd_42.jpg,pd_43.jpg,pd_44.jpg,pd_45.jpg,pd_46.jpg,pd_47.jpg,pd_48.jpg,pd_49.jpg,pd_410.jpg','衬衫'),
(NULL,'p_31.jpg,p_32.jpg,p_33.jpg','衬衣长袖','港风极简白衬衫外套男士衬衣长袖韩版潮流宽松BF文艺百搭休闲黑白',109,'p_31.jpg','pd_31.jpg,pd_32.jpg,pd_33.jpg,pd_34.jpg,pd_35.jpg,pd_36.jpg,pd_37.jpg,pd_38.jpg,pd_39.jpg,pd_310.jpg','衬衫'),
(NULL,'p_41.jpg,p_42.jpg,p_43.jpg','衬衣长袖','港风极简白衬衫外套男士衬衣长袖韩版潮流宽松BF文艺百搭休闲黑白',109,'p_41.jpg','pd_41.jpg,pd_42.jpg,pd_43.jpg,pd_44.jpg,pd_45.jpg,pd_46.jpg,pd_47.jpg,pd_48.jpg,pd_49.jpg,pd_410.jpg','衬衫'),
(NULL,'p_51.jpg,p_52.jpg,p_53.jpg','圆领T恤','【设计师合作款】男装 圆领T恤(短袖) 414351 优衣库UNIQLO',79,'p_51.jpg','pd_51.jpg,pd_52.jpg,pd_53.jpg,pd_54.jpg,pd_55.jpg,pd_56.jpg','T恤'),
(NULL,'p_61.jpg,p_62.jpg,p_63.jpg','亚麻短袖','亚麻短袖男士宽松夏季薄款纯色t恤胖子潮牌加肥加大码棉麻半袖ins',78,'p_61.jpg','pd_61.jpg,pd_62.jpg,pd_63.jpg,pd_64.jpg,pd_65.jpg,pd_66.jpg,pd_67.jpg,pd_68.jpg,pd_69.jpg,pd_610.jpg','T恤'),
(NULL,'p_51.jpg,p_52.jpg,p_53.jpg','圆领T恤','【设计师合作款】男装 圆领T恤(短袖) 414351 优衣库UNIQLO',79,'p_51.jpg','pd_51.jpg,pd_52.jpg,pd_53.jpg,pd_54.jpg,pd_55.jpg,pd_56.jpg','T恤'),
(NULL,'p_61.jpg,p_62.jpg,p_63.jpg','亚麻短袖','亚麻短袖男士宽松夏季薄款纯色t恤胖子潮牌加肥加大码棉麻半袖ins',78,'p_61.jpg','pd_61.jpg,pd_62.jpg,pd_63.jpg,pd_64.jpg,pd_65.jpg,pd_66.jpg,pd_67.jpg,pd_68.jpg,pd_69.jpg,pd_610.jpg','T恤'),
(NULL,'p_51.jpg,p_52.jpg,p_53.jpg','圆领T恤','【设计师合作款】男装 圆领T恤(短袖) 414351 优衣库UNIQLO',79,'p_51.jpg','pd_51.jpg,pd_52.jpg,pd_53.jpg,pd_54.jpg,pd_55.jpg,pd_56.jpg','T恤'),
(NULL,'p_61.jpg,p_62.jpg,p_63.jpg','亚麻短袖','亚麻短袖男士宽松夏季薄款纯色t恤胖子潮牌加肥加大码棉麻半袖ins',78,'p_61.jpg','pd_61.jpg,pd_62.jpg,pd_63.jpg,pd_64.jpg,pd_65.jpg,pd_66.jpg,pd_67.jpg,pd_68.jpg,pd_69.jpg,pd_610.jpg','T恤'),
(NULL,'p_71.jpg,p_72.jpg,p_73.jpg','长袖卫衣','男士长袖卫衣2019新款潮流秋季韩版宽松ins圆领卫衣男装潮牌秋衣服',89,'p_71.jpg','pd_71.jpg,pd_72.jpg,pd_73.jpg,pd_74.jpg,pd_75.jpg,pd_76.jpg,pd_77.jpg,pd_78.jpg,pd_79.jpg,pd_710.jpg','卫衣'),
(NULL,'p_81.jpg,p_82.jpg,p_83.jpg','长袖卫衣','长袖卫衣男2019新款春秋装衣服宽松潮牌潮流秋季上衣男装卫衣',89,'p_81.jpg','pd_81.jpg,pd_82.jpg,pd_83.jpg,pd_84.jpg,pd_85.jpg,pd_86.jpg,pd_87.jpg,pd_88.jpg,pd_89.jpg,pd_810.jpg','卫衣'),
(NULL,'p_71.jpg,p_72.jpg,p_73.jpg','长袖卫衣','男士长袖卫衣2019新款潮流秋季韩版宽松ins圆领卫衣男装潮牌秋衣服',89,'p_71.jpg','pd_71.jpg,pd_72.jpg,pd_73.jpg,pd_74.jpg,pd_75.jpg,pd_76.jpg,pd_77.jpg,pd_78.jpg,pd_79.jpg,pd_710.jpg','卫衣'),
(NULL,'p_81.jpg,p_82.jpg,p_83.jpg','长袖卫衣','长袖卫衣男2019新款春秋装衣服宽松潮牌潮流秋季上衣男装卫衣',89,'p_81.jpg','pd_81.jpg,pd_82.jpg,pd_83.jpg,pd_84.jpg,pd_85.jpg,pd_86.jpg,pd_87.jpg,pd_88.jpg,pd_89.jpg,pd_810.jpg','卫衣'),
(NULL,'p_71.jpg,p_72.jpg,p_73.jpg','长袖卫衣','男士长袖卫衣2019新款潮流秋季韩版宽松ins圆领卫衣男装潮牌秋衣服',89,'p_71.jpg','pd_71.jpg,pd_72.jpg,pd_73.jpg,pd_74.jpg,pd_75.jpg,pd_76.jpg,pd_77.jpg,pd_78.jpg,pd_79.jpg,pd_710.jpg','卫衣'),
(NULL,'p_81.jpg,p_82.jpg,p_83.jpg','长袖卫衣','长袖卫衣男2019新款春秋装衣服宽松潮牌潮流秋季上衣男装卫衣',89,'p_81.jpg','pd_81.jpg,pd_82.jpg,pd_83.jpg,pd_84.jpg,pd_85.jpg,pd_86.jpg,pd_87.jpg,pd_88.jpg,pd_89.jpg,pd_810.jpg','卫衣'),
(NULL,'p_91.jpg,p_92.jpg,p_93.jpg','休闲西装','休闲西装xifu西服单件爸爸男士nans中年人便衣nan穿外套2019男士',199,'p_91.jpg','pd_91.jpg,pd_92.jpg,pd_93.jpg,pd_94.jpg,pd_95.jpg,pd_96.jpg,pd_97.jpg,pd_98.jpg,pd_99.jpg,pd_910.jpg','西服'),
(NULL,'p_101.jpg,p_102.jpg,p_103.jpg','休闲西装','lr老人秋冬休闲西服xifu单件爸爸男士nans中老年人穿羊毛外套西装',218,'p_101.jpg','pd_101.jpg,pd_102.jpg,pd_103.jpg,pd_104.jpg,pd_105.jpg,pd_106.jpg,pd_107.jpg,pd_108.jpg,pd_109.jpg,pd_1010.jpg','西服'),
(NULL,'p_91.jpg,p_92.jpg,p_93.jpg','休闲西装','休闲西装xifu西服单件爸爸男士nans中年人便衣nan穿外套2019男士',199,'p_91.jpg','pd_91.jpg,pd_92.jpg,pd_93.jpg,pd_94.jpg,pd_95.jpg,pd_96.jpg,pd_97.jpg,pd_98.jpg,pd_99.jpg,pd_910.jpg','西服'),
(NULL,'p_101.jpg,p_102.jpg,p_103.jpg','休闲西装','lr老人秋冬休闲西服xifu单件爸爸男士nans中老年人穿羊毛外套西装',218,'p_101.jpg','pd_101.jpg,pd_102.jpg,pd_103.jpg,pd_104.jpg,pd_105.jpg,pd_106.jpg,pd_107.jpg,pd_108.jpg,pd_109.jpg,pd_1010.jpg','西服'),
(NULL,'p_91.jpg,p_92.jpg,p_93.jpg','休闲西装','休闲西装xifu西服单件爸爸男士nans中年人便衣nan穿外套2019男士',199,'p_91.jpg','pd_91.jpg,pd_92.jpg,pd_93.jpg,pd_94.jpg,pd_95.jpg,pd_96.jpg,pd_97.jpg,pd_98.jpg,pd_99.jpg,pd_910.jpg','西服'),
(NULL,'p_101.jpg,p_102.jpg,p_103.jpg','休闲西装','lr老人秋冬休闲西服xifu单件爸爸男士nans中老年人穿羊毛外套西装',218,'p_101.jpg','pd_101.jpg,pd_102.jpg,pd_103.jpg,pd_104.jpg,pd_105.jpg,pd_106.jpg,pd_107.jpg,pd_108.jpg,pd_109.jpg,pd_1010.jpg','西服'),
(NULL,'p_111.jpg,p_112.jpg,p_113.jpg','POLO衫','港风复古拼色POLO衫T恤潮男女百搭基础款短袖tee韩版个性青年学生',68,'p_111.jpg','pd_111.jpg,pd_112.jpg,pd_113.jpg,pd_114.jpg,pd_115.jpg,pd_116.jpg,pd_117.jpg,pd_118.jpg,pd_119.jpg,pd_1110.jpg','polo'),
(NULL,'p_121.jpg,p_122.jpg,p_123.jpg','POLO衫','夏季翻领短袖T恤男薄款冰丝透气宽松百搭潮流商务休闲潮牌polo衫',285,'p_121.jpg','pd_121.jpg,pd_122.jpg,pd_123.jpg,pd_124.jpg,pd_125.jpg,pd_126.jpg,pd_127.jpg,pd_128.jpg','polo'),
(NULL,'p_111.jpg,p_112.jpg,p_113.jpg','POLO衫','港风复古拼色POLO衫T恤潮男女百搭基础款短袖tee韩版个性青年学生',68,'p_111.jpg','pd_111.jpg,pd_112.jpg,pd_113.jpg,pd_114.jpg,pd_115.jpg,pd_116.jpg,pd_117.jpg,pd_118.jpg,pd_119.jpg,pd_1110.jpg','polo'),
(NULL,'p_121.jpg,p_122.jpg,p_123.jpg','POLO衫','夏季翻领短袖T恤男薄款冰丝透气宽松百搭潮流商务休闲潮牌polo衫',285,'p_121.jpg','pd_121.jpg,pd_122.jpg,pd_123.jpg,pd_124.jpg,pd_125.jpg,pd_126.jpg,pd_127.jpg,pd_128.jpg','polo'),
(NULL,'p_111.jpg,p_112.jpg,p_113.jpg','POLO衫','港风复古拼色POLO衫T恤潮男女百搭基础款短袖tee韩版个性青年学生',68,'p_111.jpg','pd_111.jpg,pd_112.jpg,pd_113.jpg,pd_114.jpg,pd_115.jpg,pd_116.jpg,pd_117.jpg,pd_118.jpg,pd_119.jpg,pd_1110.jpg','polo'),
(NULL,'p_121.jpg,p_122.jpg,p_123.jpg','POLO衫','夏季翻领短袖T恤男薄款冰丝透气宽松百搭潮流商务休闲潮牌polo衫',285,'p_121.jpg','pd_121.jpg,pd_122.jpg,pd_123.jpg,pd_124.jpg,pd_125.jpg,pd_126.jpg,pd_127.jpg,pd_128.jpg','polo'),
(NULL,'p_121.jpg,p_122.jpg,p_123.jpg','POLO衫','夏季翻领短袖T恤男薄款冰丝透气宽松百搭潮流商务休闲潮牌polo衫',285,'p_121.jpg','pd_121.jpg,pd_122.jpg,pd_123.jpg,pd_124.jpg,pd_125.jpg,pd_126.jpg,pd_127.jpg,pd_128.jpg','夏季新品'),
(NULL,'p_111.jpg,p_112.jpg,p_113.jpg','POLO衫','港风复古拼色POLO衫T恤潮男女百搭基础款短袖tee韩版个性青年学生',68,'p_111.jpg','pd_111.jpg,pd_112.jpg,pd_113.jpg,pd_114.jpg,pd_115.jpg,pd_116.jpg,pd_117.jpg,pd_118.jpg,pd_119.jpg,pd_1110.jpg','夏季新品'),
(NULL,'p_91.jpg,p_92.jpg,p_93.jpg','休闲西装','休闲西装xifu西服单件爸爸男士nans中年人便衣nan穿外套2019男士',199,'p_91.jpg','pd_91.jpg,pd_92.jpg,pd_93.jpg,pd_94.jpg,pd_95.jpg,pd_96.jpg,pd_97.jpg,pd_98.jpg,pd_99.jpg,pd_910.jpg','夏季新品'),
(NULL,'p_41.jpg,p_42.jpg,p_43.jpg','衬衣长袖','港风极简白衬衫外套男士衬衣长袖韩版潮流宽松BF文艺百搭休闲黑白',109,'p_41.jpg','pd_41.jpg,pd_42.jpg,pd_43.jpg,pd_44.jpg,pd_45.jpg,pd_46.jpg,pd_47.jpg,pd_48.jpg,pd_49.jpg,pd_410.jpg','夏季新品'),
(NULL,'p_121.jpg,p_122.jpg,p_123.jpg','POLO衫','夏季翻领短袖T恤男薄款冰丝透气宽松百搭潮流商务休闲潮牌polo衫',285,'p_121.jpg','pd_121.jpg,pd_122.jpg,pd_123.jpg,pd_124.jpg,pd_125.jpg,pd_126.jpg,pd_127.jpg,pd_128.jpg','夏季新品'),
(NULL,'p_111.jpg,p_112.jpg,p_113.jpg','POLO衫','港风复古拼色POLO衫T恤潮男女百搭基础款短袖tee韩版个性青年学生',68,'p_111.jpg','pd_111.jpg,pd_112.jpg,pd_113.jpg,pd_114.jpg,pd_115.jpg,pd_116.jpg,pd_117.jpg,pd_118.jpg,pd_119.jpg,pd_1110.jpg','夏季新品'),
(NULL,'p_91.jpg,p_92.jpg,p_93.jpg','休闲西装','休闲西装xifu西服单件爸爸男士nans中年人便衣nan穿外套2019男士',199,'p_91.jpg','pd_91.jpg,pd_92.jpg,pd_93.jpg,pd_94.jpg,pd_95.jpg,pd_96.jpg,pd_97.jpg,pd_98.jpg,pd_99.jpg,pd_910.jpg','夏季新品'),
(NULL,'p_41.jpg,p_42.jpg,p_43.jpg','衬衣长袖','港风极简白衬衫外套男士衬衣长袖韩版潮流宽松BF文艺百搭休闲黑白',109,'p_41.jpg','pd_41.jpg,pd_42.jpg,pd_43.jpg,pd_44.jpg,pd_45.jpg,pd_46.jpg,pd_47.jpg,pd_48.jpg,pd_49.jpg,pd_410.jpg','夏季新品'),
(NULL,'p_121.jpg,p_122.jpg,p_123.jpg','POLO衫','夏季翻领短袖T恤男薄款冰丝透气宽松百搭潮流商务休闲潮牌polo衫',285,'p_121.jpg','pd_121.jpg,pd_122.jpg,pd_123.jpg,pd_124.jpg,pd_125.jpg,pd_126.jpg,pd_127.jpg,pd_128.jpg','夏季新品'),
(NULL,'p_111.jpg,p_112.jpg,p_113.jpg','POLO衫','港风复古拼色POLO衫T恤潮男女百搭基础款短袖tee韩版个性青年学生',68,'p_111.jpg','pd_111.jpg,pd_112.jpg,pd_113.jpg,pd_114.jpg,pd_115.jpg,pd_116.jpg,pd_117.jpg,pd_118.jpg,pd_119.jpg,pd_1110.jpg','夏季新品'),
(NULL,'p_91.jpg,p_92.jpg,p_93.jpg','休闲西装','休闲西装xifu西服单件爸爸男士nans中年人便衣nan穿外套2019男士',199,'p_91.jpg','pd_91.jpg,pd_92.jpg,pd_93.jpg,pd_94.jpg,pd_95.jpg,pd_96.jpg,pd_97.jpg,pd_98.jpg,pd_99.jpg,pd_910.jpg','夏季新品'),
(NULL,'p_41.jpg,p_42.jpg,p_43.jpg','衬衣长袖','港风极简白衬衫外套男士衬衣长袖韩版潮流宽松BF文艺百搭休闲黑白',109,'p_41.jpg','pd_41.jpg,pd_42.jpg,pd_43.jpg,pd_44.jpg,pd_45.jpg,pd_46.jpg,pd_47.jpg,pd_48.jpg,pd_49.jpg,pd_410.jpg','夏季新品'),
(NULL,'p_131.jpg,p_132.jpg,p_133.jpg','牛仔裤','唐狮春秋新款牛仔裤男修身小脚弹力小脚裤子男士牛仔长裤韩版潮流',139,'p_131.jpg','pd_131.jpg,pd_132.jpg,pd_133.jpg,pd_134.jpg,pd_135.jpg,pd_136.jpg,pd_137.jpg,pd_138.jpg,pd_139.jpg,pd_1310.jpg','牛仔裤'),
(NULL,'p_141.jpg,p_142.jpg,p_143.jpg','牛仔裤','弹力男士九分牛仔裤秋季新款潮牌修身韩版潮流破洞小脚裤百搭裤子',119,'p_141.jpg','pd_141.jpg,pd_142.jpg,pd_143.jpg,pd_144.jpg,pd_145.jpg,pd_146.jpg,pd_147.jpg,pd_148.jpg,pd_149.jpg,pd_1410.jpg','牛仔裤'),
(NULL,'p_131.jpg,p_132.jpg,p_133.jpg','牛仔裤','唐狮春秋新款牛仔裤男修身小脚弹力小脚裤子男士牛仔长裤韩版潮流',139,'p_131.jpg','pd_131.jpg,pd_132.jpg,pd_133.jpg,pd_134.jpg,pd_135.jpg,pd_136.jpg,pd_137.jpg,pd_138.jpg,pd_139.jpg,pd_1310.jpg','牛仔裤'),
(NULL,'p_141.jpg,p_142.jpg,p_143.jpg','牛仔裤','弹力男士九分牛仔裤秋季新款潮牌修身韩版潮流破洞小脚裤百搭裤子',119,'p_141.jpg','pd_141.jpg,pd_142.jpg,pd_143.jpg,pd_144.jpg,pd_145.jpg,pd_146.jpg,pd_147.jpg,pd_148.jpg,pd_149.jpg,pd_1410.jpg','牛仔裤'),
(NULL,'p_131.jpg,p_132.jpg,p_133.jpg','牛仔裤','唐狮春秋新款牛仔裤男修身小脚弹力小脚裤子男士牛仔长裤韩版潮流',139,'p_131.jpg','pd_131.jpg,pd_132.jpg,pd_133.jpg,pd_134.jpg,pd_135.jpg,pd_136.jpg,pd_137.jpg,pd_138.jpg,pd_139.jpg,pd_1310.jpg','牛仔裤'),
(NULL,'p_141.jpg,p_142.jpg,p_143.jpg','牛仔裤','弹力男士九分牛仔裤秋季新款潮牌修身韩版潮流破洞小脚裤百搭裤子',119,'p_141.jpg','pd_141.jpg,pd_142.jpg,pd_143.jpg,pd_144.jpg,pd_145.jpg,pd_146.jpg,pd_147.jpg,pd_148.jpg,pd_149.jpg,pd_1410.jpg','牛仔裤'),
(NULL,'p_151.jpg,p_152.jpg,p_153.jpg','休闲裤','男装 EZY束脚工装运动裤 420806 优衣库UNIQLO',249,'p_151.jpg','pd_151.jpg,pd_152.jpg,pd_153.jpg,pd_154.jpg,pd_155.jpg,pd_156.jpg,pd_157.jpg,pd_158.jpg','休闲裤'),
(NULL,'p_161.jpg,p_162.jpg,p_163.jpg','休闲裤','裤子男韩版潮流修身黑色男士休闲裤九分男裤秋季长裤小脚西裤男',99,'p_161.jpg','pd_161.jpg,pd_162.jpg,pd_163.jpg,pd_164.jpg,pd_165.jpg,pd_166.jpg,pd_167.jpg,pd_168.jpg,pd_169.jpg,pd_1610.jpg','休闲裤'),
(NULL,'p_151.jpg,p_152.jpg,p_153.jpg','休闲裤','男装 EZY束脚工装运动裤 420806 优衣库UNIQLO',249,'p_151.jpg','pd_151.jpg,pd_152.jpg,pd_153.jpg,pd_154.jpg,pd_155.jpg,pd_156.jpg,pd_157.jpg,pd_158.jpg','休闲裤'),
(NULL,'p_161.jpg,p_162.jpg,p_163.jpg','休闲裤','裤子男韩版潮流修身黑色男士休闲裤九分男裤秋季长裤小脚西裤男',99,'p_161.jpg','pd_161.jpg,pd_162.jpg,pd_163.jpg,pd_164.jpg,pd_165.jpg,pd_166.jpg,pd_167.jpg,pd_168.jpg,pd_169.jpg,pd_1610.jpg','休闲裤'),
(NULL,'p_151.jpg,p_152.jpg,p_153.jpg','休闲裤','男装 EZY束脚工装运动裤 420806 优衣库UNIQLO',249,'p_151.jpg','pd_151.jpg,pd_152.jpg,pd_153.jpg,pd_154.jpg,pd_155.jpg,pd_156.jpg,pd_157.jpg,pd_158.jpg','休闲裤'),
(NULL,'p_161.jpg,p_162.jpg,p_163.jpg','休闲裤','裤子男韩版潮流修身黑色男士休闲裤九分男裤秋季长裤小脚西裤男',99,'p_161.jpg','pd_161.jpg,pd_162.jpg,pd_163.jpg,pd_164.jpg,pd_165.jpg,pd_166.jpg,pd_167.jpg,pd_168.jpg,pd_169.jpg,pd_1610.jpg','休闲裤'),
(NULL,'p_171.jpg,p_172.jpg,p_173.jpg','针织衫','2019秋冬季新款男士圆领针织衫长袖毛衣男韩版潮流修身毛衣上衣服',89,'p_171.jpg','pd_171.jpg,pd_172.jpg,pd_173.jpg,pd_174.jpg,pd_175.jpg,pd_176.jpg,pd_177.jpg,pd_178.jpg,pd_179.jpg,pd_1710.jpg','针织衫'),
(NULL,'p_181.jpg,p_182.jpg,p_183.jpg','针织衫','日系学院风撞色条纹海魂长袖毛衣 韩国港风男女宽松BF风ins针织衫',85,'p_181.jpg','pd_181.jpg,pd_182.jpg,pd_183.jpg,pd_184.jpg,pd_185.jpg,pd_186.jpg,pd_187.jpg,pd_188.jpg,pd_189.jpg,pd_1810.jpg','针织衫'),
(NULL,'p_171.jpg,p_172.jpg,p_173.jpg','针织衫','2019秋冬季新款男士圆领针织衫长袖毛衣男韩版潮流修身毛衣上衣服',89,'p_171.jpg','pd_171.jpg,pd_172.jpg,pd_173.jpg,pd_174.jpg,pd_175.jpg,pd_176.jpg,pd_177.jpg,pd_178.jpg,pd_179.jpg,pd_1710.jpg','针织衫'),
(NULL,'p_181.jpg,p_182.jpg,p_183.jpg','针织衫','日系学院风撞色条纹海魂长袖毛衣 韩国港风男女宽松BF风ins针织衫',85,'p_181.jpg','pd_181.jpg,pd_182.jpg,pd_183.jpg,pd_184.jpg,pd_185.jpg,pd_186.jpg,pd_187.jpg,pd_188.jpg,pd_189.jpg,pd_1810.jpg','针织衫'),
(NULL,'p_171.jpg,p_172.jpg,p_173.jpg','针织衫','2019秋冬季新款男士圆领针织衫长袖毛衣男韩版潮流修身毛衣上衣服',89,'p_171.jpg','pd_171.jpg,pd_172.jpg,pd_173.jpg,pd_174.jpg,pd_175.jpg,pd_176.jpg,pd_177.jpg,pd_178.jpg,pd_179.jpg,pd_1710.jpg','针织衫'),
(NULL,'p_181.jpg,p_182.jpg,p_183.jpg','针织衫','日系学院风撞色条纹海魂长袖毛衣 韩国港风男女宽松BF风ins针织衫',85,'p_181.jpg','pd_181.jpg,pd_182.jpg,pd_183.jpg,pd_184.jpg,pd_185.jpg,pd_186.jpg,pd_187.jpg,pd_188.jpg,pd_189.jpg,pd_1810.jpg','针织衫');