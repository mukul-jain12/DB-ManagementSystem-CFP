use management_system;

INSERT INTO hired_candidate VALUES 
	(1, 'Mukul', NULL, 'Jain', 'mukul.jain@gmail.com', 9854215621, 'Gurgaon', 'B.Tech', '2021-12-13 00:00:00', 3121005, 'EasyRewardz', 'Good', 'Good', 'Good', 'Good', 'Good', NULL, 1),
	(2, 'Dibyesh', NULL, 'Mishra', 'dibyesh.mishra@gmail.com', 9215684562, 'Gurgaon', 'M.Sc', '2021-12-13 00:00:00', 3168005, 'EasyRewardz', 'Good', 'Good', 'Good', 'Good', 'Good', NULL, 1),
	(3, 'Shivam', NULL, 'Mishra', 'shivam.mishra@gmail.com', 9232121321, 'Gurgaon', 'B.Tech', '2021-12-13 00:00:00', 3154005, 'KPMG', 'Good', 'Good', 'Good', 'Good', 'Good', NULL, 1),
	(4, 'Shubham', NULL, 'Mule', 'shubha.mule@gmail.com', 9546235415, 'Gurgaon', 'B.Tech', '2021-12-13 00:00:00', 3251005, 'EasyRewardz', 'Good', 'Good', 'Good', 'Good', 'Good', NULL, 1),
	(5, 'Shreesh', NULL, 'Pandey', 'shreesh.pandey@gmail.com', 9845632114, 'Mumbai', 'B.Tech', '2021-12-13 00:00:00', 3211005, 'EasyRewardz', 'Good', 'Good', 'Good', 'Good', 'Good', NULL, 1)
;

INSERT INTO fellowship_candidate VALUES 
	(1, 'Mukul', NULL, 'Jain', 'mukul.jain@gmail.com', 'Gurgaon', 'B.Tech', '2021-12-13 00:00:00', 3121005, 'EasyRewardz', 'Good', 'Good', 'Good', 'Good', NULL, 1, '1998-02-12', 1, 'Sanjeev Kumar Jain', 'Teacher', 9151846523, 30000000.00, 'Entila Tower, Mumbai', 'Entila Tower, Mumbai', 'path_photo', '2022-02-06', 'Excellent', 1, 1, 1, 'Correct', 'Excellent'),
	(2, 'Dibyesh', NULL, 'Mishra', 'dibyesh.mishra@gmail.com', 'Gurgaon', 'M.Sc', '2021-12-13 00:00:00', 3168005, 'EasyRewardz', 'Good', 'Good', 'Good', 'Good', NULL, 1, '1997-07-20', 1, 'Arun Kumar Mishra', 'Teacher', 9151545523, 50000000.00, 'Near Taj Hotel, Mumbai', 'Near Taj Hotel, Mumbai', 'path_photo', '2022-02-06', 'Excellent', 1, 1, 1, 'Correct', 'Excellent'),
	(3, 'Shivam', NULL, 'Mishra', 'shivam.mishra@gmail.com', 'Gurgaon', 'B.Tech', '2021-12-13 00:00:00', 3154005, 'KPMG', 'Good', 'Good', 'Good', 'Good', NULL, 1, '1998-09-28', 1, 'Vijay Narayan', 'Manager', 9155896523, 90000000.00, 'Oberoi, Mumbai', 'Oberoi, Mumbai', 'path_photo', '2022-02-06', 'Excellent', 1, 1, 1, 'Correct', 'Excellent'),
	(4, 'Shubham', NULL, 'Mule', 'shubha.mule@gmail.com', 'Gurgaon', 'B.Tech', '2021-12-13 00:00:00', 3251005, 'EasyRewardz', 'Good', 'Good', 'Good', 'Good', NULL, 1, '1998-01-01', 1, NULL, 'Engineer', 9151846523, 70000000.00, 'Pune', 'Pune', 'path_photo', '2022-02-06', 'Excellent', 1, 1, 1, 'Correct', 'Excellent'),
	(5, 'Shreesh', NULL, 'Pandey', 'shreesh.pandey@gmail.com', 'Mumbai', 'B.Tech', '2021-12-13 00:00:00', 3211005, 'EasyRewardz', 'Good', 'Good', 'Good', 'Good', NULL, 1, '1998-02-12', 1, NULL, 'Engineer', 9951846523, 50000000.00, 'Lucknow', 'Lucknow', 'path_photo', '2022-02-06', 'Excellent', 1, 1, 1, 'Correct', 'Excellent')
;

INSERT INTO candidate_personal_details_check VALUES 
	(1, 1, 1, 1, '2022-01-02 05:02:04', 1, NULL, 1),
	(2, 2, 3, 1, '2021-01-03 02:24:04', 1, NULL, 1),
    (3, 3, 1, 1, '2022-01-04 05:36:04', 1, NULL, 1),
    (4, 4, 3, 1, '2021-01-02 03:09:04', 1, NULL, 1),
    (5, 5, 1, 1, '2022-01-03 07:10:04', 1, NULL, 1)
;

INSERT INTO candidate_bank_details VALUES
	(1,1,'Mukul', 87632151, 1 ,'IFSC321521', 1, 'SQDERT444', 1, 5651589, 1, NULL, 1),
	(2,2,'Dibyesh', 21945462, 1 ,'IFSC324532', 1, 'SQDEECD', 1, 2485632, 1, NULL, 1),
	(3,3,'Shivam', 62154782, 1 ,'IFSC782465', 1, 'SQDE5SD2CD', 1, 7541236, 1, NULL, 1),
	(4,4,'Shubham', 25416987, 1 ,'IFSC664822', 1, 'SQDEESD2CD', 1, 6541258, 1, NULL, 1),
	(5,5,'Shreesh', 31554452, 1 , 'IFSC321655', 1, 'SCHJD8765W', 1,  8298452, 1, NULL, 1)
;

INSERT INTO candidate_qualification VALUES
	(1, 1, 0, 'B.Tech', 1, 'Good', 1,2020, 1, 90.65, 96.30, 1, 'Bridgelabz', 1, 6, 1, 'Aptech', 1, NULL, 1),
	(2, 2, 0, 'M.Sc', 1, 'Good', 1,2021, 1, 91.65, 94.95, 1, 'Bridgelabz', 1, 6, 1, 'JSpider', 1, NULL, 1),
	(3, 3, 0, 'B.Tech', 1, 'Good', 1,2021, 1, 92.65, 95.65, 1, 'Bridgelabz', 1, 6, 1, 'QSpider', 1, NULL, 1),
	(4, 4, 0, 'B.Tech', 1, 'Good', 1,2020, 1, 93.65, 93.25, 1, 'Bridgelabz', 1, 6, 1, 'Newton School', 1, NULL, 1),
	(5, 5, 0, 'B.Tech', 1, 'Good', 1,2021, 1, 94.65, 92.99, 1, 'Bridgelabz', 1, 6, 1, 'Masai', 1, NULL, 1)
;

INSERT INTO candidate_documents VALUES 
	(1, 1, 'type of doc 1', 'path of doc 1', 1, NULL, 1),
	(2, 2, 'type of doc 2', 'path of doc 2', 1, NULL, 1),
	(3, 3, 'type of doc 3', 'path of doc 3', 1, NULL, 1),
	(4, 4, 'type of doc 4', 'path of doc 4', 1, NULL, 1),
	(5, 5, 'type of doc 5', 'path of doc 5', 1, NULL, 1)
;

INSERT INTO candidates_education_details_check VALUES
	(1, 1, 1, 1, NULL, 1, NULL, 1),
	(2, 2, 1, 1, NULL, 1, NULL, 1),
	(3, 3, 1, 1, NULL, 1, NULL, 1),
	(4, 4, 3, 1, NULL, 1, NULL, 1),
	(5, 5, 1, 1, NULL, 1, NULL, 1)
;

insert into user_details values
	(1, 'mukul.jain@gmail.com', 'Mukul', 'Jain', 'mukul@123', 9854215621, 1),
	(2, 'dibyesh.mishra@gmail.com', 'Dibyesh', 'Mishra', 'dibyesh@123', 9215684562, 1),
	(3, 'shivam.mishra@gmail.com', 'Shivam', 'Mishra', 'shivam@123', 9232121321, 1),
	(4, 'shubham.mule@gmail.com', 'Shubham', 'Mule', 'shubham@123', 9546235415, 1),
	(5, 'shreesh.pandey@gmail.com', 'Shreesh', 'Pandey', 'shreesh@123', 9845632114, 1)
;

insert into User_Roles values
	(1, 'Backend'),
	(2, 'Fullstack'),
	(3, 'Cloud Eng.'),
	(4, 'Frontend'),
	(5, 'Tester')
;

INSERT INTO company VALUES 
	(1, 'EasyRewardz', 'Rudra Complex, Near Railway Station','Gurgaon', 1, NULL, 1),
	(2, 'KPMG', 'City Center', 'Banglore', 1, NULL, 1),
	(3, 'PWC', 'City Center', 'Banglore', 1, NULL, 1),
	(4, 'Accenture', 'City Center', 'Banglore', 1, NULL, 1),
	(5, 'LTI', 'Navi mumbai', 'Mumbai', 1, NULL, 1)
;

insert  into tech_stack values
	(1, 'Java', 'image1', 'Eclipse', 'T', null, 1),
	(2, 'Python', 'image2', 'PyCharm', 'T', null, 1),
	(3, 'C#', 'image1', '.NET', 'T', null, 1),
	(4, 'Javascript', 'image4', 'Node.js', 'T', null, 1),
	(5, 'Shell Script', 'image3', 'Git Terminal', 'T', null, 1)
;

INSERT INTO tech_type VALUES
	(1, 'java' ,'y' , NULL, 1),
	(2, '.net', 'y', NULL, 1),
	(3, 'python', 'y', NULL, 1),
	(4, 'shell', 'y', NULL, 1),
	(5, 'Machine Learning', 'y', NULL, 1)
;

INSERT INTO maker_program VALUES
	(1, 'BootCamp', 'training', 'http:/link1', 4, 5, 1, 'nice', 1, null, 2),
	(2, 'Regular Fellowship', 'training','http:/link2', 1, 1, 1, 'good', 1, null, 2),
	(3, 'Custom Fellowship', 'training','http:/link3', 2, 3, 1, 'nice', 1, null, 2),
	(4, 'BRP', 'training','http:/link4', 3, 2, 1, 'nice', 1, null, 2)
;

INSERT INTO app_parameters VALUES
	(1, 'Type1', 'fine', 'Execellent', 'Y', 1, null, null, 1, 1),
	(2, 'Type2', 'good', 'Execellent', 'Y', 1, null, null, 1, 1),
	(3, 'Type3', 'nice', 'Execellent', 'Y', 1, null, null, 1, 1),
	(4, 'Type4', 'very good', 'Execellent', 'Y', 1, null, null, 1, 1)
;

INSERT INTO lab VALUES
	(1, 'Backend', 'Mumbai', 'Bandra', 2, null, 1),
	(2, 'Frontend', 'Mumbai', 'Navi Mumbai', 1, null, 1),
	(3, 'FullStack', 'Banglore', 'City Center', 1, null, 1),
	(4, 'Testing', 'Hyderabad', 'HighTech', 0, null, 1),
	(5, 'Cloud Eng.', 'Hyderabad', 'HighTech', 0, null ,1)
;

INSERT INTO lab_threshold VALUES
	(1, 2, 'lab_capacity1', 5, 3, 1, 1, null, 1),
	(2, 1, 'lab_capacity2', 5, 3, 1, 1, null, 1),
	(3, 1, 'lab_capacity3', 5, 2, 1, 1, null, 1),
	(4, 4, 'lab_capacity4', 5, 1, 1, 1, null, 1)
;

insert mentor values
	(1, 'Shankar Aribhavi', 'Mentor', 1, 1, null, 1),
	(2, 'Avatar', 'Buddy Mentor', 2, 1, null, 1),
	(3, 'Vinayak', 'Mentor', 1, 1, null, 1),
	(4, 'Sunil Patil', 'Lead Mentor', 3, 1, null, 1),
	(5, 'Gunjan Sharma', 'Lead Mentor', 3, 1, null, 1)
;

INSERT INTO mentor_ideation_map VALUES
	(1, 1, 1, null, 1),
	(2, 2, 1, null, 1),
	(3, 3, 1, null, 1),
	(4, 4, 1, null, 1),
	(5, 5, 1, null, 1)
;

INSERT INTO mentor_tech_stack VALUES
	(1, 1, 1, 1, null, 1),
	(2, 2, 4, 1, null, 1),
	(3, 3, 5, 1,null, 1),
	(4, 4, 3, 1, null, 1),
	(5, 5, 2, 1, null, 1)
;

INSERT INTO company_requirement VALUES
	(1, 1, 'Two', 'Gurgaon', 1, 'path of doc', 20, 2, 3, 3, 1, 1, 1, 'good', 1, null, 1),
	(2, 2, 'Three', 'Bangalore', 1, 'path of doc', 15, 3, 2, 3, 1, 1, 1, 'good', 1, null, 1),
	(3, 3, 'Five', 'Mumbai', 1, 'path of doc', 10, 1, 1, 2, 1, 1, 1, 'good', 1,null, 1),
	(4, 4, 'Eight', 'Mumbai' ,1, 'path of doc', 25, 1, 1, 2, 1, 1, 1, 'good', 1, null, 1),
	(5, 5, 'Four', 'Pune' ,1, 'path of doc', 30, 5, 4, 1, 1, 1, 1, 'good', 1, null, 1)
;

INSERT INTO candidate_techstack_assignment VALUES
	(1, 2, 1, '2022-02-12 00:00:00', 'true',null,1),
	(2, 1, 3, '2022-02-21 00:00:00', 'true',null,1),
	(3, 1, 2, '2022-02-15 00:00:00', 'true',null,1),
	(4, 2, 4, '2022-02-18 00:00:00', 'true',null,1),
	(5, 3, 5, '2022-02-08 00:00:00', 'true',null,1)
;