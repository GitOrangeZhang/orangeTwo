/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.15 : Database - car_firm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`car_firm` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `car_firm`;

/*Table structure for table `administrators` */

DROP TABLE IF EXISTS `administrators`;

CREATE TABLE `administrators` (
  `adminId` int(20) NOT NULL AUTO_INCREMENT,
  `adminName` varchar(30) DEFAULT NULL,
  `adminPassword` varchar(30) DEFAULT NULL,
  `adminGender` varchar(30) DEFAULT NULL,
  `adminTel` varchar(30) DEFAULT NULL,
  `adminGrade` int(20) DEFAULT NULL,
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `administrators` */

insert  into `administrators`(`adminId`,`adminName`,`adminPassword`,`adminGender`,`adminTel`,`adminGrade`) values (1,'张橙','123','男','13891876436',1),(2,'郝峥','123','男','13592185352',2);

/*Table structure for table `applyfor` */

DROP TABLE IF EXISTS `applyfor`;

CREATE TABLE `applyfor` (
  `applyForId` int(20) NOT NULL AUTO_INCREMENT,
  `recruitId` int(20) DEFAULT NULL,
  `userId` int(20) DEFAULT NULL,
  `userRealName` varchar(30) DEFAULT NULL,
  `birthday` varchar(30) DEFAULT NULL,
  `userPic` varchar(30) DEFAULT NULL,
  `userAdress` varchar(50) DEFAULT NULL,
  `userQualification` varchar(20) DEFAULT NULL,
  `userIDCardNumber` varchar(30) DEFAULT NULL,
  `workExperience` varchar(300) DEFAULT NULL,
  `selfEvaluation` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`applyForId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `applyfor` */

insert  into `applyfor`(`applyForId`,`recruitId`,`userId`,`userRealName`,`birthday`,`userPic`,`userAdress`,`userQualification`,`userIDCardNumber`,`workExperience`,`selfEvaluation`) values (1,1,3,'李四五','1988-10','001.png','草场坡','本科','610122198810115482','2011-2013在飞翔二手车任职二手车评估师。2013-2015在辉煌二手车担任二手车评估师','交际能力强，适应能力强，对待客户认真.....');

/*Table structure for table `car` */

DROP TABLE IF EXISTS `car`;

CREATE TABLE `car` (
  `carId` int(20) NOT NULL AUTO_INCREMENT,
  `cartypeId` int(20) DEFAULT NULL,
  `carbrandId` int(20) DEFAULT NULL,
  `carPrice` int(20) DEFAULT NULL,
  `carMarketTime` varchar(30) DEFAULT NULL,
  `carSynopsis` varchar(200) DEFAULT NULL,
  `carPic` varchar(30) DEFAULT NULL,
  `carVersion` varchar(200) DEFAULT NULL,
  `otherMessage` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`carId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `car` */

insert  into `car`(`carId`,`cartypeId`,`carbrandId`,`carPrice`,`carMarketTime`,`carSynopsis`,`carPic`,`carVersion`,`otherMessage`) values (1,5,4,380000,'2011-3','经检测，该车覆盖件有做漆、钣金痕迹，变速箱正常，无怠速抖动，转向无乏力感。内饰整洁，无异味。车辆骨架完好，排除事故车。发动机正常。底盘无异响。','benzs300.jpg','2010款 S 300 L 3.0 自动 尊贵型(进口)','122000km'),(2,7,3,437800,'2015-12','经检测，该车底盘无异响。变速箱正常，无怠速抖动，转向无乏力感。内饰整洁，无异味。发动机正常。全车原厂漆，无钣金修复，覆盖件无更换。车辆骨架完好，排除事故车。该车为4S店试驾车 试驾记录较少 公里数很少 车况优等。','tt.jpg','2015款 TT Coupe 2.0TFSI 双离合 45TFSI（进口）','3000km'),(3,1,5,648000,'2016-7','经检测，该车美女一手车，车况精品，无钣金喷漆，全车原版，全程4S店保养，记录可查，发动机没有渗油，无明显色差，车电子设备正常，喜欢的朋友，请尽快联系吧！好车不等人啊！','bmwx5.jpg','2015款 X5 xDrive28i 2.0T 自动（进口）','13000km'),(4,7,7,290000,'2015-6','经检测，该车为女士一手车，覆盖件有做漆痕迹，内饰干净整洁，无异味。车辆骨架完好，排除事故车。变速箱正常，无怠速抖动，转向无乏力感。发动机正常，动力充足。底盘无异响。双保险。','fordym.jpg','野马 2015款 野马 2.3T 自动 性能版(进口)','39000km'),(5,5,8,699000,'2010-3','经检测，该车变速箱正常，无怠速抖动，转向无乏力感。底盘无异响。内饰整洁，无异味。发动机正常。全车原厂漆，无钣金修复，覆盖件无更换。车辆骨架完好，排除事故车。','maszc.jpg','总裁 2010款 4.7 自动 行政版(进口)','23000km'),(6,5,5,540000,'2011-10','经检测，该车车辆骨架完好，排除事故车。发动机正常。底盘无异响。全车原厂漆，无钣金修复，覆盖件无更换。内饰整洁，无异味。变速箱正常，无怠速抖动，转向无乏力感。','bmw740.jpg','7系 2011款 740Li 3.0T 自动 施坦威限量版(进口)','87000km'),(7,5,1,690000,'2013-7','经检测，该车外观有轻微缺陷，车辆骨架完好，排除事故车。内饰整洁，无异味。底盘无异响。变速箱正常，无怠速抖动，转向无乏力感。发动机正常。','huiteng.jpg','辉腾 2012款 辉腾 4.2 自动 奢享定制型(进口)','60000km'),(9,2,1,108000,'2015-1-1','经检测，该车部分覆盖件更换，车辆骨架完好，排除事故车。发动机正常。底盘无异响。内饰整洁，无异味。变速箱正常，无怠速抖动，转向无乏力感。','golf1.4t.jpg','2014款 高尔夫7 1.4TSI手动时尚型','29800km'),(10,5,2,550000,'2010-9','经检测，该车覆盖件有做漆痕迹，部分覆盖件更换，发动机正常。底盘无异响。内饰整洁，无异味。变速箱正常，无怠速抖动，转向无乏力感。车辆骨架完好，排除事故车。凸轮轴控制器更换，右前翼子板更换，右前大灯更换。','Panamera.jpg','Panamera 2010款 帕纳美拉 S 4.8 双离合（进口）','89600');

/*Table structure for table `carbrand` */

DROP TABLE IF EXISTS `carbrand`;

CREATE TABLE `carbrand` (
  `carbrandId` int(20) NOT NULL AUTO_INCREMENT,
  `carbrandName` varchar(30) DEFAULT NULL,
  `carbrandInitiator` varchar(30) DEFAULT NULL,
  `initiatorTime` varchar(30) DEFAULT NULL,
  `carbrandPic` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`carbrandId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `carbrand` */

insert  into `carbrand`(`carbrandId`,`carbrandName`,`carbrandInitiator`,`initiatorTime`,`carbrandPic`) values (1,'大众','费迪南德·保时捷','1938-9-16','vw.jpg'),(2,'保时捷','费迪南德·保时捷','1930-5-5','porsche.jpg'),(3,'奥迪','奥古斯特·霍希','1909-6-16','audi.jpg'),(4,'奔驰','戈特利布·戴姆勒','1871-5-5','benz.png'),(5,'宝马','吉斯坦·奥托','1916-3-7','bmw.png'),(6,'兰博基尼','费鲁吉欧·兰博基尼','1963-5-5','lamborghini.jpg'),(7,'福特','亨利·福特','1903-5-5','ford.jpg'),(8,'玛莎拉蒂','卡罗·玛莎拉蒂','1914-12-1','maserati.jpg');

/*Table structure for table `cartype` */

DROP TABLE IF EXISTS `cartype`;

CREATE TABLE `cartype` (
  `cartypeId` int(20) NOT NULL AUTO_INCREMENT,
  `cartypeName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cartypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `cartype` */

insert  into `cartype`(`cartypeId`,`cartypeName`) values (1,'SUV'),(2,'紧凑型'),(3,'中型车'),(4,'中大型车'),(5,'大型车'),(6,'mpv'),(7,'跑车'),(9,'皮卡');

/*Table structure for table `corporate_culture` */

DROP TABLE IF EXISTS `corporate_culture`;

CREATE TABLE `corporate_culture` (
  `ccId` int(20) NOT NULL AUTO_INCREMENT,
  `corporationName` varchar(30) DEFAULT NULL,
  `corporationOverview` varchar(800) DEFAULT NULL,
  `brandHistory` varchar(800) DEFAULT NULL,
  `brandPromise` varchar(800) DEFAULT NULL,
  `corporationPic` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ccId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `corporate_culture` */

insert  into `corporate_culture`(`ccId`,`corporationName`,`corporationOverview`,`brandHistory`,`brandPromise`,`corporationPic`) values (1,'傻子二手车','傻子二手车2015年9月27日正式上线。目前，傻子二手车实时在售个人车源量超过12万台；覆盖全国28个省份、179个城市，通过卫星城策略服务能力覆盖208个城市，城市扩张增速持续保持行业第一；在傻子二手车主力覆盖的179个城市中，有170个城市的交易量为行业第一。目前傻子二手车已经覆盖200多个城市，2015交易额累计超过37亿元。','9月27日，本月初傻子二手车上线以来获得高人气关注。数据显示，上线仅十天的傻子二手车网站，日均UV（网页浏览量）已超过100万。傻子二手车前身是赶集好车，58赶集联席CEO杨浩涌早前宣布未来一年将对网站投入10亿元用于二手车市场的品牌渗透和城市覆盖。','精选8年15万公里以内的个人二手车，保证最佳车况','shazilogo.png');

/*Table structure for table `leaveword` */

DROP TABLE IF EXISTS `leaveword`;

CREATE TABLE `leaveword` (
  `leaveWordId` int(20) NOT NULL AUTO_INCREMENT,
  `leaveWordMessage` varchar(300) DEFAULT NULL,
  `leaveWordTime` varchar(30) DEFAULT NULL,
  `userId` int(20) DEFAULT NULL,
  PRIMARY KEY (`leaveWordId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `leaveword` */

insert  into `leaveword`(`leaveWordId`,`leaveWordMessage`,`leaveWordTime`,`userId`) values (1,'怎么没有路虎，来点路虎信息','2016-11-11',1),(2,'大牛不错啊','2016-11-12',2);

/*Table structure for table `orderform` */

DROP TABLE IF EXISTS `orderform`;

CREATE TABLE `orderform` (
  `orderFormId` int(20) NOT NULL AUTO_INCREMENT,
  `orderFormName` varchar(30) DEFAULT NULL,
  `userId` int(20) DEFAULT NULL,
  `deposit` int(20) DEFAULT NULL,
  `orderFormMessage` varchar(300) DEFAULT NULL,
  `orderFormTime` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`orderFormId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `orderform` */

insert  into `orderform`(`orderFormId`,`orderFormName`,`userId`,`deposit`,`orderFormMessage`,`orderFormTime`) values (1,'TT订金',2,30000,'奥迪TT 2015款 TT Coupe 2.0TFSI 双离合 45TFSI（进口）','2016-11-15');

/*Table structure for table `recruit` */

DROP TABLE IF EXISTS `recruit`;

CREATE TABLE `recruit` (
  `recruitId` int(20) NOT NULL AUTO_INCREMENT,
  `position` varchar(30) DEFAULT NULL,
  `requirement` varchar(200) DEFAULT NULL,
  `recruitState` varchar(30) DEFAULT NULL,
  `salary` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`recruitId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `recruit` */

insert  into `recruit`(`recruitId`,`position`,`requirement`,`recruitState`,`salary`) values (1,'二手车评估师','有专业二手车评估师资格证，三年以上本行业工作经验','已发布','薪资面议'),(2,'二手车翻新工','吃苦耐劳，细心','已发布','4000');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `userId` int(20) NOT NULL AUTO_INCREMENT,
  `userName` varchar(30) DEFAULT NULL,
  `userPassword` varchar(30) DEFAULT NULL,
  `userGender` varchar(30) DEFAULT NULL,
  `userTel` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`userId`,`userName`,`userPassword`,`userGender`,`userTel`) values (1,'赵哲','123','男','13592452635'),(2,'胡宇航','123','男','13652695857'),(3,'李四','123','男','13452685967');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
