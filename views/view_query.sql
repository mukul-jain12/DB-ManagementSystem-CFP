/*
	1. Create view for selecting student name and its company name he is assigned to
*/
CREATE VIEW candidate_and_company AS
SELECT fc.first_name, company.name FROM fellowship_candidate AS fc
INNER JOIN candidate_techstack_assignment AS ctsa ON fc.id = ctsa.candidate_id
INNER JOIN company_requirement AS cr ON ctsa.requirement_id = cr.id
INNER JOIN company ON cr.company_id = company.id;

SELECT * FROM candidate_and_company;

/*
	2. List candidates personal info whose education check has been verified.
*/
CREATE VIEW candidate_details AS
SELECT fc.* FROM fellowship_candidate AS fc
INNER JOIN candidates_education_details_check AS cedc ON fc.id = cedc.candidate_id
WHERE cedc.is_verified = 1;

SELECT * FROM candidate_details;

/*
	3. Select all details from the maker plan
*/
CREATE VIEW maker_plan AS SELECT * FROM maker_program;

SELECT * FROM maker_plan;