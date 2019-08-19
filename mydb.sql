/*
Navicat MySQL Data Transfer

Source Server         : db
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : mydb

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2017-06-18 17:54:12
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `cart`
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `name` text,
  `num` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for `count`
-- ----------------------------
DROP TABLE IF EXISTS `count`;
CREATE TABLE `count` (
  `count` int(255) NOT NULL,
  PRIMARY KEY (`count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of count
-- ----------------------------
INSERT INTO count VALUES ('123');

-- ----------------------------
-- Table structure for `guestbook`
-- ----------------------------
DROP TABLE IF EXISTS `guestbook`;
CREATE TABLE `guestbook` (
  `no` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `content` text,
  `putdate` date DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guestbook
-- ----------------------------
INSERT INTO guestbook VALUES ('1', '123', '3', 'Many 50', '哈哈哈', '2017-06-05', '0:0:0:0:0:0:0:1');
INSERT INTO guestbook VALUES ('52', 'gino4279245', '4', 'Racing-King-180', '不錯不錯', '2017-06-10', '114.37.66.139');
INSERT INTO guestbook VALUES ('58', '123', '4', 'Many-50', '測試測試', '2017-06-16', '114.37.75.76');
INSERT INTO guestbook VALUES ('59', 'cain', '3', 'G6-125', '454', '2017-06-17', '140.135.113.249');
INSERT INTO guestbook VALUES ('60', '753', '5', 'Many-50', '測試測試測試', '2017-06-17', '140.135.113.249');
INSERT INTO guestbook VALUES ('61', '426', '2', 'Many-50', '測試', '2017-06-17', '220.136.251.91');
INSERT INTO guestbook VALUES ('62', 'kk123', '1', 'VJR-110', 'test', '2017-06-17', '1.163.7.222');
INSERT INTO guestbook VALUES ('64', 'tt', '1', 'Racing-S-125', 'tttt', '2017-06-17', '140.135.242.192');
INSERT INTO guestbook VALUES ('65', '456', '3', 'Racing-King-180', 'werwqr2e4qe', '2017-06-17', '140.135.113.249');
INSERT INTO guestbook VALUES ('66', '7788', '2', 'G6-125', 'sdqjwoqw', '2017-06-17', '140.135.198.37');

-- ----------------------------
-- Table structure for `manager`
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `id` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO manager VALUES ('123', '123');
INSERT INTO manager VALUES ('789', '789');
INSERT INTO manager VALUES ('789', null);

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `no` int(255) NOT NULL AUTO_INCREMENT,
  `productname` varchar(255) DEFAULT NULL,
  `num` int(255) NOT NULL,
  `total` int(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `payment` varchar(255) DEFAULT NULL,
  `id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`no`,`num`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO orders VALUES ('2', 'Many-50', '1', '75000', 'bigC', '0954878787', 'wl6m06g4', '貨到付款', 'big123');
INSERT INTO orders VALUES ('5', 'Racing-King-180', '2', '100000', 'bigC', '0954878787', '玉山峰頂', '信用卡繳費', 'big123');
INSERT INTO orders VALUES ('8', 'VJR-110', '2', '120000', '林韋成', '878787', '宜蘭', '貨到付款', '878787');
INSERT INTO orders VALUES ('37', 'Racing-King-180', '1', '100000', '123', '123', '123', '貨到付款', 'gino4279245');
INSERT INTO orders VALUES ('40', 'Racing-S-125', '1', '75000', 'JJ', '09456', '中原大學', '貨到付款', '093336');
INSERT INTO orders VALUES ('43', 'Many-50', '3', '225000', '123', '123', '123', '貨到付款', 'cain');
INSERT INTO orders VALUES ('46', 'Many-50', '1', '75000', '大基哥又來了', '0988888888', '台灣海峽黑水溝', '信用卡繳費', '426');
INSERT INTO orders VALUES ('47', 'G6-125', '1', '80000', '大基哥又來了', '0988888888', '台灣海峽黑水溝', '信用卡繳費', '426');
INSERT INTO orders VALUES ('48', 'Racing-S-125', '1', '75000', 'GAYKIM', '0905813218', '中原大學', '貨到付款', '15');
INSERT INTO orders VALUES ('49', 'Many-50', '2', '150000', 'gino', '12345678', '中壢', '貨到付款', '123');
INSERT INTO orders VALUES ('51', 'G6-125', '20', '80000', 'q', 'q', 'q', '貨到付款', 's');
INSERT INTO orders VALUES ('52', 'Racing-S-125', '97', '75000', 'q', 'q', 'q', '貨到付款', 's');
INSERT INTO orders VALUES ('53', 'Many-50', '5', '375000', '小陳', '0800123123', '台南', '貨到付款', '123');

-- ----------------------------
-- Table structure for `products`
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `no` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `cc` varchar(255) NOT NULL,
  `attribute1` varchar(255) DEFAULT NULL,
  `attribute2` varchar(255) DEFAULT NULL,
  `price` varchar(255) NOT NULL,
  `storage` varchar(255) DEFAULT NULL,
  `img1` varchar(255) DEFAULT NULL,
  `img2` varchar(255) DEFAULT NULL,
  `img3` varchar(255) DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `hit` int(255) DEFAULT NULL,
  `introduce` varchar(255) NOT NULL,
  PRIMARY KEY (`no`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO products VALUES ('1', 'Many-50', '車 輛 重 量 93kg', '110ml', 'ECU控制全晶體式點', '3V50空冷引擎', '75000', '81', 'images/01.png', 'images/bike002.jpg', 'images/bike0002.jpg', '最亮眼\"移動時尚\"，科技與流行美學的結合', 'https://www.youtube.com/watch?v=EUyPEpV17TQ', '22', 'KYMCO 最新MANY 50是最亮眼「移動時尚」，它經典流行車身曲線以及3汽門(3V)噴射科技動力，集科技與流行美學於一身，新款高質感織皮紋坐墊，看起來美觀、坐起來舒適。');
INSERT INTO products VALUES ('2', 'G6-125', '125kg(整備重)', '124.8 ml', '全晶式電子點火', '引擎型式 SR25', '80000', '87', 'images/03.png', 'images/bike003.jpg', 'images/bike0003.jpg', 'V.A.C.S可變進氣戰斧引擎鋒芒內斂的騎士精神!', 'https://www.youtube.com/watch?v=pfjcLUkt0EQ', '50', '除了先天的四閥門高轉速引擎優勢，G6  125導入VACS可變進氣戰斧引擎， 大幅提升引擎中低速域的馬力與扭力，也達到更佳油耗表現； 獨特的鷹眼造型位置燈辨識度超高，以速度決定跑格， 以特別成就自我風格，STYLE不由別人定義，由自己決定!');
INSERT INTO products VALUES ('3', 'Racing-S-125', '整備重 131kg', '124.8ml', '噴射系統 京濱系統', '傳動系統 CVT', '75000', '0', 'images/04.png', 'images/bike004.jpg', 'images/bike0004.jpg', '都會型男，仿賽時尚跑旅，騎出型男味', 'https://www.youtube.com/watch?v=tACR5RMHne0', '12', '都會型男的品味與風格，來自生活中的每個細節。\r\n\r\nRacing S重裝登場，多層次曲面設計，凸顯霸氣仿賽風格。重新演繹新雷霆奢華質感，輕鬆展現型男質感魅力！');
INSERT INTO products VALUES ('4', 'Racing-King-180', '129kg(乾燥重）', '175.1ml', 'ECU控制全晶式點火', '乾式離心式', '100000', '97', 'images/05.png', 'images/bike005.jpg', 'images/bike0005.jpg', '彎道之王，超殺彎道的最佳座駕', 'https://www.youtube.com/watch?v=R_mDooU_t14', '12', 'RACING KING 180 ABS搭載BOSCH最新9.1代ABS科技， 與BMW重車同級！ 並針對RACING KING 180前後三碟配置進行最佳化調校， 讓每一次剎車都能達到重機級的安全性， 成為安全制動的最高標準！');
INSERT INTO products VALUES ('5', '超級金牌-150-2017', '125kg(整備重)', '149.6ml', 'ECU控制全晶體式點火', 'CTV無段自動變速', '95000', '99', 'images/06.png', 'images/bike006.jpg', 'images/bike0006.jpg', '強固耐戰，硬底子，再艱難得挑戰都有我陪你一起搞定', 'https://www.youtube.com/watch?v=cFxCpbCpgio', '14', 'DP雙層專利悍馬車架結構紮實穩固，  配合載重專用胎相得益彰更能有效負重， 強化型雙後避震器有效吸震讓載運過程更加穩定不搖晃， 首創快拆式多功能後座墊，拆除椅墊即轉換貨架平台， 載運效能大大提昇!');
INSERT INTO products VALUES ('6', 'VJR-110', '空 重 100kg', '125', 'ECU控制全晶式點火', '乾式離心式', '60000', '0', 'images/02.png', 'images/bike001.jpg', 'images/bike0001.jpg', '競速小鋼炮，青春熱血刷出我的存在感', 'https://www.youtube.com/watch?v=wr9JQYTRVps', '11', '年輕！就是要以熱情刻劃走過的痕跡！VJR110的俐落設計搭配個性有勁的配色，成為街頭上最具個性的化身，輕巧車身任我穿梭城市每個角落，靈活操駕不受限！啟動飛行儀表，也點燃我的態度，以耀眼玩酷的美學光線向世人宣告我的存在，用浪花碟和複筒避震器克服崎嶇巔跛的路面，一路往前，勇敢刷出我的存在感！');

-- ----------------------------
-- Table structure for `randad`
-- ----------------------------
DROP TABLE IF EXISTS `randad`;
CREATE TABLE `randad` (
  `ADID` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `file_path` varchar(20) NOT NULL,
  `ad_file` varchar(20) NOT NULL,
  `link` varchar(30) NOT NULL,
  `Alternate` text NOT NULL,
  `ADContent` text NOT NULL,
  PRIMARY KEY (`ADID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of randad
-- ----------------------------
INSERT INTO randad VALUES ('1', 'images', '01.GIF', 'shopping.pchome.com.tw', 'pchome網路購物', 'pchome網路購物');
INSERT INTO randad VALUES ('2', 'images', '02.GIF', 'tw.yahoo.com', 'yahoo', 'yahoo');
INSERT INTO randad VALUES ('3', 'images', '03.GIF', 'und.com', '聯合新聞網', '聯合新聞網');

-- ----------------------------
-- Table structure for `register`
-- ----------------------------
DROP TABLE IF EXISTS `register`;
CREATE TABLE `register` (
  `name` varchar(255) NOT NULL,
  `id` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of register
-- ----------------------------
INSERT INTO register VALUES ('SUE', '093336', '093336', '09456', '123@mail.com');
INSERT INTO register VALUES ('123', '123', '123', '123123123', '123@123');
INSERT INTO register VALUES ('15GAYGAYDER', '15', '15', '15', '15@15');
INSERT INTO register VALUES ('789', '426', '426', '426', '426@123');
INSERT INTO register VALUES ('456', '456', '456', '456', '456@456');
INSERT INTO register VALUES ('654', '654', '654', '654', '456@456');
INSERT INTO register VALUES ('123', '753', '123', '123', '753@123');
INSERT INTO register VALUES ('å°æ', '7788', '7788', '0978888888', '12344@gmail.com');
INSERT INTO register VALUES ('金沅禹假假', '878787', '878787', '878787', '878787@87');
INSERT INTO register VALUES ('a', 'a', 'a', 'a', 'joyhung1993@gmail.com');
INSERT INTO register VALUES ('哈', 'abc123', '123', '123', '123@123');
INSERT INTO register VALUES ('bigC', 'big123', 'big456', '0954878787', 'bigC@gmail.com');
INSERT INTO register VALUES ('cain', 'cain', 'cain', '0987542682', 'cain@cain');
INSERT INTO register VALUES ('ggggggggggg', 'gg', 'gg', 'gg', 'gg@ggg');
INSERT INTO register VALUES ('金沅禹', 'gino4279245', 'g86i03n26o', '0905813218', 'gino4279245@gmail.com');
INSERT INTO register VALUES ('甲甲', 'ginoisgay', 'ginoisgay', '0987654321', '1@1');
INSERT INTO register VALUES ('123', 'jsp123123', '456789', '123456', '123@123');
INSERT INTO register VALUES ('kk', 'kk123', 'kk123', '000', '0123@123');
INSERT INTO register VALUES ('羅二', 'luo0708', '19970708randy', '0912345678', 'aorig@gmail.com');
INSERT INTO register VALUES ('蘇彥同', 'qwert093336', 'qwert093336', '020056', 'acb@gmail.com.tw');
INSERT INTO register VALUES ('s', 's', 's', '0921993530', 'joyhung1993@gmail.com');
INSERT INTO register VALUES ('tigerzhao', 'tigerzhao', 'tigerzhao', 'tigerzhao', 'tigerzhao@tigerz');
INSERT INTO register VALUES ('蘇彥彤', 'yentung', '123', '1', '1@123');
