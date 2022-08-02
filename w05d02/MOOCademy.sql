CREATE TABLE Courses (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title text,
  decription text
);

CREATE TABLE Lessons (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  course_id int,
  title text,
  body text
);

ALTER TABLE Lessons ADD FOREIGN KEY course_id REFERENCES Courses(id);
