start transaction;
INSERT INTO `sakila`.`rental`
(
`rental_date`,
`inventory_id`,
`customer_id`,
`staff_id`)
VALUES ('2024-11-01',1,1,1);

INSERT INTO `sakila`.`payment`
(
`customer_id`,
`staff_id`,
`rental_id`,
`amount`,
`payment_date`,
`last_update`)
VALUES (1,1,1,1 );

commit;
rollback;