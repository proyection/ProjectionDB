CREATE TABLE `task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `acceptance_criteria` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `done` bit(1) NOT NULL,
  `limit_date` datetime DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Task_User_idx` (`user_id`),
  CONSTRAINT `fk_Task_User` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8