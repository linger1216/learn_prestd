SELECT
	u.*,
	s.NAME AS school_name 
FROM
	PUBLIC.USER u
	LEFT JOIN school s ON u.school_id = s.ID 
WHERE
	s.NAME = '{{.school}}' 
	AND u.age > '{{.age}}'