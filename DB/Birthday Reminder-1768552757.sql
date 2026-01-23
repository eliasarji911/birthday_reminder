CREATE TABLE IF NOT EXISTS `Users` (
	`User_id` int AUTO_INCREMENT NOT NULL UNIQUE,
	`username` varchar(255) NOT NULL UNIQUE,
	`email` varchar(255) NOT NULL,
	`password` varchar(255) NOT NULL,
	PRIMARY KEY (`User_id`)
);

CREATE TABLE IF NOT EXISTS `Groups` (
	`Admin_id` int NOT NULL,
	`Group_id` int NOT NULL UNIQUE,
	`Group_name` varchar(255) NOT NULL DEFAULT '255',
	PRIMARY KEY (`Group_id`)
);

CREATE TABLE IF NOT EXISTS `Events` (
	`Event_id` int AUTO_INCREMENT NOT NULL UNIQUE,
	`group_id` int NOT NULL,
	`title` varchar(255) NOT NULL DEFAULT '255',
	`event_date` date NOT NULL,
	PRIMARY KEY (`Event_id`)
);

CREATE TABLE IF NOT EXISTS `Group_members` (
	`id` int AUTO_INCREMENT NOT NULL UNIQUE,
	`user_id` int NOT NULL,
	`group_id` int NOT NULL,
	PRIMARY KEY (`id`)
);


ALTER TABLE `Groups` ADD CONSTRAINT `Groups_fk0` FOREIGN KEY (`Admin_id`) REFERENCES `Users`(`User_id`);
ALTER TABLE `Events` ADD CONSTRAINT `Events_fk1` FOREIGN KEY (`group_id`) REFERENCES `Groups`(`Group_id`);
ALTER TABLE `Group_members` ADD CONSTRAINT `Group_members_fk1` FOREIGN KEY (`user_id`) REFERENCES `Users`(`User_id`);

ALTER TABLE `Group_members` ADD CONSTRAINT `Group_members_fk2` FOREIGN KEY (`group_id`) REFERENCES `Groups`(`Group_id`);