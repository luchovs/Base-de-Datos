SELECT * FROM INHABITANT
SELECT * FROM INHABITANT WHERE STATE = "friendly"
SELECT * FROM INHABITANT WHERE JOB = "weaponsmith"
SELECT * FROM INHABITANT WHERE STATE = "friendly" and JOB = "weaponsmith"
SELECT * FROM INHABITANT WHERE STATE = "friendly" and JOB LIKE "%smith"
SELECT PERSONID FROM INHABITANT WHERE NAME = "Stranger"
SELECT GOLD FROM INHABITANT WHERE NAME = "Stranger"
SELECT * FROM ITEM WHERE OWNER IS NULL
UPDATE ITEM SET OWNER = 20 WHERE OWNER IS NULL
SELECT * FROM ITEM WHERE OWNER = 20
SELECT * FROM INHABITANT WHERE STATE = "friendly" AND JOB = "dealer" OR JOB = "merchant"
UPDATE ITEM SET OWNER = 15 WHERE ITEM = "ring" OR ITEM = "teapot"
UPDATE INHABITANT SET NAME = "Nick Singh" WHERE PERSONID = 20
SELECT * FROM INHABITANT WHERE JOB = "baker" ORDER BY GOLD DESC
SELECT * FROM INHABITANT WHERE JOB = "pilot"
SELECT INHABITANT.NAME FROM VILLAGE, INHABITANT WHERE VILLAGE.CHIEF = INHABITANT.PERSONID and VILLAGE.NAME = "Onionville"
