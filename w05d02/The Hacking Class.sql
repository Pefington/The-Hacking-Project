CREATE TABLE `Students` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `course_id` int,
  `name` text
);

CREATE TABLE `Courses` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `title` text,
  `decription` text
);

CREATE TABLE `Lessons` (
  `id` integer PRIMARY KEY AUTO_INCREMENT,
  `course_id` int,
  `body` text
);

ALTER TABLE `Students` ADD FOREIGN KEY (`course_id`) REFERENCES `Courses` (`id`);

ALTER TABLE `Lessons` ADD FOREIGN KEY (`course_id`) REFERENCES `Courses` (`id`);
