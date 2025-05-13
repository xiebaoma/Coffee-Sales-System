CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `userid` bigint(20) NOT NULL COMMENT '用户ID',
  `address` varchar(200) NOT NULL COMMENT '详细地址',
  `name` varchar(200) NOT NULL COMMENT '收货人姓名',
  `phone` varchar(200) NOT NULL COMMENT '联系电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户地址表';

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `tablename` varchar(200) DEFAULT 'kafeixinxi' COMMENT '表名',
  `userid` bigint(20) NOT NULL COMMENT '用户ID',
  `goodid` bigint(20) NOT NULL COMMENT '商品ID',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) DEFAULT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '价格',
  `discountprice` float DEFAULT NULL COMMENT '折扣价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='购物车表';

CREATE TABLE `kafeixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `price` float DEFAULT NULL COMMENT '价格',
  `discountprice` float DEFAULT NULL COMMENT '折扣价',
  `goodnumber` int(11) DEFAULT NULL COMMENT '库存数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='咖啡信息表';

CREATE TABLE `order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `userid` bigint(20) NOT NULL COMMENT '用户ID',
  `addressid` bigint(20) NOT NULL COMMENT '地址ID',
  `goodid` bigint(20) NOT NULL COMMENT '商品ID',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) DEFAULT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '价格',
  `discountprice` float DEFAULT NULL COMMENT '折扣价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='订单表';

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `phone` varchar(200) NOT NULL COMMENT '手机号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(100) NOT NULL COMMENT '配置名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='系统配置表';

CREATE TABLE `kafeileixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `kafeileixing` varchar(200) NOT NULL COMMENT '咖啡类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='咖啡类型表';

CREATE TABLE `kafeiorder` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `userid` bigint(20) NOT NULL COMMENT '用户ID',
  `addressid` bigint(20) NOT NULL COMMENT '地址ID',
  `goodid` bigint(20) NOT NULL COMMENT '商品ID',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) DEFAULT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '价格',
  `discountprice` float DEFAULT NULL COMMENT '折扣价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='咖啡订单表';

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='新闻表';

INSERT INTO `address` (`userid`, `address`, `name`, `phone`, `isdefault`) VALUES
(1, '北京市朝阳区建国路88号', '张三', '13800138000', '是'),
(2, '上海市浦东新区陆家嘴环路1000号', '李四', '13900139000', '否'),
(3, '广州市天河区体育西路189号', '王五', '13700137000', '是');

INSERT INTO `cart` (`userid`, `goodid`, `goodname`, `picture`, `buynumber`, `price`, `discountprice`) VALUES
(1, 101, '美式咖啡', 'images/coffee1.jpg', 2, 25.00, 20.00),
(2, 102, '拿铁咖啡', 'images/coffee2.jpg', 1, 30.00, 28.00),
(3, 103, '卡布奇诺', 'images/coffee3.jpg', 3, 28.00, 25.00);

INSERT INTO `config` (`name`, `value`) VALUES
('site_name', '咖啡商城'),
('delivery_fee', '5.00'),
('promotion_active', 'true');

INSERT INTO `kafeileixing` (`kafeileixing`) VALUES
('浓缩咖啡'),
('美式咖啡'),
('拿铁咖啡'),
('卡布奇诺'),
('摩卡咖啡');

INSERT INTO `news` (`title`, `introduction`, `picture`, `content`) VALUES
('新品上市：夏日特调冰咖啡', '我们推出了全新的夏日特调系列', 'images/news1.jpg', '详细内容介绍新品咖啡的特点和制作工艺...'),
('咖啡豆产地探访', '带您了解我们咖啡豆的优质产地', 'images/news2.jpg', '详细介绍咖啡豆产地的环境和种植过程...'),
('会员优惠活动', '即日起会员可享受8折优惠', 'images/news3.jpg', '详细说明会员优惠活动的规则和参与方式...');