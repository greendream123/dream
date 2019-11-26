SET NAMES UTF8;
DROP DATABASE IF EXISTS chufa;
CREATE DATABASE chufa CHARSET=UTF8;
USE chufa;

/*1.用户信息表*/
CREATE TABLE user(
  uid INT PRIMARY KEY AUTO_INCREMENT,  
  uname VARCHAR(32),  #用户名
  upwd VARCHAR(32)    #密码
);

/*2.首页图片表*/
CREATE TABLE index_image(
  Iid INT PRIMARY KEY AUTO_INCREMENT,     #图片编号
  Ititle VARCHAR(32),                     #图片标题
  Isubtitle VARCHAR(32),                  #图片子标题
  Iimg VARCHAR(128)                       #图片路径
);


/*1.1添加用户表*/
INSERT INTO user VALUES(NULL,'tom','123456');
INSERT INTO user VALUES(NULL,'dingding','123456');
INSERT INTO user VALUES(NULL,'yaya','123456');

/*1.2添加首页图片表*/
INSERT INTO index_image VALUES(NULL,'冰岛圣诞之旅','·雷克雅·维克·瓦特纳冰川国家公园·','img/index/bingdao.jpg');
INSERT INTO index_image VALUES(NULL,'布拉格之恋·维也纳之曲','·布拉格·维也纳·','img/index/bulage.jpg');
INSERT INTO index_image VALUES(NULL,'聆听仙境的心跳','·大美长白山·','img/index/changbaishan.jpg');
INSERT INTO index_image VALUES(NULL,'沁人心脾·视觉盛宴','·重庆·','img/index/chongqing.jpg');
INSERT INTO index_image VALUES(NULL,'苍山,洱海,还有你','·大理最佳拍照地点·','img/index/dali.jpg');
INSERT INTO index_image VALUES(NULL,'大漠驼铃梦一场','·敦煌·','img/index/dunhuang.jpg');
INSERT INTO index_image VALUES(NULL,'日本关西-花见之旅','·京都·奈良·大阪·香港·','img/index/guanxi.jpg');
INSERT INTO index_image VALUES(NULL,'带爸妈闯桂林','·桂林·阳朔·','img/index/guilin.jpg');
INSERT INTO index_image VALUES(NULL,'夏日的塞上北国','·呼伦贝尔·','img/index/hulunbeier.jpg');
INSERT INTO index_image VALUES(NULL,'甘肃河西走廊一线牵','·敦煌·嘉峪关·张掖·','img/index/jiayuguan.jpg');
INSERT INTO index_image VALUES(NULL,'错过又要等一年','·2020日本樱花花期预测公布·','img/index/jingdu.jpg');
INSERT INTO index_image VALUES(NULL,'一路只为风景','·拉萨·','img/index/lasa.jpg');
INSERT INTO index_image VALUES(NULL,'伦敦大暴走·地标吸尘器','·伦敦·','img/index/lundun.jpg');
INSERT INTO index_image VALUES(NULL,'玩转天使之城','·洛杉矶·','img/index/luoshanji.jpg');
INSERT INTO index_image VALUES(NULL,'丹青赤水','·泸州·','img/index/luzhou.jpg');
INSERT INTO index_image VALUES(NULL,'三日曼谷','·曼谷·成都·','img/index/mangu.jpg');
INSERT INTO index_image VALUES(NULL,'雪国之美','·莫斯科·圣彼得堡·','img/index/mosike.jpg');
INSERT INTO index_image VALUES(NULL,'奈良之旅','·奈良·','img/index/nailiang.jpg');
INSERT INTO index_image VALUES(NULL,'拥抱风和大海','·普吉岛·','img/index/pujidao.jpg');
INSERT INTO index_image VALUES(NULL,'环骑360km青海湖','·西宁·青海湖·','img/index/qinghai.jpg');
INSERT INTO index_image VALUES(NULL,'梦里水乡','·绍兴·','img/index/shaoxing.jpg');
INSERT INTO index_image VALUES(NULL,'双十一来这里,为你亮灯','·首尔一日购物之旅·','img/index/shouer.jpg');
INSERT INTO index_image VALUES(NULL,'一见诚品误终生','·苏州·','img/index/suzhou.jpg');
INSERT INTO index_image VALUES(NULL,'武夷天游','·武夷山·','img/index/wuyishan.jpg');
INSERT INTO index_image VALUES(NULL,'春意盎然在厦门','·厦门·鼓浪屿·','img/index/xiamen.jpg');
INSERT INTO index_image VALUES(NULL,'玩不够的多彩狮城','·新加坡·','img/index/xinjiepo.jpg');
INSERT INTO index_image VALUES(NULL,'泰北玫瑰·湿身大战','·清莱·清迈·','img/index/yindu.jpg');





















