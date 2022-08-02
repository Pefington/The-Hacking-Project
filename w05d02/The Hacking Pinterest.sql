CREATE TABLE `Users` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` text
);

CREATE TABLE `Pins` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int,
  `img_link` text
);

CREATE TABLE `Comments` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `content` text,
  `pin_id` int,
  `user_id` int
);

ALTER TABLE `Pins` ADD FOREIGN KEY (`user_id`) REFERENCES `Users` (`id`);

ALTER TABLE `Comments` ADD FOREIGN KEY (`pin_id`) REFERENCES `Pins` (`id`);

ALTER TABLE `Comments` ADD FOREIGN KEY (`user_id`) REFERENCES `Users` (`id`);
