--
-- 表的结构 `sent_member`
--

DROP TABLE IF EXISTS `t_member`;
CREATE TABLE `t_member` (
  `uid` int(10) UNSIGNED NOT NULL COMMENT '用户ID',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(64) NOT NULL DEFAULT '' COMMENT '用户密码',
  `nickname` char(16) NOT NULL DEFAULT '' COMMENT '昵称',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱地址',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机号码',
  `sex` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '性别',
  `birthday` date NOT NULL DEFAULT '0000-00-00' COMMENT '生日',
  `pos_province` int(11) DEFAULT '0' COMMENT '用户所在省份',
  `pos_city` int(11) DEFAULT '0' COMMENT '用户所在城市',
  `pos_district` int(11) DEFAULT '0' COMMENT '用户所在县城',
  `pos_community` int(11) DEFAULT '0' COMMENT '用户所在区域',
  `salt` varchar(255) NOT NULL DEFAULT '' COMMENT '密码盐值',
  `login` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '登录次数',
  `reg_ip` bigint(20) NOT NULL DEFAULT '0' COMMENT '注册IP',
  `reg_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '注册时间',
  `last_login_ip` bigint(20) NOT NULL DEFAULT '0' COMMENT '最后登录IP',
  `last_login_time` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '会员状态'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员表';

--
-- Indexes for table `sent_member`
--
ALTER TABLE `t_member`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `status` (`status`);

  INSERT INTO `t_member` VALUES ('1', 'admin', 'b204235e942be13c873ba5351cd6fcaa', 'admin', 'admin@admin.com', null, '0', '0000-00-00', '', '0', null, '0', '0', '0', '0', 'jDkSmJ', '6', '0', '1503368960', '2130706433', '1503398504', '1');
