ALTER TABLE `sakila`.`customer` 
DROP FOREIGN KEY `fk_customer_address`,
DROP FOREIGN KEY `fk_customer_store`;
ALTER TABLE `sakila`.`customer` 
CHANGE COLUMN `store_id` `store_id` TINYINT UNSIGNED NULL ,
CHANGE COLUMN `address_id` `address_id` SMALLINT UNSIGNED NULL ;
ALTER TABLE `sakila`.`customer` 
ADD CONSTRAINT `fk_customer_address`
  FOREIGN KEY (`address_id`)
  REFERENCES `sakila`.`address` (`address_id`)
  ON DELETE RESTRICT
  ON UPDATE CASCADE,
ADD CONSTRAINT `fk_customer_store`
  FOREIGN KEY (`store_id`)
  REFERENCES `sakila`.`store` (`store_id`)
  ON DELETE RESTRICT
  ON UPDATE CASCADE;