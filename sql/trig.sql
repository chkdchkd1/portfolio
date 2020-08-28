DELIMITER $$
CREATE TRIGGER tg_table1_insert
BEFORE INSERT ON reservation
FOR EACH ROW
BEGIN
  INSERT INTO reservation_seq VALUES (NULL);
  SET NEW.rvNum = CONCAT('T', LPAD(LAST_INSERT_ID(), 8, '0'));
END$$
DELIMITER ;
