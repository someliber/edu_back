-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: spring_db
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `course` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `course_name` varchar(255) DEFAULT NULL COMMENT '课程名',
  `brief` varchar(255) DEFAULT '' COMMENT '课程一句话简介',
  `price` double(10,2) DEFAULT NULL COMMENT '原价',
  `price_tag` varchar(255) DEFAULT '' COMMENT '原价标签',
  `discounts` double(10,2) DEFAULT NULL COMMENT '优惠价',
  `discounts_tag` varchar(255) DEFAULT NULL COMMENT '优惠标签',
  `course_description_mark_down` longtext COMMENT '描述markdown',
  `course_description` longtext COMMENT '课程描述',
  `course_img_url` varchar(255) DEFAULT NULL COMMENT '课程分享图片url',
  `is_new` tinyint(1) DEFAULT NULL COMMENT '是否新品',
  `is_new_des` varchar(255) DEFAULT NULL COMMENT '广告语',
  `last_operator_id` int(11) DEFAULT NULL COMMENT '最后操作者',
  `auto_online_time` datetime DEFAULT NULL COMMENT '自动上架时间',
  `create_time` datetime NOT NULL COMMENT '记录创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `is_del` tinyint(1) DEFAULT '0' COMMENT '是否删除',
  `total_duration` int(11) DEFAULT NULL COMMENT '总时长(分钟)',
  `course_list_img` varchar(255) DEFAULT NULL COMMENT '课程列表展示图片',
  `status` int(2) DEFAULT '0' COMMENT '课程状态，0-草稿，1-上架',
  `sort_num` int(11) DEFAULT NULL COMMENT '课程排序，用于后台保存草稿时用到',
  `preview_first_field` varchar(255) DEFAULT NULL COMMENT '课程预览第一个字段',
  `preview_second_field` varchar(255) DEFAULT NULL COMMENT '课程预览第二个字段',
  `sales` int(11) DEFAULT '0' COMMENT '销量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (7,'文案高手的18项修炼','手把手教你写出实用的高转化文案',263.00,'',100.00,'成就自己','<p>背景介绍<br>\n自媒体时代，无论你是做新媒体编辑、运营，还是市场营销、电商，微信推文、推广海报、产品详情页、朋友圈话术……文案需求无处不在。</p>\n<p>写出价值百万的文案，其实并不难，因为它们背后都有可总结、可借鉴的规律。只要通过系统学习和刻意训练，你也能创造出爆款文案，掌握可复用的硬通货技能，轻松获得职场晋升，或者开拓副业，实现财务自由！</p>\n<p>专栏解读<br>\n这是一个零基础就能学会的爆款文案写作与变现路径，专栏共分为三大模块：入门基础篇、高手实战篇、进阶拓展篇。从入门写作到如何变现，让你成为赚钱达人。</p>\n<p>第一部分：掌握写作基础，夯实文字功底。这一模块会带你如何深入了解产品、洞悉用户需求，告诉你如何搭建文章框架，积累文字素材，做好动笔前的准备工作，只有掌握了这些，你对文案才有更深刻的理解。</p>\n<p>第二部分：爆款文案写作法，让你成为文案操盘手。这一模块为你拆解爆款文案的组成，手把手教你写作的5个步骤，从爆款标题的写作，到让用户爽快下单的技巧，从文字构建信任，到文案促成下单，这些技巧足以让你成为爆款文案操盘手。</p>\n<p>第三部分：如何让你的文案变成钱？带你搞定文案写作之后，为你提供4大变现路径，让你用文案打造个人影响力，并找到利用文案轻松赚钱的方法。</p>\n<p>18讲的内容，每一讲都汇集了爆款文案写作经验和实战技巧，每一讲都是经过验证的经验复用，每个文字都来自文案人深夜的凝思和血泪。</p>\n','<p>背景介绍<br> 自媒体时代，无论你是做新媒体编辑、运营，还是市场营销、电商，微信推文、推广海报、产品详情页、朋友圈话术……文案需求无处不在。</p> \n<p>写出价值百万的文案，其实并不难，因为它们背后都有可总结、可借鉴的规律。只要通过系统学习和刻意训练，你也能创造出爆款文案，掌握可复用的硬通货技能，轻松获得职场晋升，或者开拓副业，实现财务自由！</p> \n<p>专栏解读<br> 这是一个零基础就能学会的爆款文案写作与变现路径，专栏共分为三大模块：入门基础篇、高手实战篇、进阶拓展篇。从入门写作到如何变现，让你成为赚钱达人。</p> \n<p>第一部分：掌握写作基础，夯实文字功底。这一模块会带你如何深入了解产品、洞悉用户需求，告诉你如何搭建文章框架，积累文字素材，做好动笔前的准备工作，只有掌握了这些，你对文案才有更深刻的理解。</p> \n<p>第二部分：爆款文案写作法，让你成为文案操盘手。这一模块为你拆解爆款文案的组成，手把手教你写作的5个步骤，从爆款标题的写作，到让用户爽快下单的技巧，从文字构建信任，到文案促成下单，这些技巧足以让你成为爆款文案操盘手。</p> \n<p>第三部分：如何让你的文案变成钱？带你搞定文案写作之后，为你提供4大变现路径，让你用文案打造个人影响力，并找到利用文案轻松赚钱的方法。</p> \n<p>18讲的内容，每一讲都汇集了爆款文案写作经验和实战技巧，每一讲都是经过验证的经验复用，每个文字都来自文案人深夜的凝思和血泪。</p>','https://edu-lagou.oss-cn-beijing.aliyuncs.com/images/2020/07/10/15943482627237468.jpg',NULL,NULL,NULL,NULL,'2020-07-10 10:33:56','2020-08-04 17:34:58',0,NULL,'https://edu-lagou.oss-cn-beijing.aliyuncs.com/images/2020/07/10/1594348262748358.jpg',1,1,'100讲','50课时',1314),(8,'Vue.js 3.0 核心源码解析','掌握框架原理，精通经典应用场景',99.00,'',88.00,'','<p>背景介绍<br>\n在过去的几年里，Vue、React、Angular 一直是国内前端的三大主流框架。在 2019 年 Vue 就像一匹黑马力压群雄，独占前端er 的宠爱，Github Star 排名荣登第一也反映了国内开发者对 Vue 的喜爱。</p>\n<p>最近，Vue 的作者尤雨溪在 Github 上介绍了 Vue 3.0 的最新进展，目标发布日期是 7 月中旬发布 RC 版本，8 月初发布正式版，也就是说 Vue 3.0 就在眼前！</p>\n<p>专栏解读<br>\n专栏将对 Vue.js 3.0 的框架源码进行系统、细致地分析。 深入到内核剖析实现原理，探究源码背后的设计思想。一方面帮你夯实 Vue.js 开发技能，一方面帮你理解源码分析的方式与编程思路，为你从底层逻辑理解优秀框架背后的技术思想。</p>\n<p>专栏主要分为以下3个部分：</p>\n<p>第一部分核心模块，这个部分会带你去分析 Vue.js 3.0 最核心的组件的实现原理以及 Vue.js 3.0 新特性 Composition API 的实现原理。掌握这个部分，可以让你对组件如何渲染和更新能有深刻的理解，并掌握 Composition API 背后的实现原理和应用场景。</p>\n<p>第二部分进阶模块，这个部分会带你分析 Vue.js 3.0 模板的编译和优化过程。带你了解 Vue.js 是如何编译模板并生成代码的，以及编译过程背后的性能优化思想是怎样的。</p>\n<p>第三部分扩展模块，将带你分析 Vue.js 3.0 的内置组件的实现原理、Vue.js 3.0 一些实用特性的实现原理以及 Vue.js 3.0 官方生态实现原理。经过学习，你可以了解这些功能的实现原理和职责边界，在平时工作中应用起来更加得心应手。</p>\n<p>在学习这门课程后，不仅可以了解 Vue.js 3.0 核心实现原理，还能一定程度地了解背后的设计思想。源码中一些好的编程思路和优秀的代码可以吸收来为自己的工作所用，修炼内功，提升技术能力。</p>\n<p>讲师简介<br>\n黄轶（ustbhuangyi） Zoom 前端架构师，前百度、滴滴资深技术专家</p>\n<p>现任 Zoom 前端架构师，主要负责推进前后端分离架构方案和 Zoom 自研组件库，不仅将Vue.js 带入 Zoom，而且通过魔改 Vue.js 源码开发了 Vue.js 2.x 的 CSP 兼容版本，并稳定服务于几十个用 Vue.js 做增强开发的页面。之前，他先后在百度和滴滴担任前端资深技术专家，并曾使用 Vue.js 重构了滴滴出行WebApp，主导开发 Vue.js 开源组件库 cube-ui。</p>\n<p>课程大纲</p>\n','<p>背景介绍<br> 在过去的几年里，Vue、React、Angular 一直是国内前端的三大主流框架。在 2019 年 Vue 就像一匹黑马力压群雄，独占前端er 的宠爱，Github Star 排名荣登第一也反映了国内开发者对 Vue 的喜爱。</p> \n<p>最近，Vue 的作者尤雨溪在 Github 上介绍了 Vue 3.0 的最新进展，目标发布日期是 7 月中旬发布 RC 版本，8 月初发布正式版，也就是说 Vue 3.0 就在眼前！</p> \n<p>专栏解读<br> 专栏将对 Vue.js 3.0 的框架源码进行系统、细致地分析。 深入到内核剖析实现原理，探究源码背后的设计思想。一方面帮你夯实 Vue.js 开发技能，一方面帮你理解源码分析的方式与编程思路，为你从底层逻辑理解优秀框架背后的技术思想。</p> \n<p>专栏主要分为以下3个部分：</p> \n<p>第一部分核心模块，这个部分会带你去分析 Vue.js 3.0 最核心的组件的实现原理以及 Vue.js 3.0 新特性 Composition API 的实现原理。掌握这个部分，可以让你对组件如何渲染和更新能有深刻的理解，并掌握 Composition API 背后的实现原理和应用场景。</p> \n<p>第二部分进阶模块，这个部分会带你分析 Vue.js 3.0 模板的编译和优化过程。带你了解 Vue.js 是如何编译模板并生成代码的，以及编译过程背后的性能优化思想是怎样的。</p> \n<p>第三部分扩展模块，将带你分析 Vue.js 3.0 的内置组件的实现原理、Vue.js 3.0 一些实用特性的实现原理以及 Vue.js 3.0 官方生态实现原理。经过学习，你可以了解这些功能的实现原理和职责边界，在平时工作中应用起来更加得心应手。</p> \n<p>在学习这门课程后，不仅可以了解 Vue.js 3.0 核心实现原理，还能一定程度地了解背后的设计思想。源码中一些好的编程思路和优秀的代码可以吸收来为自己的工作所用，修炼内功，提升技术能力。</p> \n<p>讲师简介<br> 黄轶（ustbhuangyi） Zoom 前端架构师，前百度、滴滴资深技术专家</p> \n<p>现任 Zoom 前端架构师，主要负责推进前后端分离架构方案和 Zoom 自研组件库，不仅将Vue.js 带入 Zoom，而且通过魔改 Vue.js 源码开发了 Vue.js 2.x 的 CSP 兼容版本，并稳定服务于几十个用 Vue.js 做增强开发的页面。之前，他先后在百度和滴滴担任前端资深技术专家，并曾使用 Vue.js 重构了滴滴出行WebApp，主导开发 Vue.js 开源组件库 cube-ui。</p> \n<p>课程大纲</p>','https://edu-lagou.oss-cn-beijing.aliyuncs.com/images/2020/07/17/15949659206804677.png',NULL,NULL,NULL,NULL,'2020-07-10 11:20:43','2020-07-17 14:05:25',0,NULL,'https://edu-lagou.oss-cn-beijing.aliyuncs.com/images/2020/07/10/15943511296066408.png',1,7,'共22节','更新10节',100),(9,'秒杀11','秒杀11',200.00,'',100.00,'11','<p>11111</p>\n','<p>11111</p>','https://edu-lagou.oss-cn-beijing.aliyuncs.com/images/2020/07/10/15943514165219908.jpg',NULL,NULL,NULL,NULL,'2020-07-10 11:24:31','2020-07-17 12:31:23',0,NULL,'https://edu-lagou.oss-cn-beijing.aliyuncs.com/images/2020/07/10/15943514200926156.jpg',1,1,'秒杀','秒杀',10),(10,'React 入门','React 入门',164.00,'',100.00,'','<p>React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门</p>\n','<p>React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门</p>','https://edu-lagou.oss-cn-beijing.aliyuncs.com/images/2020/07/17/15949603348287878.png',NULL,NULL,NULL,NULL,'2020-07-17 12:32:43','2020-07-17 12:33:59',0,NULL,'https://edu-lagou.oss-cn-beijing.aliyuncs.com/images/2020/07/17/15949603393915818.png',1,12,'React 入门','React 入门',2323),(11,'文案高手的18项修炼','手把手教你写出实用的高转化文案',263.00,'',100.00,'成就自己','<p>背景介绍<br>\n自媒体时代，无论你是做新媒体编辑、运营，还是市场营销、电商，微信推文、推广海报、产品详情页、朋友圈话术……文案需求无处不在。</p>\n<p>写出价值百万的文案，其实并不难，因为它们背后都有可总结、可借鉴的规律。只要通过系统学习和刻意训练，你也能创造出爆款文案，掌握可复用的硬通货技能，轻松获得职场晋升，或者开拓副业，实现财务自由！</p>\n<p>专栏解读<br>\n这是一个零基础就能学会的爆款文案写作与变现路径，专栏共分为三大模块：入门基础篇、高手实战篇、进阶拓展篇。从入门写作到如何变现，让你成为赚钱达人。</p>\n<p>第一部分：掌握写作基础，夯实文字功底。这一模块会带你如何深入了解产品、洞悉用户需求，告诉你如何搭建文章框架，积累文字素材，做好动笔前的准备工作，只有掌握了这些，你对文案才有更深刻的理解。</p>\n<p>第二部分：爆款文案写作法，让你成为文案操盘手。这一模块为你拆解爆款文案的组成，手把手教你写作的5个步骤，从爆款标题的写作，到让用户爽快下单的技巧，从文字构建信任，到文案促成下单，这些技巧足以让你成为爆款文案操盘手。</p>\n<p>第三部分：如何让你的文案变成钱？带你搞定文案写作之后，为你提供4大变现路径，让你用文案打造个人影响力，并找到利用文案轻松赚钱的方法。</p>\n<p>18讲的内容，每一讲都汇集了爆款文案写作经验和实战技巧，每一讲都是经过验证的经验复用，每个文字都来自文案人深夜的凝思和血泪。</p>\n','<p>背景介绍<br> 自媒体时代，无论你是做新媒体编辑、运营，还是市场营销、电商，微信推文、推广海报、产品详情页、朋友圈话术……文案需求无处不在。</p> \n<p>写出价值百万的文案，其实并不难，因为它们背后都有可总结、可借鉴的规律。只要通过系统学习和刻意训练，你也能创造出爆款文案，掌握可复用的硬通货技能，轻松获得职场晋升，或者开拓副业，实现财务自由！</p> \n<p>专栏解读<br> 这是一个零基础就能学会的爆款文案写作与变现路径，专栏共分为三大模块：入门基础篇、高手实战篇、进阶拓展篇。从入门写作到如何变现，让你成为赚钱达人。</p> \n<p>第一部分：掌握写作基础，夯实文字功底。这一模块会带你如何深入了解产品、洞悉用户需求，告诉你如何搭建文章框架，积累文字素材，做好动笔前的准备工作，只有掌握了这些，你对文案才有更深刻的理解。</p> \n<p>第二部分：爆款文案写作法，让你成为文案操盘手。这一模块为你拆解爆款文案的组成，手把手教你写作的5个步骤，从爆款标题的写作，到让用户爽快下单的技巧，从文字构建信任，到文案促成下单，这些技巧足以让你成为爆款文案操盘手。</p> \n<p>第三部分：如何让你的文案变成钱？带你搞定文案写作之后，为你提供4大变现路径，让你用文案打造个人影响力，并找到利用文案轻松赚钱的方法。</p> \n<p>18讲的内容，每一讲都汇集了爆款文案写作经验和实战技巧，每一讲都是经过验证的经验复用，每个文字都来自文案人深夜的凝思和血泪。</p>','https://edu-lagou.oss-cn-beijing.aliyuncs.com/images/2020/07/10/15943482627237468.jpg',NULL,NULL,NULL,NULL,'2020-07-10 10:33:56','2020-07-10 10:45:38',0,NULL,'https://edu-lagou.oss-cn-beijing.aliyuncs.com/images/2020/07/10/1594348262748358.jpg',1,1,'100讲','50课时',1314),(12,'Vue.js 3.0 核心源码解析','掌握框架原理，精通经典应用场景',99.00,'',88.00,'','<p>背景介绍<br>\n在过去的几年里，Vue、React、Angular 一直是国内前端的三大主流框架。在 2019 年 Vue 就像一匹黑马力压群雄，独占前端er 的宠爱，Github Star 排名荣登第一也反映了国内开发者对 Vue 的喜爱。</p>\n<p>最近，Vue 的作者尤雨溪在 Github 上介绍了 Vue 3.0 的最新进展，目标发布日期是 7 月中旬发布 RC 版本，8 月初发布正式版，也就是说 Vue 3.0 就在眼前！</p>\n<p>专栏解读<br>\n专栏将对 Vue.js 3.0 的框架源码进行系统、细致地分析。 深入到内核剖析实现原理，探究源码背后的设计思想。一方面帮你夯实 Vue.js 开发技能，一方面帮你理解源码分析的方式与编程思路，为你从底层逻辑理解优秀框架背后的技术思想。</p>\n<p>专栏主要分为以下3个部分：</p>\n<p>第一部分核心模块，这个部分会带你去分析 Vue.js 3.0 最核心的组件的实现原理以及 Vue.js 3.0 新特性 Composition API 的实现原理。掌握这个部分，可以让你对组件如何渲染和更新能有深刻的理解，并掌握 Composition API 背后的实现原理和应用场景。</p>\n<p>第二部分进阶模块，这个部分会带你分析 Vue.js 3.0 模板的编译和优化过程。带你了解 Vue.js 是如何编译模板并生成代码的，以及编译过程背后的性能优化思想是怎样的。</p>\n<p>第三部分扩展模块，将带你分析 Vue.js 3.0 的内置组件的实现原理、Vue.js 3.0 一些实用特性的实现原理以及 Vue.js 3.0 官方生态实现原理。经过学习，你可以了解这些功能的实现原理和职责边界，在平时工作中应用起来更加得心应手。</p>\n<p>在学习这门课程后，不仅可以了解 Vue.js 3.0 核心实现原理，还能一定程度地了解背后的设计思想。源码中一些好的编程思路和优秀的代码可以吸收来为自己的工作所用，修炼内功，提升技术能力。</p>\n<p>讲师简介<br>\n黄轶（ustbhuangyi） Zoom 前端架构师，前百度、滴滴资深技术专家</p>\n<p>现任 Zoom 前端架构师，主要负责推进前后端分离架构方案和 Zoom 自研组件库，不仅将Vue.js 带入 Zoom，而且通过魔改 Vue.js 源码开发了 Vue.js 2.x 的 CSP 兼容版本，并稳定服务于几十个用 Vue.js 做增强开发的页面。之前，他先后在百度和滴滴担任前端资深技术专家，并曾使用 Vue.js 重构了滴滴出行WebApp，主导开发 Vue.js 开源组件库 cube-ui。</p>\n<p>课程大纲</p>\n','<p>背景介绍<br> 在过去的几年里，Vue、React、Angular 一直是国内前端的三大主流框架。在 2019 年 Vue 就像一匹黑马力压群雄，独占前端er 的宠爱，Github Star 排名荣登第一也反映了国内开发者对 Vue 的喜爱。</p> \n<p>最近，Vue 的作者尤雨溪在 Github 上介绍了 Vue 3.0 的最新进展，目标发布日期是 7 月中旬发布 RC 版本，8 月初发布正式版，也就是说 Vue 3.0 就在眼前！</p> \n<p>专栏解读<br> 专栏将对 Vue.js 3.0 的框架源码进行系统、细致地分析。 深入到内核剖析实现原理，探究源码背后的设计思想。一方面帮你夯实 Vue.js 开发技能，一方面帮你理解源码分析的方式与编程思路，为你从底层逻辑理解优秀框架背后的技术思想。</p> \n<p>专栏主要分为以下3个部分：</p> \n<p>第一部分核心模块，这个部分会带你去分析 Vue.js 3.0 最核心的组件的实现原理以及 Vue.js 3.0 新特性 Composition API 的实现原理。掌握这个部分，可以让你对组件如何渲染和更新能有深刻的理解，并掌握 Composition API 背后的实现原理和应用场景。</p> \n<p>第二部分进阶模块，这个部分会带你分析 Vue.js 3.0 模板的编译和优化过程。带你了解 Vue.js 是如何编译模板并生成代码的，以及编译过程背后的性能优化思想是怎样的。</p> \n<p>第三部分扩展模块，将带你分析 Vue.js 3.0 的内置组件的实现原理、Vue.js 3.0 一些实用特性的实现原理以及 Vue.js 3.0 官方生态实现原理。经过学习，你可以了解这些功能的实现原理和职责边界，在平时工作中应用起来更加得心应手。</p> \n<p>在学习这门课程后，不仅可以了解 Vue.js 3.0 核心实现原理，还能一定程度地了解背后的设计思想。源码中一些好的编程思路和优秀的代码可以吸收来为自己的工作所用，修炼内功，提升技术能力。</p> \n<p>讲师简介<br> 黄轶（ustbhuangyi） Zoom 前端架构师，前百度、滴滴资深技术专家</p> \n<p>现任 Zoom 前端架构师，主要负责推进前后端分离架构方案和 Zoom 自研组件库，不仅将Vue.js 带入 Zoom，而且通过魔改 Vue.js 源码开发了 Vue.js 2.x 的 CSP 兼容版本，并稳定服务于几十个用 Vue.js 做增强开发的页面。之前，他先后在百度和滴滴担任前端资深技术专家，并曾使用 Vue.js 重构了滴滴出行WebApp，主导开发 Vue.js 开源组件库 cube-ui。</p> \n<p>课程大纲</p>','https://edu-lagou.oss-cn-beijing.aliyuncs.com/images/2020/07/17/15949659206804677.png',NULL,NULL,NULL,NULL,'2020-07-10 11:20:43','2020-07-17 14:05:25',0,NULL,'https://edu-lagou.oss-cn-beijing.aliyuncs.com/images/2020/07/10/15943511296066408.png',1,7,'共22节','更新10节',100),(13,'秒杀11','秒杀11',200.00,'',100.00,'11','<p>11111</p>\n','<p>11111</p>','https://edu-lagou.oss-cn-beijing.aliyuncs.com/images/2020/07/10/15943514165219908.jpg',NULL,NULL,NULL,NULL,'2020-07-10 11:24:31','2020-08-13 10:40:28',0,NULL,'https://edu-lagou.oss-cn-beijing.aliyuncs.com/images/2020/07/10/15943514200926156.jpg',0,1,'秒杀','秒杀',10),(14,'React 入门','React 入门',164.00,'',100.00,'','<p>React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门</p>\n','<p>React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门React 入门</p>','https://edu-lagou.oss-cn-beijing.aliyuncs.com/images/2020/07/17/15949603348287878.png',NULL,NULL,NULL,NULL,'2020-07-17 12:32:43','2020-07-17 12:33:59',0,NULL,'https://edu-lagou.oss-cn-beijing.aliyuncs.com/images/2020/07/17/15949603393915818.png',1,12,'React 入门','React 入门',2323),(15,'大数据云计算','海量大数据课程',88.00,'',NULL,'先到先得','介绍当前流行大数据技术，数据技术原理，并介绍其思想，介绍大数据技术培训课程，概要介绍。',NULL,'http://localhost:8080/upload/1596520226925.jpg',NULL,NULL,NULL,NULL,'2020-08-04 15:15:06','2020-08-04 15:15:06',0,NULL,'http://localhost:8080/upload/1596520226925.jpg',0,1,'共10讲','每周四更新',100),(16,'全栈工程师','掌握多种技能，胜任前端与后端',88.00,'',66.60,'先到先得','介绍当前流行大数据技术，数据技术原理，并介绍其思想，介绍大数据技术培训课程，概要介绍。',NULL,'http://localhost:8080/upload/1596520226925.jpg',NULL,NULL,NULL,NULL,'2020-08-04 15:23:17','2020-08-04 16:54:00',0,NULL,'http://localhost:8080/upload/1596520226925.jpg',0,1,'共10讲','每周四更新',100),(17,'全栈工程师','掌握多种技能，胜任前端与后端',88.00,'',66.60,'先到先得','介绍当前流行大数据技术，数据技术原理，并介绍其思想，介绍大数据技术培训课程，概要介绍。',NULL,'http://localhost:8080/upload/1596520226925.jpg',NULL,NULL,NULL,NULL,'2020-08-04 15:29:26','2020-08-04 16:53:27',0,NULL,'http://localhost:8080/upload/1596520226925.jpg',0,1,'共10讲','每周四更新',100),(18,'全栈工程师','掌握多种技能，胜任前端与后端',88.00,'',66.60,'先到先得','介绍当前流行大数据技术，数据技术原理，并介绍其思想，介绍大数据技术培训课程，概要介绍。',NULL,'http://localhost:8080/upload/1596520226925.jpg',NULL,NULL,NULL,NULL,'2020-08-04 16:54:45','2020-08-04 16:54:45',0,NULL,'http://localhost:8080/upload/1596520226925.jpg',0,1,'共10讲','每周四更新',100),(19,'全栈工程师aaa','掌握多种技能，胜任前端与后端aaa',88.00,'',66.60,'先到先得','介绍当前流行大数据技术，数据技术原理，并介绍其思想，介绍大数据技术培训课程，概要介绍。',NULL,'http://localhost:8080/upload/1596520226925.jpg',NULL,NULL,NULL,NULL,'2020-08-04 16:56:41','2020-08-04 16:56:41',0,NULL,'http://localhost:8080/upload/1596520226925.jpg',0,1,'共10讲aaa','每周四更新aa',100),(20,'Java基础','掌握多种技能，胜任前端与后端aaa',88.00,'',66.60,'先到先得','介绍当前流行大数据技术，数据技术原理，并介绍其思想，介绍大数据技术培训课程，概要介绍。',NULL,'http://localhost:8080/upload/1596520226925.jpg',NULL,NULL,NULL,NULL,'2020-08-05 13:42:08','2020-08-05 13:42:08',0,NULL,'http://localhost:8080/upload/1596520226925.jpg',0,1,'共10讲aaa','每周四更新aa',100),(27,'一拳超人2','一拳超人2',188.00,'',88.00,'一拳超人','<p>一拳超人一拳超人一拳超人一拳超人一拳超人一拳超人一拳超人一拳超人一拳超人一拳超人</p>\n',NULL,'http://localhost:8080/upload/1597227595417.jpg',NULL,NULL,NULL,NULL,'2020-08-12 18:19:16','2020-08-19 13:44:09',0,NULL,'',0,0,'一拳超人','一拳超人',10),(28,'大是大非三1111111','大是大非三1111',120.00,'',111.00,'的飞洒','<p>富士达发萨发是发送到发as佛挡杀佛四大</p>\n',NULL,'http://localhost:8080/upload/1597229733992.jpg',NULL,NULL,NULL,NULL,'2020-08-12 18:53:42','2020-08-13 10:40:49',0,NULL,'',1,0,'大是大非三','大是大非三',12),(29,'溜达秘籍','溜达秘籍',12.00,'',12.00,'溜达秘籍','<p>溜达秘籍溜达秘籍溜达秘籍溜达秘籍溜达秘籍溜达秘籍溜达秘籍</p>\n',NULL,'http://localhost:8080/upload/1597399694960.jpg',NULL,NULL,NULL,NULL,'2020-08-14 18:08:24','2020-08-14 18:08:24',0,NULL,'',0,0,'溜达秘籍','溜达秘籍',10),(30,'鹿鼎记','鹿鼎记',13.00,'',12.00,'天下刀宗','<p>天下刀宗天下刀宗天下刀宗天下刀宗天下刀宗天下刀宗天下刀宗</p>\n',NULL,'http://localhost:8080/upload/1597809189909.jpg',NULL,NULL,NULL,NULL,'2020-08-19 11:53:13','2020-08-19 11:54:02',0,NULL,'',0,0,'天下刀宗天下刀宗天下刀宗','天下刀宗天下刀宗天下刀宗',9),(34,'Introduction to JavaWeb','Learn the basics of JavaWeb programming.',99.99,'',79.99,'Discounted Price','Java is a robust programming language.',NULL,'http://example.com/image.jpg',NULL,NULL,NULL,NULL,'2024-06-02 17:57:07','2024-06-02 18:21:18',0,NULL,'http://example.com/listimage.jpg',0,5,'Beginner-friendly','20 hours of content',150);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_lesson`
--

DROP TABLE IF EXISTS `course_lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `course_lesson` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `course_id` int(11) NOT NULL COMMENT '课程id',
  `section_id` int(11) NOT NULL DEFAULT '0' COMMENT '章节id',
  `theme` varchar(255) NOT NULL COMMENT '课时主题',
  `duration` int(11) NOT NULL DEFAULT '0' COMMENT '课时时长(分钟)',
  `is_free` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否免费',
  `create_time` datetime NOT NULL COMMENT '记录创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `is_del` tinyint(1) DEFAULT '0' COMMENT '是否删除',
  `order_num` int(11) DEFAULT NULL COMMENT '排序字段',
  `status` int(2) DEFAULT '0' COMMENT '课时状态,0-隐藏，1-未发布，2-已发布',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `course_id_index` (`course_id`,`section_id`) USING BTREE,
  KEY `idx_sectionId_orderNum` (`section_id`,`order_num`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='课程节内容';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_lesson`
--

LOCK TABLES `course_lesson` WRITE;
/*!40000 ALTER TABLE `course_lesson` DISABLE KEYS */;
INSERT INTO `course_lesson` VALUES (8,7,7,'从小白到文案高手',0,1,'2020-07-10 10:35:30','2020-07-27 14:26:47',0,1,2),(9,7,7,'手把手教你写出爆款文案',0,0,'2020-07-10 10:35:53','2020-07-27 14:26:47',0,0,2),(10,7,8,'重点内容',0,0,'2020-07-10 10:36:09','2020-07-27 14:26:52',0,1,2),(11,7,8,'内容总结',0,0,'2020-07-10 10:36:21','2020-07-27 14:26:52',0,0,2),(12,8,9,'开篇词 | 解析 Vue.js 源码，提升编码能力',0,1,'2020-07-10 11:21:49','2020-07-22 12:10:49',0,0,2),(13,8,9,'导读 | 一文看懂 Vue.js 3.0 的优化',0,0,'2020-07-10 11:22:13','2020-07-22 12:10:49',0,1,2),(14,9,10,'11111',0,0,'2020-07-10 11:30:47','2020-07-13 15:54:52',0,0,2),(15,10,11,'撒短发',0,1,'2020-07-17 12:33:20','2020-07-17 12:35:23',0,22,2),(16,7,7,'文案高手养成',15,0,'2020-08-05 11:52:24','2020-08-05 11:52:24',0,2,0),(17,20,16,'第一讲 什么是Java',15,0,'2020-08-05 13:45:01','2020-08-05 13:45:01',0,2,0),(18,20,16,'第二讲 Java环境安装',15,0,'2020-08-05 13:45:33','2020-08-05 13:45:33',0,2,0),(19,20,16,'第三讲 HelloWord',15,0,'2020-08-05 13:45:51','2020-08-05 13:45:51',0,2,0),(20,20,17,'第一讲 Java中的变量',15,0,'2020-08-05 13:46:41','2020-08-05 13:46:41',0,2,0),(21,20,17,'第二讲 Java中的数据类型',15,0,'2020-08-05 13:47:06','2020-08-05 13:47:48',0,3,0),(22,27,19,'第一讲 我是琦玉01',2,0,'2020-08-13 15:11:27','2020-08-14 10:33:37',0,1,0),(23,27,19,'第二讲 琦玉是我',10,1,'2020-08-13 15:12:41','2020-08-13 15:12:41',0,2,0),(24,27,20,'第一讲 琦玉打怪兽一打二',18,1,'2020-08-13 15:13:12','2020-08-13 15:16:58',0,2,0),(25,27,20,'第二讲 琦玉打boss',10,1,'2020-08-13 15:13:33','2020-08-13 15:13:33',0,2,0),(26,17,15,'Introduction to Spring Framework',301,1,'2024-06-03 23:00:00','2024-06-02 21:37:42',0,1,1);
/*!40000 ALTER TABLE `course_lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_media`
--

DROP TABLE IF EXISTS `course_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `course_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程媒体主键ID',
  `course_id` int(11) DEFAULT NULL COMMENT '课程Id',
  `section_id` int(11) DEFAULT NULL COMMENT '章ID',
  `lesson_id` int(11) DEFAULT NULL COMMENT '课时ID',
  `cover_image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '封面图URL',
  `duration` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '时长（06:02）',
  `file_edk` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '媒体资源文件对应的EDK',
  `file_size` double(10,2) DEFAULT NULL COMMENT '文件大小MB',
  `file_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '文件名称',
  `file_dk` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '媒体资源文件对应的DK',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `is_del` tinyint(1) DEFAULT '0' COMMENT '是否删除，0未删除，1删除',
  `duration_num` int(11) DEFAULT NULL COMMENT '时长，秒数（主要用于音频在H5控件中使用）',
  `file_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '媒体资源文件ID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uniq_lessonid_channel_mediatype_idx` (`lesson_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_media`
--

LOCK TABLES `course_media` WRITE;
/*!40000 ALTER TABLE `course_media` DISABLE KEYS */;
INSERT INTO `course_media` VALUES (5,7,7,8,'http://outin-61fd129aa62411eaa4ef00163e1c94a4.oss-cn-shanghai.aliyuncs.com/image/cover/7FDABE200A424897A7ED5CE05764BB4C-6-2.png?Expires=1594363749&OSSAccessKeyId=LTAIVVfYx6D0HeL2&Signature=dqBQJCvfJY1wDCBgCGnI5cPInww%3D','00:11','YTU5ZGFkM2ItOGI0Mi00NWFmLWJiMGItMTI4YWRjNjQzOWFlRjdaVUlmYTUwYWkwR3pwK1YzZENnUjExMnI1VkxiVFhBQUFBQUFBQUFBQ3FJN3pnZnFQUndad24rT2djTmM4MkxXb3ZXcDNNNkk0RENXeW9NRDVrZFNucHFiaUxRNm4r',1.90,'屏幕录制2020-07-10 13.48.08.mov','JPagaxcX6Ihpn5nu+dLi0Q==','2020-07-10 11:14:51','2020-07-10 13:49:14',0,11,'4f0dfb878a4d4d4881428b950396228a'),(6,7,8,10,'http://outin-61fd129aa62411eaa4ef00163e1c94a4.oss-cn-shanghai.aliyuncs.com/image/cover/DBA8C56E2EA44F6382DCF5B7AD5763E6-6-2.png?Expires=1594356125&OSSAccessKeyId=LTAIVVfYx6D0HeL2&Signature=s5jKXcyQzw%2BjJKah75oBobYEy3g%3D','00:08','YTU5ZGFkM2ItOGI0Mi00NWFmLWJiMGItMTI4YWRjNjQzOWFlNDlJL3pGM0dvS1IzSFhxMkFzNnYwcnhBelB6bUU3NENBQUFBQUFBQUFBQkxYTzQ4Q2JyK05XTHRoKzZiWmpoZG55azJ5NFVYUWtIRUhWb1BuQ3FZd2FPTVhPM2d6UDJ4',0.64,'测试视频课程.mp4','T3q/VVunsKwx7aNeRtaLGg==','2020-07-10 11:17:38','2020-07-10 11:42:10',0,8,'8dbf98ac948a4b389f99f17034c998cd'),(7,8,9,12,'http://outin-61fd129aa62411eaa4ef00163e1c94a4.oss-cn-shanghai.aliyuncs.com/image/cover/07ED3325C001418AA46A95F88B1DA6C8-6-2.png?Expires=1594969610&OSSAccessKeyId=LTAIVVfYx6D0HeL2&Signature=biyZXbn1V2gY4GxmPiXKBME3E7I%3D','00:05','YTU5ZGFkM2ItOGI0Mi00NWFmLWJiMGItMTI4YWRjNjQzOWFlaWxjVHdDaW5NSDJGTWdqZnYxWFg1YWZ6OUJXc0cvS3FBQUFBQUFBQUFBQzVwV2NTQUh4NjhiaU1YZ1drYlFZQnlVKyt0YkdTRzdlVXJmRFVOZHRESWM3T3ZSdEwwM1hN',11.37,'test.mov','BRRHQV/DivcEwf0Zosn9dA==','2020-07-10 11:40:29','2020-07-17 14:06:55',0,5,'a029c496959a457e92eb9e4f480e0018'),(8,7,8,11,'http://outin-61fd129aa62411eaa4ef00163e1c94a4.oss-cn-shanghai.aliyuncs.com/image/cover/8D2E8BB920F94ECAB32CCAA73222DF32-6-2.png?Expires=1594625842&OSSAccessKeyId=LTAIVVfYx6D0HeL2&Signature=H2rqXRF0a%2FjY1dnrVtACXinwBRI%3D','00:08','YTU5ZGFkM2ItOGI0Mi00NWFmLWJiMGItMTI4YWRjNjQzOWFlQnBqQnBlU042WEd4UWx2eVEwV1hZS2JQdE5PS1dBYVpBQUFBQUFBQUFBQ0ViRHkrd0U1WWVLRGhObFJGOFE5OGJMYlppRzNwdnVWc2xuUnpINnVhN3dkay9QMDlucXhR',0.64,'测试视频课程.mp4','MWGs74Qco6LYjlCXc7ymEg==','2020-07-10 11:43:10','2020-07-13 14:37:27',0,8,'bb7d23a9334c4b07abb1187a2c61ce1f'),(9,8,9,13,'http://outin-61fd129aa62411eaa4ef00163e1c94a4.oss-cn-shanghai.aliyuncs.com/image/cover/1B8791F4BC4B48B08A37C2B7B669FE52-6-2.png?Expires=1594356307&OSSAccessKeyId=LTAIVVfYx6D0HeL2&Signature=QISH8TpvWX%2F0G%2B%2F1rA0OJqTug3g%3D','00:08','YTU5ZGFkM2ItOGI0Mi00NWFmLWJiMGItMTI4YWRjNjQzOWFlSHk2RWhDUURHejlyYzN1cnNNaE9ubG9jVUZlb2NTbFFBQUFBQUFBQUFBQjRRV0lGOHRvUGxIcCtINGhTdWxBR3JWV1ZmR3ZDT3R2YnVJcDlkS0NjSWxoL1EwMmpHcVdK',0.64,'测试视频课程.mp4','B0CqECTjmT1JeCVndYvXtg==','2020-07-10 11:45:13','2020-07-10 11:45:13',0,8,'717bc01edbb24283937d7fa903f06d60'),(10,9,10,14,'http://outin-61fd129aa62411eaa4ef00163e1c94a4.oss-cn-shanghai.aliyuncs.com/image/cover/EEB28294E90F4D85A2609A2A978A9264-6-2.png?Expires=1594356669&OSSAccessKeyId=LTAIVVfYx6D0HeL2&Signature=wR9JpRJp6UMBs%2B55QSWSFYBM%2FCs%3D','00:08','YTU5ZGFkM2ItOGI0Mi00NWFmLWJiMGItMTI4YWRjNjQzOWFlajlJcXU0RGYyc0V2blZ5c0pXMGVDaUdNT0ZVZlNYODVBQUFBQUFBQUFBQjFKWCtoZGU4WDZPTXM3RnZmanFXTWxzVVh0Uy80OEt6U2ttY1h1TDJURlJ6dlJ3V2ZpcjFT',0.64,'测试视频课程.mp4','6I5a1R2dG/WrUCQotk6Uxw==','2020-07-10 11:51:14','2020-07-10 11:51:14',0,8,'451d48ec785646b8ab1aa97ae3741100');
/*!40000 ALTER TABLE `course_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_section`
--

DROP TABLE IF EXISTS `course_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `course_section` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `course_id` int(11) DEFAULT NULL COMMENT '课程id',
  `section_name` varchar(255) NOT NULL DEFAULT '' COMMENT '章节名',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '章节描述',
  `create_time` datetime NOT NULL COMMENT '记录创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `is_de` tinyint(1) DEFAULT '0' COMMENT '是否删除',
  `order_num` int(11) DEFAULT NULL COMMENT '排序字段',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '状态，0:隐藏；1：待更新；2：已发布',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `course_id_index` (`course_id`) USING BTREE,
  KEY `idx_course_id` (`course_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_section`
--

LOCK TABLES `course_section` WRITE;
/*!40000 ALTER TABLE `course_section` DISABLE KEYS */;
INSERT INTO `course_section` VALUES (7,7,'Chapter 1','Introduction to Java Programming','2020-07-10 10:34:47','2024-06-02 21:21:33',0,1,1),(8,7,'重点内容总结','重点内容总结','2020-07-10 10:35:05','2020-07-10 17:08:57',0,2,2),(9,8,'开篇词','Vue的简单介绍','2020-07-10 11:21:35','2020-07-10 11:41:05',0,1,2),(10,9,'1111','1111','2020-07-10 11:30:38','2020-07-10 11:51:46',0,1111,2),(11,10,'第一章','第一章','2020-07-17 12:33:00','2020-07-17 12:33:07',0,12,2),(12,0,'微服务架构','跟着药水一起学习如何使用微服务','2020-08-05 10:26:32','2020-08-05 10:26:32',0,0,0),(13,8,'Vue路由','单页面应用导航','2020-08-05 10:28:40','2020-08-05 10:46:13',0,0,0),(14,8,'VueCLI脚手架','快速搭建Vue项目','2020-08-05 10:30:06','2020-08-05 10:30:06',0,2,0),(15,8,'VueCLI脚手架','快速搭建Vue项目','2020-08-05 10:47:08','2020-08-05 10:47:08',0,2,0),(16,20,'Java入门','Java入门','2020-08-05 13:42:56','2020-08-05 13:42:56',0,2,0),(17,20,'Java基础1','Java基础1','2020-08-05 13:43:53','2020-08-05 13:43:53',0,2,0),(18,20,'Java基础2','Java基础2','2020-08-05 13:43:57','2020-08-05 13:43:57',0,2,0),(19,27,'第一集','琦玉买菜回家','2020-08-13 14:14:08','2020-08-13 15:01:46',0,1,1),(20,27,'第二集','琦玉打怪02','2020-08-13 14:15:50','2020-08-13 14:53:44',0,2,1),(21,27,'第三集','琦玉玩牌','2020-08-13 14:22:17','2020-08-13 14:31:15',0,3,0),(23,34,'Chapter 1','Introduction to Java Programming','2024-06-02 21:11:26','2024-06-02 21:26:17',0,1,0);
/*!40000 ALTER TABLE `course_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `parent_id` int(11) NOT NULL COMMENT '父菜单id',
  `href` varchar(200) DEFAULT NULL COMMENT '菜单路径',
  `icon` varchar(200) DEFAULT NULL COMMENT '菜单图标',
  `name` varchar(200) DEFAULT NULL COMMENT '菜单名称',
  `description` varchar(500) DEFAULT NULL COMMENT '描述',
  `order_num` int(11) DEFAULT NULL COMMENT '排序号',
  `shown` tinyint(2) DEFAULT '1' COMMENT '是否展示',
  `level` int(11) NOT NULL COMMENT '菜单层级，从0开始',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `created_by` varchar(100) NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,-1,'','lock','权限管理','管理系统角色、菜单、资源',1,1,0,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),(2,1,'Role','lock','角色列表','管理系统角色',1,1,1,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),(3,1,'Menu','lock','菜单列表','管理系统菜单',2,1,1,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),(4,1,'Resource','lock','资源列表','管理系统资源',3,1,1,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),(5,-1,'Courses','film','课程管理','课程的新增、修改、查看、发布、上下架',2,1,0,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),(6,-1,'Users','user','用户管理','用户的查询、禁用、启用',3,1,0,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),(7,-1,'','setting','广告管理','广告、广告位管理',4,1,0,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),(8,7,'Advertise','setting','广告列表','广告管理',1,1,1,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),(9,7,'AdvertiseSpace','setting','广告位列表','广告位管理',2,1,1,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),(10,1,'AllocMenu','setting','给角色分配菜单页面','给角色分配菜单页面路由',4,0,1,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),(11,1,'AllocResource','setting','给角色分配资源页面','给角色分配资源页面路由',5,0,1,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),(12,1,'AddMenu','setting','添加菜单页面','添加菜单页路由',6,0,1,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),(13,1,'UpdateMenu','setting','更新菜单页面','更新菜单页路由',7,0,1,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),(14,1,'ResourceCategory','setting','资源分类列表页面','资源分类列表页面路由',8,0,1,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),(15,7,'AddAdvertise','setting','添加广告页面','添加广告页面路由',3,0,1,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),(16,7,'UpdateAdvertise','setting','编辑广告页面','编辑广告页面路由',4,0,1,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),(17,7,'AddAdvertiseSpace','setting','添加广告位页面','添加广告位页面路由',5,0,1,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),(18,7,'UpdateAdvertiseSpace','setting','更新广告位页面','更新广告位页面路由',6,0,1,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),(19,5,'CourseItem','setting','课程详情页面','课程详情页面路由',1,0,1,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),(20,5,'CourseSections','setting','课时信息页面','课时信息页面路由',2,0,1,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),(21,5,'VideoOptions','setting','课时上传视频','课时上传视频页面路由',3,0,1,'2020-07-20 15:41:38','2020-07-20 15:41:38','system','system'),(22,1,'addOrder','lock','订单管理修改','订单系统管理修改',1,0,0,'2020-08-10 20:32:41','2020-08-10 20:32:41','system','system'),(23,5,'updateStatus修改','lock','课程管理状态修改','设置课程状态修改',3,1,0,'2020-08-11 04:32:41','2020-08-11 04:32:41','system','system'),(24,5,'sectionAndLesson','setting','章节内容与课时内容管理','管理章节与课时内容内容',2,1,1,'2020-08-17 18:11:25','2020-08-17 18:15:00','system','system'),(25,-1,'user','icon','人员管理','管理员工',1,1,0,'2020-08-17 18:12:22','2020-08-17 18:12:22','system','system'),(26,25,'guanli','set','管理客服人员','管理客服人员',0,1,1,'2020-08-17 18:17:13','2020-08-17 18:17:13','system','system');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_ad`
--

DROP TABLE IF EXISTS `promotion_ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `promotion_ad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '广告名',
  `spaceId` int(11) DEFAULT NULL COMMENT '广告位id',
  `keyword` varchar(255) DEFAULT NULL COMMENT '精确搜索关键词',
  `htmlContent` text COMMENT '静态广告的内容',
  `text` varchar(255) DEFAULT NULL COMMENT '文字一',
  `link` varchar(255) DEFAULT NULL COMMENT '链接一',
  `startTime` datetime DEFAULT NULL COMMENT '开始时间',
  `endTime` datetime DEFAULT NULL COMMENT '结束时间',
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '0 下线,1 上线',
  `priority` int(4) DEFAULT '0' COMMENT '优先级',
  `img` varchar(255) DEFAULT NULL COMMENT '广告图片地址',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `promotion_ad_SEG` (`spaceId`,`startTime`,`endTime`,`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1095 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_ad`
--

LOCK TABLES `promotion_ad` WRITE;
/*!40000 ALTER TABLE `promotion_ad` DISABLE KEYS */;
INSERT INTO `promotion_ad` VALUES (1074,'java高级训练营2期',1,NULL,NULL,'Java高级训练营 Java高级训练营 Java高级训练营','https://localhost:8080/upload','2020-08-17 11:21:27','2020-08-18 17:03:45','2020-07-14 14:28:34','2020-08-20 11:40:41',1,0,'http://localhost:8080/upload/1597634499619.jpg'),(1075,'精选课程',2,NULL,NULL,NULL,'http://edufront.lagou.com/#/content?courseId=1','2020-06-29 17:03:25','2020-07-29 17:03:45','2020-07-14 14:28:34','2020-07-17 13:13:51',1,0,'https://edu-lagou.oss-cn-beijing.aliyuncs.com/images/2020/07/17/15949580209796992.png'),(1076,'java训练营2',3,NULL,NULL,NULL,'http://edufront.lagou.com/#/content?courseId=1','2020-06-29 17:03:25','2020-07-29 17:03:45','2020-07-14 14:28:34','2020-07-17 13:14:11',1,0,'https://edu-lagou.oss-cn-beijing.aliyuncs.com/images/2020/07/17/15949583460826312.jpeg'),(1077,'轮播广告2',3,NULL,NULL,NULL,'http://edufront.lagou.com/#/content?courseId=1','2020-06-29 17:03:25','2020-07-29 17:03:45','2020-07-14 14:28:34','2020-07-17 13:07:52',0,0,'https://edu-lagou.oss-cn-beijing.aliyuncs.com/images/2020/07/17/15949624525374063.png'),(1078,'广告3333',162,NULL,NULL,'这是文本内容111','http://www.163.com111','2020-01-01 00:00:00','2020-09-30 00:00:00','2020-07-14 14:28:34','2020-08-20 11:43:18',1,2,'https://edu-lagou.oss-cn-beijing.aliyuncs.com/images/2020/07/17/15949561472241579.jpg'),(1079,'广告',162,NULL,NULL,'这是文本内容111','http://www.163.com111','2020-07-01 00:00:00','2020-08-01 00:00:00','2020-07-14 14:30:48','2020-07-14 14:30:48',0,2,'http://www.baidu.com111'),(1080,'广告名称111',169,NULL,NULL,'text','link1','2030-01-10 01:01:01','2030-01-02 12:12:12','2020-07-14 16:38:03','2020-07-14 17:36:34',0,0,'img1'),(1081,'广告名称111',169,NULL,NULL,'text','link1','2030-01-10 01:01:01','2030-01-02 12:12:12','2020-07-14 17:36:50','2020-07-14 17:36:50',0,0,'img1'),(1082,'111',NULL,NULL,NULL,NULL,NULL,'2020-07-14 16:00:00','2020-07-15 16:00:00','2020-07-15 11:57:23','2020-07-15 11:57:23',0,0,NULL),(1083,'222',NULL,NULL,NULL,NULL,NULL,'2020-07-14 16:00:00','2020-07-16 16:00:00','2020-07-15 11:58:00','2020-07-15 11:58:00',0,0,NULL),(1084,'123123',NULL,NULL,NULL,NULL,NULL,'2020-07-15 16:00:00','2020-07-16 16:00:00','2020-07-16 15:52:30','2020-07-16 15:52:30',1,0,NULL),(1085,'storm',NULL,NULL,NULL,NULL,NULL,'2020-07-15 15:06:02','2020-07-30 16:00:00','2020-07-16 21:48:26','2020-07-16 21:48:26',0,0,NULL),(1086,'stormtest',3,NULL,NULL,NULL,NULL,'2020-07-16 16:00:00','2020-07-17 16:00:00','2020-07-16 22:16:48','2020-07-16 22:16:48',0,0,NULL),(1087,'撒短发',3,NULL,NULL,NULL,'sdfasdfasdfssss','2020-07-14 16:00:00','2020-07-16 16:00:00','2020-07-16 22:22:47','2020-07-16 22:22:47',0,0,NULL),(1088,'冰淇淋套餐',NULL,NULL,NULL,NULL,'sdfdasdf','2020-01-01 00:00:00','2020-02-01 01:00:00','2020-07-17 10:07:39','2020-07-17 11:10:51',0,0,NULL),(1089,'Java高级训练营',3,NULL,NULL,'广告保存','http://localhost:8080/upload/1597400130127.jpg','2020-08-14 18:15:15','2020-08-15 00:00:00',NULL,'2020-08-17 11:23:48',0,NULL,'http://localhost:8080/upload/1597400130127.jpg'),(1090,'大数据高薪训练营',3,NULL,NULL,'添加广告添加广告添加广告添加广告添加广告','http://localhost:8080/upload/1597400677132.jpg','2020-08-14 18:24:09','2020-08-15 00:00:00','2020-08-14 18:25:02','2020-08-14 18:25:02',1,NULL,'http://localhost:8080/upload/1597400677132.jpg'),(1091,'Python高级训练营01',2,NULL,NULL,'大家一起学Python1111','www.xxxx.com','2020-08-18 14:12:08','2020-08-20 00:00:00','2020-08-18 14:13:01','2020-08-18 14:18:05',1,NULL,'http://localhost:8080/upload/1597731135966.jpg'),(1092,'Hadoop生态',2,NULL,NULL,'大数据Hadoop大数据Hadoop大数据Hadoop大数据Hadoop','www.xxx.com','2020-08-20 11:36:49','2020-08-21 00:00:00','2020-08-20 11:37:49','2020-08-20 11:38:24',1,NULL,'http://localhost:8080/upload/1597894666846.jpg'),(1093,'Spark实时分析2期',160,NULL,NULL,'Spark实时分析Spark实时分析Spark实时分析Spark实时分析','www.1234.com','2020-08-20 11:42:20','2020-08-25 00:00:00','2020-08-20 11:42:50','2020-08-20 11:43:07',1,NULL,'http://localhost:8080/upload/1597894966218.jpg'),(1094,'End of Year Clearance Sale',456,'clearance,sale,discount','<div><h1>Don\'t Miss Our End of Year Clearance!</h1></div>','Biggest Sale of the Year!','http://www.examplestore.com/clearance','2024-11-20 18:00:00','2024-11-20 18:00:00','2024-06-03 12:25:28','2024-06-03 16:31:03',0,10,'http://www.examplestore.com/images/sale-banner.jpg');
/*!40000 ALTER TABLE `promotion_ad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_space`
--

DROP TABLE IF EXISTS `promotion_space`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `promotion_space` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `spaceKey` varchar(255) DEFAULT NULL COMMENT '广告位key',
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `isDel` int(2) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `promotion_space_key_isDel` (`spaceKey`,`isDel`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_space`
--

LOCK TABLES `promotion_space` WRITE;
/*!40000 ALTER TABLE `promotion_space` DISABLE KEYS */;
INSERT INTO `promotion_space` VALUES (1,'首页顶部推荐位','666','2020-07-14 13:03:31','2020-07-17 13:13:21',0),(2,'首页侧边广告位','888','2020-07-14 13:03:31','2020-07-17 11:53:02',0),(3,'首页顶部轮播','999','2020-07-14 13:03:31','2020-07-17 13:13:03',0),(160,'首页中部轮播图','123','2020-07-14 13:03:31','2020-08-17 14:19:23',0),(161,'课程页面轮播图','456','2020-07-14 13:03:31','2020-08-17 14:19:47',0),(162,'广告名称','789','2020-07-14 13:03:31','2020-07-14 13:03:11',0),(163,'广告名称','78911111','2020-07-14 13:03:31','2020-07-14 13:03:11',0),(164,'广告名称','78911111','2020-07-14 13:03:31','2020-07-14 13:03:11',0),(165,'广告名称','78911111','2020-07-14 13:03:31','2020-07-14 13:03:11',0),(166,'广告名称','78911111','2020-07-14 13:03:31','2020-07-14 13:03:11',0),(167,'广告名称','78911111','2020-07-14 13:03:31','2020-07-14 13:03:11',0),(168,'广告名称111','33333','2020-07-14 13:03:31','2020-07-14 13:03:49',0),(169,'名称','abcd','2020-07-14 16:30:38','2020-07-14 16:31:31',0),(170,'冰淇淋套餐',NULL,'2020-07-14 17:39:19','2020-07-14 17:40:24',0),(171,'12111111',NULL,'2020-07-15 12:18:47','2020-07-15 12:19:06',0),(172,'首页底部页脚位置','a718dfbc-3d9b-40a0-be53-c57712b1a4e4','2020-08-17 13:56:41','2020-08-17 13:56:41',NULL),(173,'Example Name1','f22e659c-2077-409d-a07b-c1f4aed58e52','2020-08-18 13:55:14','2024-06-03 10:50:06',NULL),(174,'Example Name','7bed990d-e49f-4a0c-a7e8-846936f97dc8','2024-06-03 10:48:38','2024-06-03 10:48:38',0);
/*!40000 ALTER TABLE `promotion_space` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource`
--

DROP TABLE IF EXISTS `resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '资源id',
  `name` varchar(200) NOT NULL COMMENT '资源名称',
  `url` varchar(200) NOT NULL COMMENT '资源url',
  `category_id` int(11) DEFAULT NULL COMMENT '分类id',
  `description` varchar(500) DEFAULT NULL COMMENT '简介',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `created_by` varchar(100) NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`),
  KEY `idx_category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='资源表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource`
--

LOCK TABLES `resource` WRITE;
/*!40000 ALTER TABLE `resource` DISABLE KEYS */;
INSERT INTO `resource` VALUES (1,'获取所有角色','/boss/role/all',1,'获取所有角色','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(2,'给用户分配角色','/boss/role/allocateUserRoles',1,'给用户分配角色','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(3,'按条件查询角色','/boss/role/getRolePages',1,'按条件查询角色','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(4,'列出所有角色并标记用户是否拥有','/boss/role/getRolesWithUserPermission',1,'列出所有角色并标记用户是否拥有','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(5,'保存或者更新角色','/boss/role/saveOrUpdate',1,'保存或者更新角色','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(6,'查询用户角色','/boss/role/user/{userId}',1,'查询用户角色','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(7,'获取角色','/boss/role/{id}',1,'获取角色','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(8,'删除角色','/boss/role/{id}',1,'删除角色','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(9,'给角色分配菜单','/boss/menu/allocateRoleMenus',2,'给角色分配菜单','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(10,'获取所有菜单','/boss/menu/getAll',2,'获取所有菜单','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(11,'获取编辑菜单页面信息','/boss/menu/getEditMenuInfo',2,'获取编辑菜单页面信息','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(12,'获取所有菜单并按层级展示','/boss/menu/getMenuNodeList',2,'获取所有菜单并按层级展示','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(13,'按条件分页查询菜单','/boss/menu/getMenuPages',2,'按条件分页查询菜单','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(14,'获取角色拥有的菜单列表','/boss/menu/getRoleMenus',2,'获取角色拥有的菜单列表','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(15,'保存或新增菜单','/boss/menu/saveOrUpdate',2,'保存或新增菜单','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(16,'是否显示开关','/boss/menu/switchShown',2,'是否显示开关','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(17,'根据ID查询菜单','/boss/menu/{id}',2,'根据ID查询菜单','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(18,'删除菜单','/boss/menu/{id}',2,'删除菜单','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(19,'给角色分配资源','/boss/resource/allocateRoleResources',3,'给角色分配资源','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(20,'查询资源分类列表','/boss/resource/category/getAll',3,'查询资源分类列表','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(21,'保存或更新资源分类','/boss/resource/category/saveOrderUpdate',3,'保存或更新资源分类','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(22,'删除资源分类','/boss/resource/category/{id}',3,'删除资源分类','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(23,'获取所有资源','/boss/resource/getAll',3,'获取所有资源','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(24,'按条件分页查询资源','/boss/resource/getResourcePages',3,'按条件分页查询资源','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(25,'获取角色拥有的资源列表','/boss/resource/getRoleResources',3,'获取角色拥有的资源列表','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(26,'保存或者更新资源','/boss/resource/saveOrUpdate',3,'保存或者更新资源','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(27,'获取资源','/boss/resource/{id}',3,'获取资源','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(28,'删除资源','/boss/resource/{id}',3,'删除资源','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(29,'封禁用户','/boss/user/forbidUser',5,'封禁用户','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(30,'分页查询用户信息','/boss/user/getUserPages',5,'分页查询用户信息','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(31,'获取用户菜单和资源权限列表','/boss/permission/getUserPermissions',5,'获取用户菜单和资源权限列表','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(32,'查询用户角色','/boss/role/user/{userId}',1,'查询用户角色','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(33,'课程上下架','/boss/course/changeState',4,'课程上下架','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(34,'新建课程页面路由','/#/courses/new',4,'新建课程页面路由','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(35,'通过课程Id获取课程信息','/boss/course/getCourseById',4,'通过课程Id获取课程信息','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(36,'分页查询课程信息','/boss/course/getQueryCourses',4,'分页查询课程信息','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(37,'保存或者更新课程信息','/boss/course/saveOrUpdateCourse',4,'保存或者更新课程信息','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(38,'上传图片','/boss/course/upload',4,'上传图片','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(39,'保存活动商品','/boss/activityCourse/save',4,'保存活动商品','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(40,'更新活动商品状态','/boss/activityCourse/updateStatus',4,'更新活动商品状态','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(41,'获取章节','/boss/course/section/getBySectionId',4,'获取章节','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(42,'获取章节和课时','/boss/course/section/getSectionAndLesson',4,'获取章节和课时','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(43,'保存或更新章节','/boss/course/section/saveOrUpdateSection',4,'保存或更新章节','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(44,'获取课时内容','/boss/course/lesson/getById',4,'获取课时内容','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(45,'保存或更新课时','/boss/course/lesson/saveOrUpdate',4,'保存或更新课时','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(46,'获取阿里云图片上传凭证','/boss/course/upload/aliyunImagUploadAddressAdnAuth.json',6,'获取阿里云图片上传凭证','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(47,'阿里云转码请求','/boss/course/upload/aliyunTransCode.json',6,'阿里云转码请求','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(48,'阿里云转码进度','/boss/course/upload/aliyunTransCodePercent.json',6,'阿里云转码进度','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(49,'获取阿里云视频上传凭证','/boss/course/upload/aliyunVideoUploadAddressAdnAuth.json',6,'获取阿里云视频上传凭证','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(50,'获取媒体信息','/boss/course/upload/getMediaByLessonId.json',6,'获取媒体信息','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system'),(51,'刷新阿里云视频上传凭证','/boss/course/upload/refreshAliyunVideoUploadAddressAdnAuth.json',6,'刷新阿里云视频上传凭证','2020-07-20 15:41:57','2020-07-20 15:41:57','system','system');
/*!40000 ALTER TABLE `resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource_category`
--

DROP TABLE IF EXISTS `resource_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `resource_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL COMMENT '分类名称',
  `sort` int(4) DEFAULT NULL COMMENT '排序',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `created_by` varchar(100) NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='资源分类表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource_category`
--

LOCK TABLES `resource_category` WRITE;
/*!40000 ALTER TABLE `resource_category` DISABLE KEYS */;
INSERT INTO `resource_category` VALUES (1,'角色管理',1,'2020-07-20 15:41:46','2020-07-20 15:41:46','system','system'),(2,'菜单管理',2,'2020-07-20 15:41:46','2020-07-20 15:41:46','system','system'),(3,'资源管理',3,'2020-07-20 15:41:46','2020-07-20 15:41:46','system','system'),(4,'课程管理',4,'2020-07-20 15:41:46','2020-07-20 15:41:46','system','system'),(5,'用户管理',5,'2020-07-20 15:41:46','2020-07-20 15:41:46','system','system'),(6,'阿里上传',6,'2020-07-20 15:41:46','2020-07-20 15:41:46','system','system'),(7,'广告管理',0,'2020-07-20 07:57:10','2020-07-20 07:57:10','15510792994','15510792994'),(9,'废品管理',7,'2020-08-18 13:38:23','2020-08-18 13:38:23','system','system');
/*!40000 ALTER TABLE `resource_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_menu_relation`
--

DROP TABLE IF EXISTS `role_menu_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `role_menu_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `menu_id` int(11) NOT NULL COMMENT '菜单id',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `created_by` varchar(100) NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=311 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和菜单关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_menu_relation`
--

LOCK TABLES `role_menu_relation` WRITE;
/*!40000 ALTER TABLE `role_menu_relation` DISABLE KEYS */;
INSERT INTO `role_menu_relation` VALUES (22,1,2,'2020-07-20 07:48:06','2020-07-20 07:48:06','15510792994','15510792994'),(23,2,2,'2020-07-20 07:48:06','2020-07-20 07:48:06','15510792994','15510792994'),(24,3,2,'2020-07-20 07:48:06','2020-07-20 07:48:06','15510792994','15510792994'),(25,4,2,'2020-07-20 07:48:06','2020-07-20 07:48:06','15510792994','15510792994'),(26,6,2,'2020-07-20 07:48:06','2020-07-20 07:48:06','15510792994','15510792994'),(27,10,2,'2020-07-20 07:48:06','2020-07-20 07:48:06','15510792994','15510792994'),(28,11,2,'2020-07-20 07:48:06','2020-07-20 07:48:06','15510792994','15510792994'),(29,12,2,'2020-07-20 07:48:06','2020-07-20 07:48:06','15510792994','15510792994'),(30,13,2,'2020-07-20 07:48:06','2020-07-20 07:48:06','15510792994','15510792994'),(31,14,2,'2020-07-20 07:48:06','2020-07-20 07:48:06','15510792994','15510792994'),(32,19,3,'2020-07-20 07:52:12','2020-07-20 07:52:12','15510792994','15510792994'),(33,20,3,'2020-07-20 07:52:12','2020-07-20 07:52:12','15510792994','15510792994'),(34,5,3,'2020-07-20 07:52:12','2020-07-20 07:52:12','15510792994','15510792994'),(35,21,3,'2020-07-20 07:52:12','2020-07-20 07:52:12','15510792994','15510792994'),(242,1,1,'2020-08-17 16:28:07','2020-08-17 16:28:07','system','system'),(243,2,1,'2020-08-17 16:28:07','2020-08-17 16:28:07','system','system'),(244,3,1,'2020-08-17 16:28:07','2020-08-17 16:28:07','system','system'),(245,4,1,'2020-08-17 16:28:07','2020-08-17 16:28:07','system','system'),(246,10,1,'2020-08-17 16:28:07','2020-08-17 16:28:07','system','system'),(247,11,1,'2020-08-17 16:28:07','2020-08-17 16:28:07','system','system'),(248,12,1,'2020-08-17 16:28:07','2020-08-17 16:28:07','system','system'),(249,13,1,'2020-08-17 16:28:07','2020-08-17 16:28:07','system','system'),(250,14,1,'2020-08-17 16:28:07','2020-08-17 16:28:07','system','system'),(251,22,1,'2020-08-17 16:28:07','2020-08-17 16:28:07','system','system'),(252,5,1,'2020-08-17 16:28:07','2020-08-17 16:28:07','system','system'),(253,19,1,'2020-08-17 16:28:07','2020-08-17 16:28:07','system','system'),(254,20,1,'2020-08-17 16:28:07','2020-08-17 16:28:07','system','system'),(255,21,1,'2020-08-17 16:28:07','2020-08-17 16:28:07','system','system'),(256,23,1,'2020-08-17 16:28:07','2020-08-17 16:28:07','system','system'),(257,6,1,'2020-08-17 16:28:07','2020-08-17 16:28:07','system','system'),(258,7,1,'2020-08-17 16:28:07','2020-08-17 16:28:07','system','system'),(259,8,1,'2020-08-17 16:28:07','2020-08-17 16:28:07','system','system'),(260,9,1,'2020-08-17 16:28:07','2020-08-17 16:28:07','system','system'),(261,15,1,'2020-08-17 16:28:07','2020-08-17 16:28:07','system','system'),(262,16,1,'2020-08-17 16:28:07','2020-08-17 16:28:07','system','system'),(263,17,1,'2020-08-17 16:28:07','2020-08-17 16:28:07','system','system'),(264,18,1,'2020-08-17 16:28:07','2020-08-17 16:28:07','system','system'),(289,5,7,'2020-08-17 16:29:35','2020-08-17 16:29:35','system','system'),(290,19,7,'2020-08-17 16:29:35','2020-08-17 16:29:35','system','system'),(291,20,7,'2020-08-17 16:29:35','2020-08-17 16:29:35','system','system'),(292,21,7,'2020-08-17 16:29:35','2020-08-17 16:29:35','system','system'),(293,23,7,'2020-08-17 16:29:35','2020-08-17 16:29:35','system','system'),(294,6,7,'2020-08-17 16:29:35','2020-08-17 16:29:35','system','system'),(295,7,7,'2020-08-17 16:29:35','2020-08-17 16:29:35','system','system'),(296,8,7,'2020-08-17 16:29:35','2020-08-17 16:29:35','system','system'),(297,9,7,'2020-08-17 16:29:35','2020-08-17 16:29:35','system','system'),(298,15,7,'2020-08-17 16:29:35','2020-08-17 16:29:35','system','system'),(299,16,7,'2020-08-17 16:29:35','2020-08-17 16:29:35','system','system'),(300,17,7,'2020-08-17 16:29:35','2020-08-17 16:29:35','system','system'),(301,18,7,'2020-08-17 16:29:35','2020-08-17 16:29:35','system','system');
/*!40000 ALTER TABLE `role_menu_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_resource_relation`
--

DROP TABLE IF EXISTS `role_resource_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `role_resource_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '关系id',
  `resource_id` int(11) NOT NULL COMMENT '资源id',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `created_by` varchar(100) NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和资源关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_resource_relation`
--

LOCK TABLES `role_resource_relation` WRITE;
/*!40000 ALTER TABLE `role_resource_relation` DISABLE KEYS */;
INSERT INTO `role_resource_relation` VALUES (1,1,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(2,2,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(3,3,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(4,4,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(5,5,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(6,6,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(7,7,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(8,8,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(9,9,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(10,10,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(11,11,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(12,12,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(13,13,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(14,14,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(15,15,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(16,16,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(17,17,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(18,18,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(19,19,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(20,20,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(21,21,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(22,22,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(23,23,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(24,24,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(25,25,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(26,26,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(27,27,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(28,28,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(29,29,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(30,30,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(31,31,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(32,32,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(33,33,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(34,34,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(35,35,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(36,36,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(37,37,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(38,38,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(39,39,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(40,40,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(41,41,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(42,42,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(43,43,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(44,44,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(45,45,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(46,46,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(47,47,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(48,48,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(49,49,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(50,50,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(51,51,1,'2020-07-20 15:42:11','2020-07-20 15:42:11','system','system'),(52,1,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),(53,2,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),(54,3,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),(55,4,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),(56,5,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),(57,6,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),(58,7,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),(59,8,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),(60,9,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),(61,10,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),(62,11,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),(63,12,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),(64,13,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),(65,14,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),(66,15,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),(67,16,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),(68,17,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),(69,18,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),(70,19,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),(71,20,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),(72,21,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),(73,22,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),(74,23,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),(75,24,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),(76,25,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),(77,26,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),(78,27,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),(79,28,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),(80,29,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),(81,30,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),(82,31,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),(83,32,2,'2020-07-20 07:50:39','2020-07-20 07:50:39','15510792994','15510792994'),(84,33,3,'2020-07-20 07:55:32','2020-07-20 07:55:32','15510792994','15510792994'),(85,34,3,'2020-07-20 07:55:32','2020-07-20 07:55:32','15510792994','15510792994'),(86,35,3,'2020-07-20 07:55:32','2020-07-20 07:55:32','15510792994','15510792994'),(87,36,3,'2020-07-20 07:55:32','2020-07-20 07:55:32','15510792994','15510792994'),(88,37,3,'2020-07-20 07:55:32','2020-07-20 07:55:32','15510792994','15510792994'),(89,38,3,'2020-07-20 07:55:32','2020-07-20 07:55:32','15510792994','15510792994'),(90,39,3,'2020-07-20 07:55:32','2020-07-20 07:55:32','15510792994','15510792994'),(91,40,3,'2020-07-20 07:55:32','2020-07-20 07:55:32','15510792994','15510792994'),(92,41,3,'2020-07-20 07:55:32','2020-07-20 07:55:32','15510792994','15510792994'),(93,42,3,'2020-07-20 07:55:32','2020-07-20 07:55:32','15510792994','15510792994'),(94,43,3,'2020-07-20 07:55:32','2020-07-20 07:55:32','15510792994','15510792994'),(95,44,3,'2020-07-20 07:55:32','2020-07-20 07:55:32','15510792994','15510792994'),(96,45,3,'2020-07-20 07:55:32','2020-07-20 07:55:32','15510792994','15510792994'),(97,32,4,'2020-07-22 04:23:25','2020-07-22 04:23:25','15321919577','15321919577'),(98,1,4,'2020-07-22 04:23:25','2020-07-22 04:23:25','15321919577','15321919577'),(99,2,4,'2020-07-22 04:23:25','2020-07-22 04:23:25','15321919577','15321919577'),(100,3,4,'2020-07-22 04:23:25','2020-07-22 04:23:25','15321919577','15321919577'),(101,4,4,'2020-07-22 04:23:25','2020-07-22 04:23:25','15321919577','15321919577'),(102,5,4,'2020-07-22 04:23:25','2020-07-22 04:23:25','15321919577','15321919577'),(103,6,4,'2020-07-22 04:23:25','2020-07-22 04:23:25','15321919577','15321919577'),(104,7,4,'2020-07-22 04:23:25','2020-07-22 04:23:25','15321919577','15321919577');
/*!40000 ALTER TABLE `role_resource_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `code` varchar(100) NOT NULL COMMENT '角色code',
  `name` varchar(200) DEFAULT NULL COMMENT '角色名称',
  `description` varchar(500) DEFAULT NULL COMMENT '简介',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `created_by` varchar(100) NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ADMIN','超级管理员','后台管理员，初始拥有权限管理功能','2020-07-20 15:41:29','2020-07-20 15:41:29','system','system'),(2,'AUTHORITY_MANAGER','权限管理员','管理权限相关数据，如角色、菜单、资源。可以给用户分配角色。','2020-07-20 07:47:55','2020-07-20 07:47:55','15510792994','15510792994'),(3,'COURSE_MANAGER','课程管理员','管理课程信息，对课程、课时、章节进行管理。','2020-07-20 07:52:04','2020-07-20 07:52:04','15510792994','15510792994'),(7,'UESR','普通用户','普通用户只能查询','2020-08-17 16:29:23','2020-08-17 16:29:23','system','system');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `teacher` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `course_id` int(11) DEFAULT '0' COMMENT '课程ID',
  `teacher_name` varchar(255) DEFAULT NULL COMMENT '讲师姓名',
  `position` varchar(100) DEFAULT '' COMMENT '职务',
  `description` text COMMENT '讲师介绍',
  `create_time` datetime NOT NULL COMMENT '记录创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `is_del` tinyint(1) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_courseId` (`course_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (158,7,'兔妈','有赞高级讲师','多家平台的头部商家文案顾问，有赞高级讲师，具有 8 年文案营销实战经验','2020-07-10 10:33:56','2020-07-10 10:33:56',0),(159,8,'那朋','前京东资深','掌握框架原理，精通经典应用场景','2020-07-10 11:20:43','2020-07-17 14:05:25',0),(160,9,'秒杀11','秒杀','秒杀1','2020-07-10 11:24:31','2020-07-10 11:24:31',0),(161,10,'React 入门','React 入门','React 入门','2020-07-17 12:32:43','2020-07-17 12:32:43',0),(162,15,'维尼','高级讲师','多年企业实战经验','2020-08-04 15:15:06','2020-08-04 15:15:06',0),(163,16,'药水哥','超级讲师','多年药水企业实战经验','2020-08-04 15:23:17','2020-08-04 16:54:00',0),(164,17,'药水哥','超级讲师','多年药水企业实战经验','2020-08-04 15:29:26','2020-08-04 16:53:27',0),(165,18,'药水哥','超级讲师','多年药水企业实战经验','2020-08-04 16:54:45','2020-08-04 16:54:45',0),(166,19,'药水哥aaa','超级讲师aa','多年药水企业实战经验aaa','2020-08-04 16:56:41','2020-08-04 16:56:41',0),(167,20,'药水哥aaa','超级讲师aa','多年药水企业实战经验aaa','2020-08-05 13:42:08','2020-08-05 13:42:08',0),(168,21,'一拳超人一拳超人','一拳超人','一拳超人','2020-08-12 17:34:26','2020-08-12 17:34:26',0),(169,22,'岸本齐史','高级讲师','高级讲师','2020-08-12 17:44:39','2020-08-12 17:44:39',0),(170,23,'卡卡西','高级讲师','木叶 卡卡西','2020-08-12 18:08:57','2020-08-12 18:08:57',0),(171,24,'药水哥','超级讲师','多年药水企业实战经验','2020-08-12 18:12:44','2020-08-12 18:12:44',0),(172,25,'一拳超人一拳超人','一拳超人','一拳超人','2020-08-12 18:13:57','2020-08-12 18:13:57',0),(173,26,'岸本齐史','高级讲师','高级讲师','2020-08-12 18:15:16','2020-08-12 18:15:16',0),(174,27,'琦玉2','高级讲师','一拳超人','2020-08-12 18:19:16','2020-08-12 18:20:00',0),(175,28,'大是大非三11111','大是大非三1111','大是大非三111','2020-08-12 18:53:42','2020-08-12 18:55:41',0),(176,29,'好大哥','高级讲师','溜达秘籍溜达秘籍','2020-08-14 18:08:24','2020-08-14 18:08:24',0),(177,30,'燕寄雨','掌门','天下刀宗天下刀宗天下刀宗','2020-08-19 11:53:13','2020-08-19 11:54:02',0),(181,34,'John Tom','Senior Java Developer','John has over 10 years of experience in Java.','2024-06-02 17:57:07','2024-06-02 18:01:07',0);
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `name` varchar(255) NOT NULL COMMENT '用户昵称',
  `portrait` varchar(255) DEFAULT NULL COMMENT '用户头像地址',
  `phone` varchar(255) NOT NULL COMMENT '注册手机',
  `password` varchar(255) DEFAULT NULL COMMENT '用户密码（可以为空，支持只用验证码注册、登录）',
  `reg_ip` varchar(255) DEFAULT NULL COMMENT '注册ip',
  `account_non_expired` bit(1) DEFAULT b'1' COMMENT '是否有效用户',
  `credentials_non_expired` bit(1) DEFAULT b'1' COMMENT '账号是否未过期',
  `account_non_locked` bit(1) DEFAULT b'1' COMMENT '是否未锁定',
  `status` varchar(20) NOT NULL DEFAULT 'ENABLE' COMMENT '用户状态：ENABLE能登录，DISABLE不能登录',
  `is_del` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `create_time` datetime NOT NULL COMMENT '注册时间',
  `update_time` datetime NOT NULL COMMENT '记录更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `idx_phone_is_del` (`phone`,`is_del`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=100030023 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (100030011,'15321919577','','15321919577','e246e442e34b28ebfa6a6e5c8ffac659',NULL,_binary '',_binary '',_binary '','DISABLE',_binary '\0','2020-07-10 10:19:15','2020-07-10 10:19:15'),(100030012,'15510792994',NULL,'15510792994','e246e442e34b28ebfa6a6e5c8ffac659',NULL,_binary '',_binary '',_binary '','ENABLE',_binary '\0','2020-07-10 10:43:01','2020-07-10 10:43:01'),(100030013,'15801363456',NULL,'15801363456','$2a$10$JsBLd.2kpFjPWx4dGev1Mut..mLLTTXrM2qVb6nCPhOhgFu7RoGmK',NULL,_binary '',_binary '',_binary '','ENABLE',_binary '\0','2020-07-10 11:09:11','2020-07-10 11:09:11'),(100030014,'15321919571',NULL,'15321919571','$2a$10$.15BYpIXvEyUIpcuAEKdN.AcVGWjs7gi4KXTzGMh15aDabkM0LZMe',NULL,_binary '',_binary '',_binary '','ENABLE',_binary '\0','2020-07-10 11:10:26','2020-07-10 11:10:26'),(100030015,'15801363195',NULL,'15801363195','$2a$10$FWWb4sULtpEr72mRfrEWFO5Wxxxfu0gnk8jJvtvmyUgHV7y.AysOm',NULL,_binary '',_binary '',_binary '','ENABLE',_binary '\0','2020-07-10 11:21:50','2020-07-10 11:21:50'),(100030016,'15510792995',NULL,'15510792995','$2a$10$DDOW0oJO9cNm.ZEDNmJmF.AZhsQxoyQ84zSx.UKZBbc58qJWh9HSy',NULL,_binary '',_binary '',_binary '','ENABLE',_binary '\0','2020-07-10 11:23:56','2020-07-10 11:23:56'),(100030017,'15811111111',NULL,'15811111111','$2a$10$j08ZtKUfYeQ5cTCRLoeFeuNDmob1DnLRK7Mfkdhr1/SuUKhqkwkCC',NULL,_binary '',_binary '',_binary '','DISABLE',_binary '','2020-07-10 11:25:45','2020-07-13 10:56:31'),(100030018,'15813795039',NULL,'15813795039','$2a$10$dudhkaLfSJJhpy7q5dqX4uEbmWk9XpS8UcpmzGIM8YI3UWGzOcMHm',NULL,_binary '',_binary '',_binary '','ENABLE',_binary '\0','2020-07-10 12:17:35','2020-07-10 12:17:35'),(100030019,'18201288771','','18201288771','$2a$10$XmknffykNPNMs97wJKtOwem6tR8HGMQTx0PfALGA66311pzrW8rq2',NULL,_binary '',_binary '',_binary '','ENABLE',_binary '\0','2020-07-10 12:20:16','2020-07-10 12:20:16'),(100030020,'18211111111',NULL,'18211111111','$2a$10$zwz0Qp6H0TYZjDs0hKwiU.wKb91ws4xYkfFf1tujgPg/AcPXTChN2',NULL,_binary '',_binary '',_binary '','ENABLE',_binary '\0','2020-07-10 13:57:41','2020-07-10 13:57:41'),(100030021,'122345678910',NULL,'12345678910','e246e442e34b28ebfa6a6e5c8ffac659',NULL,_binary '',_binary '',_binary '','ENABLE',_binary '\0','2024-06-06 10:18:48','2024-06-06 10:18:53');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_phone_verification_code`
--

DROP TABLE IF EXISTS `user_phone_verification_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_phone_verification_code` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `phone` varchar(15) DEFAULT '' COMMENT '手机号',
  `verification_code` varchar(15) DEFAULT '' COMMENT '验证码',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `isCheck` bit(1) DEFAULT b'0' COMMENT '验证码是否校验过',
  `check_times` int(2) DEFAULT '0' COMMENT '校验次数',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `l_phone_verification_code_ind_01` (`phone`,`create_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33317 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_phone_verification_code`
--

LOCK TABLES `user_phone_verification_code` WRITE;
/*!40000 ALTER TABLE `user_phone_verification_code` DISABLE KEYS */;
INSERT INTO `user_phone_verification_code` VALUES (33305,'18201288775','111111','2020-07-03 23:59:31',_binary '',80),(33306,'008615321919577','472148','2020-07-17 16:41:21',_binary '\0',0),(33307,'008615321919577','254709','2020-07-17 16:53:02',_binary '\0',0),(33308,'0086','149696','2020-07-17 17:33:19',_binary '\0',0),(33309,'0086','164595','2020-07-17 18:00:48',_binary '\0',0),(33310,'008615321919577','994241','2020-07-17 18:01:27',_binary '\0',0),(33311,'008615321919577','775431','2020-07-17 18:04:31',_binary '\0',0),(33312,'008615321919577','610538','2020-07-17 18:06:45',_binary '\0',0),(33313,'008615321919577','317040','2020-07-17 18:17:05',_binary '\0',0),(33314,'008618201288770','956444','2020-07-23 16:18:56',_binary '',2),(33315,'18201288771','029570','2020-07-23 18:01:20',_binary '',2),(33316,'18201288771','058365','2020-07-23 19:11:35',_binary '',2);
/*!40000 ALTER TABLE `user_phone_verification_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role_relation`
--

DROP TABLE IF EXISTS `user_role_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_role_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '关系id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `created_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `created_by` varchar(100) NOT NULL COMMENT '创建人',
  `updated_by` varchar(100) NOT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户和角色关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role_relation`
--

LOCK TABLES `user_role_relation` WRITE;
/*!40000 ALTER TABLE `user_role_relation` DISABLE KEYS */;
INSERT INTO `user_role_relation` VALUES (1,100030012,1,'2020-07-20 15:42:57','2020-07-20 15:42:57','system','system'),(3,100030014,1,'2020-07-20 07:57:58','2020-07-20 07:57:58','15510792995','15510792995'),(4,100030019,1,'2020-07-20 07:58:05','2020-07-20 07:58:05','15510792995','15510792995'),(6,100030011,3,'2020-07-20 07:58:17','2020-07-20 07:58:17','15510792995','15510792995'),(7,100030011,4,'2020-07-20 07:58:17','2020-07-20 07:58:17','15510792995','15510792995'),(8,100030011,1,'2020-07-21 02:30:19','2020-07-21 02:30:19','15510792995','15510792995'),(9,100030016,1,'2020-07-28 03:55:44','2020-07-28 03:55:44','15510792995','15510792995'),(10,4,1,'2024-06-06 10:58:22','2024-06-06 10:58:22','system','system'),(11,4,2,'2024-06-06 10:58:22','2024-06-06 10:58:22','system','system'),(12,4,3,'2024-06-06 10:58:22','2024-06-06 10:58:22','system','system');
/*!40000 ALTER TABLE `user_role_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_weixin`
--

DROP TABLE IF EXISTS `user_weixin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_weixin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `union_id` varchar(255) NOT NULL DEFAULT '' COMMENT '认证id,微信对应的时unionId',
  `open_id` varchar(255) DEFAULT NULL COMMENT 'openId',
  `nick_name` varchar(255) NOT NULL COMMENT '昵称',
  `portrait` varchar(512) DEFAULT NULL COMMENT '头像',
  `city` varchar(255) DEFAULT NULL COMMENT '城市',
  `sex` int(11) DEFAULT NULL COMMENT '性别, 1-男，2-女',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `is_del` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `oauthId_and_oauthType_unique` (`union_id`,`open_id`,`is_del`) USING BTREE,
  UNIQUE KEY `userId_and_oauthType_unique_index` (`user_id`,`open_id`,`is_del`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=506562 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_weixin`
--

LOCK TABLES `user_weixin` WRITE;
/*!40000 ALTER TABLE `user_weixin` DISABLE KEYS */;
INSERT INTO `user_weixin` VALUES (506561,100030019,'oXEX_svcbl-mCDhWloqlEFNVHgP8','oGYgl0u0vZMKVAByQ3hR0i7jpKew','leo','http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83epKy1c3YeeI5vRqSxqDkaYc9XDuPao1BRLFKGf65SiaRIFqHTpeJg90RfrCXCo7WkicpfsPdKTdNTpA/132','',1,'2020-07-23 19:12:21','2020-07-23 19:12:21',_binary '\0');
/*!40000 ALTER TABLE `user_weixin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-06 16:03:58
