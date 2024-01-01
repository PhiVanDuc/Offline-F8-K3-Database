-- Tạo bảng courses
CREATE TABLE courses (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	price FLOAT,
	description TEXT,
	detail TEXT,
	teacher_id INT NOT NULL,
	active INT,
	created_at TIMESTAMP DEFAULT NOW(),
	updated_at TIMESTAMP DEFAULT NOW()
)


-- Đổi tên trường detail thành content, ràng buộc chuyển thành NOT NULL
ALTER TABLE courses
RENAME COLUMN detail TO content

ALTER TABLE courses
ALTER COLUMN content SET NOT NULL


-- Tạo bảng teacher
CREATE TABLE teacher (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	bio TEXT,
	created_at TIMESTAMP DEFAULT NOW(),
	updated_at TIMESTAMP DEFAULT NOW()
)


-- Thêm 3 giảng viên vào bảng
INSERT INTO teacher (name, bio)
VALUES ('Teacher 1', 'Bio teacher 1'),
	   ('Teacher 2', 'Bio teacher 2'),
	   ('Teacher 3', 'Bio teacher 3')
	   
	 
-- Thêm mỗi 1 giảng viên có 3 khóa học
INSERT INTO courses (name, price, description, content, teacher_id, active)
VALUES ('Course 1', '200', 'Description course 1', 'Content course 1', 1, 1),
	   ('Course 2', '300', 'Description course 2', 'Content course 2', 1, 1),
	   ('Course 3', '400', 'Description course 3', 'Content course 3', 1, 1),
	   ('Course 4', '500', 'Description course 4', 'Content course 4', 2, 0),
	   ('Course 5', '500', 'Description course 5', 'Content course 5', 2, 0),
	   ('Course 6', '700', 'Description course 6', 'Content course 6', 2, 1),
	   ('Course 7', '400', 'Description course 7', 'Content course 7', 3, 1),
	   ('Course 8', '900', 'Description course 8', 'Content course 8', 3, 0),
	   ('Course 9', '100', 'Description course 9', 'Content course 9', 3, 1)
	   
	   
-- Sửa tên và giá từng khóa học thành tên mới và giá mới (Tên khóa học, giá khóa học các khóa học không được giống nhau)
UPDATE courses
SET price = 600, updated_at = NOW()
WHERE id = 5

UPDATE courses
SET price = 800, updated_at = NOW()
WHERE id = 7

UPDATE courses
SET price = 1000, updated_at = NOW()
WHERE id = 9


-- Hiển thị danh sách giảng viên
SELECT *
FROM teacher


-- Hiển thị danh sách khóa học
SELECT *
FROM courses