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

INSERT INTO candidate_documents VALUES 
	(1, 1, 'type of doc 1', 'path of doc 1', 1, NULL, 1),
	(2, 2, 'type of doc 2', 'path of doc 2', 1, NULL, 1),
	(3, 3, 'type of doc 3', 'path of doc 3', 1, NULL, 1),
	(4, 4, 'type of doc 4', 'path of doc 4', 1, NULL, 1),
	(5, 5, 'type of doc 5', 'path of doc 5', 1, NULL, 1)
;

INSERT INTO company VALUES 
	(1, 'EasyRewardz', 'Rudra Complex, Near Railway Station','Gurgaon', 1, NULL, 1),
	(2, 'KPMG', 'City Center', 'Banglore', 1, NULL, 1),
	(3, 'PWC', 'City Center', 'Banglore', 1, NULL, 1),
	(4, 'Accenture', 'City Center', 'Banglore', 1, NULL, 1),
	(5, 'LTI', 'Navi mumbai', 'Mumbai', 1, NULL, 1)
;