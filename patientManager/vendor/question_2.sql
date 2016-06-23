-- question 1 --
-- returns:
-- id  mrn  first_name  middle_name  last_name  weight  height
-- 1  THC123  James  John  Smith  85  180
-- (depending on database collation setting with case insensitive/sensitive the following might/might not be selected)
-- 2  THC124  Sandy  Aria  Mits  55  145
--
-- query:
SELECT *
FROM patient
WHERE last_name LIKE '%mit%'


-- question 2 --
-- returns:
-- id  mrn  first_name  middle_name  last_name  weight  height
-- 3  THC125  Bently  Frank  Lee  90  178
--
-- query:
SELECT DISTINCT *
FROM patient AS p
INNER JOIN encounters AS e ON p.id = e.patient_id
WHERE e.discharged_at IS NOT NULL

-- question 3 --
-- returns:
-- id  mrn  first_name  middle_name  last_name  weight  height
-- 2  THC124  Sandy  Aria  Mits  55  145
-- 3  THC125  Bently  Frank  Lee  90  178
--
-- comments: there could be time zone issues
-- query:
SELECT DISTINCT *
FROM patient AS p
INNER JOIN encounters AS e ON p.id = e.patient_id
WHERE e.admitted_at BETWEEN '2014/07/05'
		AND '2014/08/19'
