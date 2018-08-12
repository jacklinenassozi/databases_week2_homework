use studentsTables;
CREATE TABLE `class` ( 
`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`name` TEXT NOT NULL,
`start_date` TEXT NOT NULL,
`end_data` TEXT  NOT NULL,
PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `student` ( 
`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
`name` TEXT NOT NULL,
`email` TEXT NOT NULL,
`phone` int(20) unsigned NOT NULL,
PRIMARY KEY (`id`),
CONSTRAINT `fk_class_id` FOREIGN KEY (`id`) REFERENCES `class` (`id`)  ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

SELECT * FROM class;

insert into class (id, name, start_date, end_data) values (NULL, 'red','2017-11-02 01:21:31', '2018-08-04 16:34:45');
insert into class (id, name, start_date, end_data) values (NULL, 'green', '2018-06-14 23:47:58', '2017-10-18 04:02:55');
insert into class (id, name,start_date, end_data) values (NULL, 'Yellow', '2018-06-06 13:17:59', '2017-08-23 01:13:49');
insert into class (id, name, start_date, end_data) values (NULL, 'blue', '2018-01-09 13:10:17', '2017-12-08 04:36:07');
insert into class (id, name, start_date, end_data) values (NULL, 'Maroon', '2017-09-20 23:41:08', '2017-11-14 05:57:24');


SELECT * FROM student;


insert into student (id, name, email, phone, class_id) values (1, 'jacky jacky', 'jacky@nasa.gov', '217-495-5221', 5);
insert into student (id, name, email, phone, class_id) values (2, 'nsimbi brian', 'nsinbi@sakura.ne.jp', '852-648-4513', 5);
insert into student (id, name, email, phone, class_id) values (3, 'hamah sinko', 'hamah2@ustream.tv', '718-363-7861', 4);
insert into student (id, name, email, phone, class_id) values (4, 'ruth kagwa', 'denis3@europa.eu', '887-780-0103', 5);
insert into student (id, name, email, phone, class_id) values (5, 'andrew kawesi', 'andrew4@cdc.gov', '386-753-5293', 5);
insert into student (id, name, email, phone, class_id) values (6, 'dortia apollo', 'dotia@wisc.edu', '979-241-0869', 3);


-- STEP 3 .......... 
-- Create an index on the name column of the student table.
CREATE INDEX idx_studentName
ON student (name);

-- Add a new column to the class table named status which can only have the following values: not-started, ongoing, finished (hint: enumerations).
ALTER TABLE class
ADD `status` ENUM ('not-started', 'ongoing', 'finished');