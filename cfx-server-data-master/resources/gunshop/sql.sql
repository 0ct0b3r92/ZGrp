DROP TABLE IF EXISTS gunshop;
CREATE TABLE IF NOT EXISTS `gunshop` (
  `identifier` varchar(50) DEFAULT NULL,
  `weapon` varchar(50) DEFAULT NULL,
  `sellprice` int(11) DEFAULT NULL,
  `licenselvl` int(1) DEFAULT NULL,
  `weapon_name` varchar(50) DEFAULT NULL
 ) ENGINE=InnoDB DEFAULT CHARSET=latin1;