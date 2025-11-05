USE `m5prog`;
DROP procedure IF EXISTS `getAllWebbookmarks`;

DELIMITER $$
USE `m5prog`$$
CREATE PROCEDURE `getAllWebbookmarks` ()
BEGIN
 select * from webbookmarks;
END$$

DELIMITER ;

