use management_system;

/*
	1. Select mentor details and its tech name using inner join.
*/
SELECT mentor.*, ts.tech_name FROM mentor
INNER JOIN
	mentor_tech_stack AS mts ON mentor.id = mts.mentor_id
INNER JOIN
	tech_stack AS ts ON mts.tech_stack_id = ts.id;

/*
	2. select first name, last name ,password and contact number by doing outer join on candidate_fellowship and user_details table
*/
SELECT fc.first_name, fc.last_name, ud.password, ud.contact_number FROM fellowship_candidate AS fc
LEFT JOIN user_details AS ud ON fc.first_name = ud.first_name;

/*
	3. Do one on self join.
*/
SELECT fc1.first_name, fc1.degree FROM fellowship_candidate fc1
INNER JOIN fellowship_candidate fc2 
WHERE fc1.degree=fc2.degree and fc2.hired_city = 'Mumbai';
