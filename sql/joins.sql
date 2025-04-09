-- INNER JOIN

SELECT contacts.first_name, contacts.last_name, professions.name FROM contacts 
INNER JOIN professions ON contacts.profession_id = professions.id;

--  first_name  | last_name |   name
-- -------------+-----------+----------
--  Muhammadjon | Ibrohimov | CEO
--  Muhammadjon | Ibrohimov | CEO
--  Tim         | Cook      | cook
--  Kiki        | Coco      | engineer
--  Harvey      | Specter   | lawyer
--  Joe         | Dought    | engineer

SELECT c.first_name, c.last_name, p.name FROM contacts AS c LEFT OUTER JOIN professions AS p ON c.profession_id = p.id;

--  first_name  | last_name |   name
-- -------------+-----------+----------
--  Muhammadjon | Ibrohimov | CEO
--  Muhammadjon | Ibrohimov | CEO
--  Tim         | Cook      | cook
--  Kiki        | Coco      | engineer
--  Harvey      | Specter   | lawyer
--  Joe         | Dought    | engineer
--  DIM         | Shook     |

SELECT c.first_name, c.last_name, p.name FROM professions AS p RIGHT OUTER JOIN contacts AS c ON c.profession_id = p.id;


--  first_name  | last_name |   name
-- -------------+-----------+----------
--  Muhammadjon | Ibrohimov | CEO
--  Muhammadjon | Ibrohimov | CEO
--  Tim         | Cook      | cook
--  Kiki        | Coco      | engineer
--  Harvey      | Specter   | lawyer
--  Joe         | Dought    | engineer
--  DIM         | Shook     |



