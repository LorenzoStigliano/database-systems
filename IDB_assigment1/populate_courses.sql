INSERT INTO Courses (Code, Name, Credits)
VALUES
  ('MATH01', 'Algebra', 20),
  ('MATH02', 'Calculus', 10),
  ('MATH03', 'Geometery', 20),
  ('MATH04', 'Probability', 10),
  ('MATH05', 'Statistics', 20),
  ('INF01', 'Algorithms', 20),
  ('INF02', 'Databases', 20),
  ('INF03', 'Data Structures', 20),
  ('INF04', 'ML', 10),
  ('INF05', 'AI', 10);

INSERT INTO Students (UUN, Name, Degree)
VALUES
  ('s0', 'Alex', 'A'),
  ('s1', 'Bert', 'B'),
  ('s2', 'Charlie', 'C'),
  ('s3', 'Dylan', 'D'),
  ('s4', 'Ed', 'E'),
  ('s5', 'Fay', 'F'),
  ('s6', 'Gabe', 'G'),
  ('s7', 'Harrold', 'G'),
  ('s8', 'Indigo', 'A'),
  ('s9', 'James', 'C'),
  ('s10', 'Nico', 'B'),
  ('s11', 'Cris', 'D'),
  ('s12', 'Miguel', 'E');


INSERT INTO Exams (Student, Course, Date, Grade)
VALUES
  ('s0', 'MATH01', '2020-01-01', 88),
  ('s0', 'MATH02', '2020-01-02', 55),
  ('s0', 'INF01', '2020-01-02', 44),
  ('s1', 'MATH01', '2020-01-03', 43),
  ('s1', 'MATH02', '2020-01-03', 67),
  ('s1', 'MATH03', '2020-01-03', 40),
  ('s1', 'MATH04', '2020-01-04', 60),
  ('s2', 'MATH05', '2020-01-05', 22),
  ('s3', 'MATH01', '2020-01-01', 99),
  ('s3', 'MATH02', '2020-01-01', 60),
  ('s4', 'INF01', '2020-02-01', 12),
  ('s4', 'INF02', '2020-02-02', 37),
  ('s5', 'INF02', '2020-02-02', 41),
  ('s6', 'INF03', '2020-02-13', 23),
  ('s6', 'INF01', '2020-02-01', 55),
  ('s7', 'INF01', '2020-02-01', 67),
  ('s8', 'INF05', '2020-02-25', 71),
  ('s9', 'INF05', '2020-02-25', 91),
  ('s9', 'INF04', '2020-02-25', 91),
  ('s10', 'INF05', '2020-02-25', 75),
  ('s10', 'INF04', '2020-02-14', 82),
  ('s10', 'INF03', '2020-02-13', 92),
  ('s10', 'MATH01', '2020-02-13', 80);

INSERT INTO Degrees (Code, Name, Type)
VALUES
    ('A', 'Math', 'PG'),
    ('B', 'AppMath', 'PG'),
    ('C', 'ML', 'PG'),
    ('D', 'CS', 'PG'),
    ('E', 'AI', 'PG'),
    ('F', 'Phil', 'UG'),
    ('G', 'PE', 'UG'),
    ('H', 'PTE', 'PG');

INSERT INTO Programmes (Degree, Course)
VALUES
  ('A','MATH01'),
  ('A','MATH02'),
  ('B','MATH01'),
  ('B','MATH02'),
  ('B','MATH03'),
  ('C','MATH01'),
  ('C','MATH02'),
  ('C','INF01'),
  ('D','INF01'),
  ('D','INF02'),
  ('D','INF03'),
  ('D','INF04'),
  ('E','INF01'),
  ('E','INF02'),
  ('E','INF03'),
  ('E','INF04'),
  ('E','INF05'),
  ('F','MATH01'),
  ('F','MATH02');
