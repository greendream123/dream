-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-11-27 12:47:35
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
-- Database: `chufa`
--
SET NAMES UTF8;
DROP DATABASE IF EXISTS chufa;
CREATE DATABASE chufa CHARSET=UTF8;
USE chufa;
-- --------------------------------------------------------

--
-- 表的结构 `destination_c`
--

CREATE TABLE `destination_c` (
  `Did` int(11) NOT NULL,
  `Dimg` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `destination_c`
--

INSERT INTO `destination_c` (`Did`, `Dimg`) VALUES
(1, 'img/destination_c/beijing.jpg'),
(2, 'img/destination_c/shanghai.jpg'),
(3, 'img/destination_c/taibei.jpg'),
(4, 'img/destination_c/xianggang.jpg'),
(5, 'img/destination_c/hangzhou.jpg'),
(6, 'img/destination_c/lijiang.jpg'),
(7, 'img/destination_c/chengdu.jpg'),
(8, 'img/destination_c/chongqing.jpg'),
(9, 'img/destination_c/aomen.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `destination_f`
--

CREATE TABLE `destination_f` (
  `Did` int(11) NOT NULL,
  `Dimg` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `destination_f`
--

INSERT INTO `destination_f` (`Did`, `Dimg`) VALUES
(1, 'img/destination_f/daban.jpg'),
(2, 'img/destination_f/dongjing.jpg'),
(3, 'img/destination_f/jingdu.jpg'),
(4, 'img/destination_f/lundun.jpg'),
(5, 'img/destination_f/mangu.jpg'),
(6, 'img/destination_f/pujidao.jpg'),
(7, 'img/destination_f/qingmai.jpg'),
(8, 'img/destination_f/shouer.jpg'),
(9, 'img/destination_f/xinjiapo.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `dingzhi_banner1`
--

CREATE TABLE `dingzhi_banner1` (
  `pid` int(11) NOT NULL,
  `pic` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dingzhi_banner1`
--

INSERT INTO `dingzhi_banner1` (`pid`, `pic`) VALUES
(1, 'img/dingzhi_banner1/banner001.jpg'),
(2, 'img/dingzhi_banner1/banner002.jpg'),
(3, 'img/dingzhi_banner1/banner003.jpg'),
(4, 'img/dingzhi_banner1/banner004.jpg'),
(5, 'img/dingzhi_banner1/banner005.jpg'),
(6, 'img/dingzhi_banner1/banner006.jpg'),
(7, 'img/dingzhi_banner1/banner007.jpg'),
(8, 'img/dingzhi_banner1/banner008.jpg'),
(9, 'img/dingzhi_banner1/banner009.jpg'),
(10, 'img/dingzhi_banner1/banner010.jpg'),
(11, 'img/dingzhi_banner1/banner011.jpg'),
(12, 'img/dingzhi_banner1/banner012.jpg'),
(13, 'img/dingzhi_banner1/banner013.jpg'),
(14, 'img/dingzhi_banner1/banner014.jpg'),
(15, 'img/dingzhi_banner1/banner015.jpg'),
(16, 'img/dingzhi_banner1/banner016.jpg'),
(17, 'img/dingzhi_banner1/banner017.jpg'),
(18, 'img/dingzhi_banner1/banner018.jpg'),
(19, 'img/dingzhi_banner1/banner019.jpg'),
(20, 'img/dingzhi_banner1/banner020.jpg'),
(21, 'img/dingzhi_banner1/banner021.jpg'),
(22, 'img/dingzhi_banner1/banner022.jpg'),
(23, 'img/dingzhi_banner1/banner023.jpg'),
(24, 'img/dingzhi_banner1/banner024.jpg'),
(25, 'img/dingzhi_banner1/banner025.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `dingzhi_banner2`
--

CREATE TABLE `dingzhi_banner2` (
  `pid` int(11) NOT NULL,
  `pic` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dingzhi_banner2`
--

INSERT INTO `dingzhi_banner2` (`pid`, `pic`) VALUES
(1, 'img/dingzhi_banner2/teacher01.jpg'),
(2, 'img/dingzhi_banner2/teacher02.jpg'),
(3, 'img/dingzhi_banner2/teacher03.jpg'),
(4, 'img/dingzhi_banner2/teacher04.jpg'),
(5, 'img/dingzhi_banner2/teacher05.jpg'),
(6, 'img/dingzhi_banner2/teacher06.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `dingzhi_banner3`
--

CREATE TABLE `dingzhi_banner3` (
  `pid` int(11) NOT NULL,
  `pic` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dingzhi_banner3`
--

INSERT INTO `dingzhi_banner3` (`pid`, `pic`) VALUES
(1, 'img/dingzhi_banner3/zengxuan01.jpg'),
(2, 'img/dingzhi_banner3/zengxuan02.jpg'),
(3, 'img/dingzhi_banner3/zengxuan03.jpg'),
(4, 'img/dingzhi_banner3/zengxuan04.jpg'),
(5, 'img/dingzhi_banner3/zengxuan05.jpg'),
(6, 'img/dingzhi_banner3/zengxuan06.jpg'),
(7, 'img/dingzhi_banner3/zengxuan07.jpg'),
(8, 'img/dingzhi_banner3/zengxuan08.jpg'),
(9, 'img/dingzhi_banner3/zengxuan09.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `index_image`
--

CREATE TABLE `index_image` (
  `Iid` int(11) NOT NULL,
  `Ititle` varchar(32) DEFAULT NULL,
  `Isubtitle` varchar(32) DEFAULT NULL,
  `Iimg` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `index_image`
--

INSERT INTO `index_image` (`Iid`, `Ititle`, `Isubtitle`, `Iimg`) VALUES
(1, '冰岛圣诞之旅', '·雷克雅·维克·瓦特纳冰川国家公园·', 'img/index/bingdao.jpg'),
(2, '布拉格之恋·维也纳之曲', '·布拉格·维也纳·', 'img/index/bulage.jpg'),
(3, '聆听仙境的心跳', '·大美长白山·', 'img/index/changbaishan.jpg'),
(4, '沁人心脾·视觉盛宴', '·重庆·', 'img/index/chongqing.jpg'),
(5, '苍山,洱海,还有你', '·大理最佳拍照地点·', 'img/index/dali.jpg'),
(6, '大漠驼铃梦一场', '·敦煌·', 'img/index/dunhuang.jpg'),
(7, '日本关西-花见之旅', '·京都·奈良·大阪·香港·', 'img/index/guanxi.jpg'),
(8, '带爸妈闯桂林', '·桂林·阳朔·', 'img/index/guilin.jpg'),
(9, '夏日的塞上北国', '·呼伦贝尔·', 'img/index/hulunbeier.jpg'),
(10, '甘肃河西走廊一线牵', '·敦煌·嘉峪关·张掖·', 'img/index/jiayuguan.jpg'),
(11, '错过又要等一年', '·2020日本樱花花期预测公布·', 'img/index/jingdu.jpg'),
(12, '一路只为风景', '·拉萨·', 'img/index/lasa.jpg'),
(13, '伦敦大暴走·地标吸尘器', '·伦敦·', 'img/index/lundun.jpg'),
(14, '玩转天使之城', '·洛杉矶·', 'img/index/luoshanji.jpg'),
(15, '丹青赤水', '·泸州·', 'img/index/luzhou.jpg'),
(16, '三日曼谷', '·曼谷·成都·', 'img/index/mangu.jpg'),
(17, '雪国之美', '·莫斯科·圣彼得堡·', 'img/index/mosike.jpg'),
(18, '奈良之旅', '·奈良·', 'img/index/nailiang.jpg'),
(19, '拥抱风和大海', '·普吉岛·', 'img/index/pujidao.jpg'),
(20, '环骑360km青海湖', '·西宁·青海湖·', 'img/index/qinghai.jpg'),
(21, '梦里水乡', '·绍兴·', 'img/index/shaoxing.jpg'),
(22, '双十一来这里,为你亮灯', '·首尔一日购物之旅·', 'img/index/shouer.jpg'),
(23, '一见诚品误终生', '·苏州·', 'img/index/suzhou.jpg'),
(24, '武夷天游', '·武夷山·', 'img/index/wuyishan.jpg'),
(25, '春意盎然在厦门', '·厦门·鼓浪屿·', 'img/index/xiamen.jpg'),
(26, '玩不够的多彩狮城', '·新加坡·', 'img/index/xinjiepo.jpg'),
(27, '泰北玫瑰·湿身大战', '·清莱·清迈·', 'img/index/yindu.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`uid`, `uname`, `upwd`, `email`) VALUES
(1, 'tom', '123456', 'tom@163.com'),
(2, 'dingding', '123456', 'dingding@163.com'),
(3, 'yaya', '123456', 'yaya@163.com');

-- --------------------------------------------------------

--
-- 表的结构 `wgx_banner1`
--

CREATE TABLE `wgx_banner1` (
  `pid` int(11) NOT NULL,
  `pic` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `wgx_banner1`
--

INSERT INTO `wgx_banner1` (`pid`, `pic`) VALUES
(1, 'img/dingzhi_wgx/banner001.jpg'),
(2, 'img/dingzhi_wgx/banner002.jpg'),
(3, 'img/dingzhi_wgx/banner003.jpg'),
(4, 'img/dingzhi_wgx/banner004.jpg'),
(5, 'img/dingzhi_wgx/banner005.jpg'),
(6, 'img/dingzhi_wgx/banner006.jpg'),
(7, 'img/dingzhi_wgx/banner007.jpg'),
(8, 'img/dingzhi_wgx/banner008.jpg'),
(9, 'img/dingzhi_wgx/banner009.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `wgx_banner2`
--

CREATE TABLE `wgx_banner2` (
  `pid` int(11) NOT NULL,
  `pic` varchar(64) NOT NULL,
  `pname` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `wgx_banner2`
--

INSERT INTO `wgx_banner2` (`pid`, `pic`, `pname`) VALUES
(1, 'img/dingzhi_wgx/teacher01.jpg', '许佳佳'),
(2, 'img/dingzhi_wgx/teacher02.jpg', '张旭'),
(3, 'img/dingzhi_wgx/teacher03.jpg', '甘海秋'),
(4, 'img/dingzhi_wgx/teacher04.jpg', '于岚'),
(5, 'img/dingzhi_wgx/teacher05.jpg', '张宁'),
(6, 'img/dingzhi_wgx/teacher06.jpg', '果小桃');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `destination_c`
--
ALTER TABLE `destination_c`
  ADD PRIMARY KEY (`Did`);

--
-- Indexes for table `destination_f`
--
ALTER TABLE `destination_f`
  ADD PRIMARY KEY (`Did`);

--
-- Indexes for table `dingzhi_banner1`
--
ALTER TABLE `dingzhi_banner1`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `dingzhi_banner2`
--
ALTER TABLE `dingzhi_banner2`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `dingzhi_banner3`
--
ALTER TABLE `dingzhi_banner3`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `index_image`
--
ALTER TABLE `index_image`
  ADD PRIMARY KEY (`Iid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `wgx_banner1`
--
ALTER TABLE `wgx_banner1`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `wgx_banner2`
--
ALTER TABLE `wgx_banner2`
  ADD PRIMARY KEY (`pid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `destination_c`
--
ALTER TABLE `destination_c`
  MODIFY `Did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用表AUTO_INCREMENT `destination_f`
--
ALTER TABLE `destination_f`
  MODIFY `Did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用表AUTO_INCREMENT `index_image`
--
ALTER TABLE `index_image`
  MODIFY `Iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
