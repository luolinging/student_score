
#
# Structure for table "course"
#

DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `cno` varchar(10) NOT NULL,
  `cname` varchar(20) DEFAULT NULL,
  `credit` double DEFAULT NULL,
  PRIMARY KEY (`cno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "course"
#

INSERT INTO `course` VALUES ('001','高数',4),('002','英语',4);

#
# Structure for table "record"
#

DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `id` varchar(10) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "record"
#

INSERT INTO `record` VALUES (1,'01','罗玲玲','老师好！','2015-10-10'),(2,'02','小红','这学期的成绩不错嘛，哈哈哈','2015-10-10'),(4,'1','admin','管理员回复null:\r\n不错不错，继续努力','2015-10-24'),(5,'01','罗玲玲','哈哈哈哈哈','2015-10-24');

#
# Structure for table "sc"
#

DROP TABLE IF EXISTS `sc`;
CREATE TABLE `sc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` varchar(10) DEFAULT NULL,
  `sname` varchar(20) DEFAULT NULL,
  `cno` varchar(10) DEFAULT NULL,
  `cname` varchar(20) DEFAULT NULL,
  `tid` varchar(10) DEFAULT NULL,
  `credit` double DEFAULT NULL,
  `pscore` double DEFAULT NULL,
  `lscore` double DEFAULT NULL,
  `escore` double DEFAULT NULL,
  `scorejd` double DEFAULT NULL,
  `mc` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "sc"
#

INSERT INTO `sc` VALUES (1,'01','罗玲玲','001','高数','张三',4,80,88,90,NULL,NULL),(2,'01','罗玲玲','002','英语','李四',4,80,88,90,NULL,NULL);

#
# Structure for table "student"
#

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `sid` varchar(10) NOT NULL,
  `sname` varchar(20) DEFAULT NULL,
  `smajor` varchar(20) DEFAULT NULL,
  `sclass` varchar(30) DEFAULT NULL,
  `tcredit` double DEFAULT NULL,
  `tcreditjd` double DEFAULT NULL,
  `ocredit` double DEFAULT NULL,
  `acredit` double DEFAULT NULL,
  `egrade` double DEFAULT NULL,
  `majorpm` int(11) DEFAULT NULL,
  `classpm` int(11) DEFAULT NULL,
  `scode` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "student"
#

INSERT INTO `student` VALUES ('01','罗玲玲','计算机科学与技术系','1班',4,20,0,10,98,1,1,'123456'),('02','小红','生物学','2班',4,20,0,10,98,1,1,'123456');

#
# Structure for table "tc"
#

DROP TABLE IF EXISTS `tc`;
CREATE TABLE `tc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` varchar(10) DEFAULT NULL,
  `tname` varchar(20) DEFAULT NULL,
  `cno` varchar(10) DEFAULT NULL,
  `cname` varchar(20) DEFAULT NULL,
  `credit` double DEFAULT NULL,
  `avscore` double DEFAULT NULL,
  `maxscore` double DEFAULT NULL,
  `minscore` double DEFAULT NULL,
  `cteachno` int(11) DEFAULT NULL,
  `clocation` varchar(30) DEFAULT NULL,
  `ctime` varchar(20) DEFAULT NULL,
  `cmax` int(11) DEFAULT NULL,
  `csel` int(11) DEFAULT NULL,
  `sub` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "tc"
#

INSERT INTO `tc` VALUES (1,'0101','张三','001','高数',4,70,100,0,111,'主楼-501','星期三第一节',100,0,0),(2,'0101','李四','002','英语',4,60,100,0,112,'主楼212','星期三第三节',45,0,0);

#
# Structure for table "teacher"
#

DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `tid` varchar(10) NOT NULL,
  `tname` varchar(20) DEFAULT NULL,
  `tcode` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "teacher"
#

INSERT INTO `teacher` VALUES ('0101','张三','123456'),('0102','李四','123456');

#
# Structure for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(10) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `kind` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "user"
#

INSERT INTO `user` VALUES ('01','罗玲玲','123456','student'),('0101','张三','123456','teacher'),('0102','李四','123456','teacher'),('02','小红','123456','student'),('1','admin','123456','admin');
