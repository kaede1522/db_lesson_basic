-- Q1

CREATE TABLE departments (
  department_id INT unsigned AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(20) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


-- Q2

ALTER TABLE people ADD department_id INT unsigned after email;


-- Q3

-- departments
INSERT INTO departments (name) VALUES ('営業'),('開発'),('経理'),('人事'),('情報システム');

-- people
INSERT INTO people (name, email, department_id, age, gender)
VALUES
('鈴木花子', 'hanako@gizumo.jp', 1, 23, 2),
('鈴木太郎', 'tarou@gizumo.jp', 1, 32, 1),
('鈴木花男', 'hanao@gizumo.jp', 1, 42, 1),
('鈴木薫', 'kaoru@gizumo.jp', 2, 26, 2),
('鈴木幸子', 'sachiko@gizumo.jp', 2, 37, 2),
('鈴木壮士', 'sousi@gizumo.jp', 2, 29, 1),
('鈴木幸男', 'sachio@gizumo.jp', 2, 48, 1),
('鈴木雅子', 'masako@gizumo.jp', 3, 39, 2),
('鈴木孝雄', 'takao@gizumo.jp', 4, 42, 1),
('鈴木公子', 'kimiko@gizumo.jp', 5, 37, 2);

-- reports
INSERT INTO reports (person_id, content)
VALUES
(7, '10件訪問に伺い契約いただいた'),
(8, '〇〇株式会社に訪問し、挨拶に伺った'),
(9, '法人契約を10件いただきました'),
(10, '開発業務が進みました'),
(11, 'エラーが出て再度提出'),
(12, '昨日のエラーが解決し、課題完了'),
(13, 'エラーを上司と確認しました'),
(14, '経理の仕事が終わりました'),
(15, '採用予定の5名採用決定'),
(16, 'エラーの件について課題解決済み');


-- Q4

UPDATE people SET department_id = 1 WHERE person_id = 1;

UPDATE people SET department_id = 1 WHERE person_id = 3;

UPDATE people SET department_id = 1 WHERE person_id = 4;

UPDATE people SET department_id = 1 WHERE person_id = 5;

UPDATE people set department_id = 1 WHERE person_id = 6;



-- Q5

SELECT name, age FROM people WHERE gender = 1 ORDER BY age DESC;


-- Q6

「people」テーブルで、「'name','email','age'」のカラムを指定して、「department_id」のレコードが「1」である人物をレコード作成順で表示する。