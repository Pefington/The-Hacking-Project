CREATE TABLE `Users` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` text
);

CREATE TABLE `Links` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int,
  `link` text
);

CREATE TABLE `LinkComment` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `comment` text,
  `link_id` int,
  `user_id` int
);

CREATE TABLE `CommentComment` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `comment` text,
  `comment_id` int,
  `user_id` int
);

ALTER TABLE `Links` ADD FOREIGN KEY (`user_id`) REFERENCES `Users` (`id`);

ALTER TABLE `LinkComment` ADD FOREIGN KEY (`link_id`) REFERENCES `Links` (`id`);

ALTER TABLE `LinkComment` ADD FOREIGN KEY (`user_id`) REFERENCES `Users` (`id`);

ALTER TABLE `CommentComment` ADD FOREIGN KEY (`comment_id`) REFERENCES `LinkComment` (`id`);

ALTER TABLE `CommentComment` ADD FOREIGN KEY (`user_id`) REFERENCES `Users` (`id`);
