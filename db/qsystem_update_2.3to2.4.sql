USE `qsystem`;
SET AUTOCOMMIT=0;

-- -----------------------------------------------------
-- Table `qsystem`.`services`
-- -----------------------------------------------------

ALTER TABLE `services` ADD `deleted` DATE NULL COMMENT 'признак удаления с проставленим даты';

-- -----------------------------------------------------
-- Table `qsystem`.`users`
-- -----------------------------------------------------

ALTER TABLE `users` ADD `deleted` DATE NULL COMMENT 'признак удаления с проставленим даты';

-- -----------------------------------------------------
-- Table `qsystem`.`net`
-- -----------------------------------------------------
UPDATE net SET version = '2.4' where id<>-1;

COMMIT;
