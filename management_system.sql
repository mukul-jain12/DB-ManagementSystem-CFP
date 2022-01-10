use management_system;
CREATE DATABASE management_system;

CREATE TABLE hired_candidate(
	id INT NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	middle_name VARCHAR(50) DEFAULT NULL,
	last_name VARCHAR(50) NOT NULL,
	email_id VARCHAR(70) NOT NULL,
	mobile_number BIGINT NOT NULL,
	hired_city VARCHAR(30) NOT NULL,
	degree VARCHAR(70) NOT NULL,
	hired_date DATETIME NOT NULL,
	permanent_pincode INT DEFAULT NULL,
	hired_lab VARCHAR(50) DEFAULT NULL,
	attitude VARCHAR(20) DEFAULT NULL,
	communication_remark VARCHAR(20) DEFAULT NULL,
	knowledge_remark VARCHAR(20) DEFAULT NULL,
	aggregate_remark VARCHAR(20) DEFAULT NULL,
	status VARCHAR(20) DEFAULT NULL,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
	PRIMARY KEY(id)
);


CREATE TABLE fellowship_candidate(
	id INT NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	middle_name VARCHAR(50) DEFAULT NULL,
	last_name VARCHAR(50) NOT NULL,
	email_id VARCHAR(70) NOT NULL,
	hired_city VARCHAR(30) NOT NULL,
	degree VARCHAR(70) NOT NULL,
	hired_date DATETIME NOT NULL,
	permanent_pincode INT DEFAULT NULL,
	hired_lab VARCHAR(50) DEFAULT NULL,
	attitude VARCHAR(20) DEFAULT NULL,
	communication_remark VARCHAR(20) DEFAULT NULL,
	knowledge_remark VARCHAR(20) DEFAULT NULL,
	aggregate_remark VARCHAR(20) DEFAULT NULL,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
	birth_date DATE NOT NULL,
	is_birth_date_verified INT DEFAULT 0,
	parent_name VARCHAR(70) DEFAULT NULL,
	parent_occupation VARCHAR(100) NOT NULL,
	parent_mobile_number BIGINT NOT NULL,
	parent_annual_salary DOUBLE DEFAULT NULL,
	local_address VARCHAR(350) NOT NULL,
	permanent_address VARCHAR(350) NOT NULL,
	photo_path VARCHAR(600) DEFAULT NULL,
	joining_date DATE DEFAULT NULL,
	candidate_status VARCHAR(20) NOT NULL,
	personal_information INT DEFAULT 0,
	bank_information INT DEFAULT 0,
	educational_information INT DEFAULT 0,
	document_status VARCHAR(20) DEFAULT NULL,
	remark VARCHAR(200) DEFAULT NULL,
	PRIMARY KEY(id)
);


CREATE TABLE candidate_personal_details_check(
	id INT NOT NULL,
	candidate_id INT NOT NULL,
	field_name INT NOT NULL,
	is_verified INT DEFAULT NULL,
	lastupd_stamp DATETIME DEFAULT NULL,
	lastupd_user INT DEFAULT NULL,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
    KEY `FK_candidate_personal_details_id`(`candidate_id`),
	CONSTRAINT `FK_candidate_personal_details_id` FOREIGN KEY(`candidate_id`) REFERENCES `fellowship_candidate`(`id`),
	PRIMARY KEY(id)
);


CREATE TABLE candidate_bank_details(
	id INT NOT NULL,
	candidate_id INT NOT NULL,
	name VARCHAR(100) NOT NULL,
	account_number INT NOT NULL,
	is_account_verified INT DEFAULT 0,
	ifsc_code VARCHAR(15) NOT NULL,
	is_ifsc_code_verified INT DEFAULT 0,
	pan_number VARCHAR(15) DEFAULT NULL,
	is_pan_number_verified INT DEFAULT 0,
	addhar_number INT NOT NULL,
	is_addhar_number_verified INT DEFAULT 0,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
	KEY `FK_candidate_bank_details_id`(`candidate_id`),
	CONSTRAINT `FK_candidate_bank_details_id` FOREIGN KEY(`candidate_id`) REFERENCES `fellowship_candidate`(`id`),
	PRIMARY KEY(id)
);


CREATE TABLE candidate_qualification(
	id INT NOT NULL,
	candidate_id INT NOT NULL,
	diploma INT DEFAULT 0,
	degree_name VARCHAR(10) NOT NULL,
	is_degree_name_verified INT DEFAULT 0,
	employee_decipline VARCHAR(100) NOT NULL,
	is_employee_decipline_verified INT DEFAULT 0,
	passing_year INT NOT NULL,
	is_passing_year_verified INT DEFAULT 0,
	aggr_per DOUBLE DEFAULT NULL,
	final_year_per DOUBLE DEFAULT NULL,
	is_final_year_per_verified INT DEFAULT 0,
	training_institute VARCHAR(20) NOT NULL,
	is_training_institute_verified INT DEFAULT 0,
	training_duration_month INT DEFAULT NULL,
	is_training_duration_month_verified INT DEFAULT 0,
	other_training VARCHAR(300) DEFAULT NULL,
	is_other_training_verified INT DEFAULT 0,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
	KEY `FK_candidate_qualification_id` (`candidate_id`),
    CONSTRAINT `FK_candidate_qual_candidate_id` FOREIGN KEY (`candidate_id`) REFERENCES `fellowship_candidate` (`id`),
	PRIMARY KEY (id)
) ;


CREATE TABLE candidate_documents(
	id INT NOT NULL,
	candidate_id INT NOT NULL,
	doc_type VARCHAR(20) DEFAULT NULL,
	doc_path VARCHAR(600) DEFAULT NULL,
	status INT DEFAULT 1,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
	KEY `FK_candidate_documents_id` (`candidate_id`), 
    CONSTRAINT `FK_candidate_documents_id` FOREIGN KEY (`candidate_id`) REFERENCES `fellowship_candidate` (`id`),
	PRIMARY KEY (id)
) ;


CREATE TABLE user_details (
	id INT NOT NULL,
	email VARCHAR(70) NOT NULL UNIQUE,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	password VARCHAR(15) NOT NULL,
	contact_number BIGINT NOT NULL,
	verified INT DEFAULT 0,
	PRIMARY KEY (id)
) ;


CREATE TABLE user_roles (
	user_id INT NOT NULL ,
	role_name VARCHAR(100)
) ;


CREATE TABLE company(
	id INT NOT NULL,
	name VARCHAR(300) NOT NULL,
	address VARCHAR(150) DEFAULT NULL,
	location VARCHAR(50) DEFAULT NULL,
	status INT DEFAULT 1,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
	PRIMARY KEY (id)
) ;


CREATE TABLE tech_stack (
	id INT NOT NULL,
	tech_name VARCHAR(50) NOT NULL,
	image_path VARCHAR(500) DEFAULT NULL,
	framework TEXT DEFAULT NULL,
	cur_status CHAR(1) DEFAULT NULL,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
    PRIMARY KEY (id)
) ;


CREATE TABLE tech_type (
	id INT NOT NULL,
	type_name VARCHAR(70) NOT NULL,
	cur_status CHAR(1) DEFAULT NULL,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
	PRIMARY KEY(id)
) ;


CREATE TABLE maker_program(
	id INT NOT NULL,
	program_name INT NOT NULL,
	program_type VARCHAR(10) DEFAULT NULL,
	program_link VARCHAR(200) DEFAULT NULL,
	tech_stack_id INT DEFAULT NULL,
	tech_type_id INT NOT NULL,
	is_program_approved INT DEFAULT 0,
	description VARCHAR(500) DEFAULT NULL,
	status INT DEFAULT 1,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
	KEY `FK_maker_program_stack_id` (`tech_stack_id`),
	CONSTRAINT `FK_maker_program_stack_id` FOREIGN KEY (`tech_stack_id`) REFERENCES `tech_stack` (`id`),
	KEY `FK_maker_program_type_id` (`tech_type_id`),
	CONSTRAINT `FK_maker_program_type_id` FOREIGN KEY (`tech_type_id`) REFERENCES `tech_type` (`id`),
	PRIMARY KEY (id)
);


CREATE TABLE app_parameters(
	id INT NOT NULL,
	key_type VARCHAR(20) NOT NULL,
	key_value VARCHAR(20) NOT NULL,
	key_text VARCHAR(80) DEFAULT NULL,
	cur_status CHAR(1) DEFAULT NULL,
	lastupd_user INT DEFAULT NULL,
	lastupd_stamp DATETIME DEFAULT NULL,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
	seq_num INT DEFAULT NULL,
	PRIMARY KEY(key_type,  key_value)
) ;


CREATE TABLE lab(
	id INT NOT NULL,
	name VARCHAR(80) DEFAULT NULL,
	location VARCHAR(60) DEFAULT NULL,
	address VARCHAR(300) DEFAULT NULL,
	status INT DEFAULT 1,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
	PRIMARY KEY (id)
) ;


CREATE TABLE lab_threshold(
	id INT NOT NULL,
	lab_id INT NOT NULL,
	lab_capacity VARCHAR(50) DEFAULT NULL,
	lead_threshold INT DEFAULT NULL,
	ideation_engg_threshold INT DEFAULT NULL,
	buddy_engg_threshold INT DEFAULT NULL,
	status INT DEFAULT 1,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
	KEY `FK_lab_id` (`lab_id`),
	CONSTRAINT `FK_lab_id` FOREIGN KEY (`lab_id`) REFERENCES `lab` (`id`),
	PRIMARY KEY (id)
);


CREATE TABLE candidates_education_details_check (
	id INT NOT NULL,
	candidate_id  INT NOT NULL,
	field_name INT NOT NULL,
	is_verified INT DEFAULT NULL,
	lastupd_stamp DATETIME DEFAULT NULL,
	lastupd_user INT DEFAULT NULL,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
    KEY `FK_candidates_education_id` (`candidate_id`),
	CONSTRAINT `FK_candidates_education_id` FOREIGN KEY (`candidate_id`) REFERENCES `fellowship_candidate` (`id`),
	PRIMARY KEY (id)
);


CREATE TABLE mentor(
	id INT NOT NULL,
	name VARCHAR(50) DEFAULT NULL,
	mentor_type VARCHAR(20) DEFAULT NULL,
	lab_id INT NOT NULL,
	status INT DEFAULT 1,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
	KEY `FK_mentor_lab_id` (`lab_id`),
	CONSTRAINT `FK_mentor_lab_id` FOREIGN KEY (`lab_id`) REFERENCES `lab` (`id`),
    PRIMARY KEY (id)
) ;


CREATE TABLE mentor_ideation_map(
	id INT NOT NULL,
	mentor_id INT NOT NULL,
	status INT DEFAULT 1,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
	KEY `FK_mentor_ideation_map_id` (`mentor_id`),
	CONSTRAINT `FK_mentor_ideation_map_id` FOREIGN KEY (`mentor_id`) REFERENCES `mentor` (`id`),
	PRIMARY KEY (id)
) ;


CREATE TABLE mentor_tech_stack(
	id INT NOT NULL,
	mentor_id INT NOT NULL,
	tech_stack_id INT NOT NULL,
	status INT DEFAULT 1,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
	KEY `FK_mentor_mentor_id` (`mentor_id`),
	CONSTRAINT `FK_mentor_mentor_id` FOREIGN KEY (`mentor_id`) REFERENCES `mentor` (`id`),
	KEY `FK_mentor_stack_id` (`tech_stack_id`),
	CONSTRAINT `FK_mentor_stack_id` FOREIGN KEY (`tech_stack_id`) REFERENCES `tech_stack` (`id`),
	PRIMARY KEY (id)
);


CREATE TABLE candidate_techstack_assignment(
	id int(11) NOT NULL,
	requirement_id int(11) NOT NULL,
	candidate_id int(11) NOT NULL,
	assign_date datetime DEFAULT NULL,
	status varchar(20) DEFAULT NULL,
	creator_stamp datetime DEFAULT NULL,
	creator_user int(11) DEFAULT NULL,
	KEY `FK_candidate_techstack_assignment_requirement_id` (`requirement_id`),
	CONSTRAINT `FK_candidate_techstack_assignment_requirement_id` FOREIGN KEY (`requirement_id`) REFERENCES `company_requirement` (`id`),
	KEY `FK_candidate_candidate_id` (`candidate_id`),
	CONSTRAINT `FK_candidate_candidate_id` FOREIGN KEY (`candidate_id`) REFERENCES `fellowship_candidate` (`id`),
	PRIMARY KEY (id)
);


CREATE TABLE company_requirement(
	id INT NOT NULL,
	company_id INT NOT NULL,
	requested_month VARCHAR(20) NOT NULL,
	city VARCHAR(30) DEFAULT NULL,
	is_doc_verification INT DEFAULT 1,
	requirement_doc_path VARCHAR(600) DEFAULT NULL,
	no_of_engg INT NOT NULL,
	tech_stack_id INT NOT NULL,
	tech_type_id INT NOT NULL,
	maker_program_id INT NOT NULL,
	lead_id INT NOT NULL,
	ideation_engg_id INT DEFAULT NULL,
	buddy_engg_id INT DEFAULT NULL,
	special_remark TEXT DEFAULT NULL,
	status INT DEFAULT 1,
	creator_stamp DATETIME DEFAULT NULL,
	creator_user INT DEFAULT NULL,
    KEY `FK_stack_id` (`tech_stack_id`),
	CONSTRAINT `FK_stack_id` FOREIGN KEY (`tech_stack_id`) REFERENCES `tech_stack` (`id`),
    KEY `FK_type_id` (`tech_type_id`),
	CONSTRAINT `FK_type_id` FOREIGN KEY (`tech_type_id`) REFERENCES `tech_type` (`id`),
    KEY `FK_maker_program_id` (`maker_program_id`),
	CONSTRAINT `FK_maker_program_id` FOREIGN KEY (`maker_program_id`) REFERENCES `maker_program` (`id`),
	KEY `FK_company_id` (`company_id`),
	CONSTRAINT `FK_company_id` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
	PRIMARY KEY(id)
);