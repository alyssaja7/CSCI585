1.The organization pays all instructors according to their teaching hours and supervising hours.
  Meanwhile, the organization benefits from students, one is the flag fee(FLAG_FEE) when they start the course, the other is the damage fee(DAMAGE_FEE) when the courses end.

2.Assume that one course have several different class session, and each class session has class_section identifier. 
  According to the description, "Instructors (faculty) would teach a variety of coding classes throughout the day, and also oversee projects". Therefore, Assume one instructor can teach multiple class session, and one class session can only be taught by one instructor.Meanwhile, one instructor can oversee multiple projects, and one project can only be supervised by one instructor.

3.One textbook can be used for multiple class session.
  One specific class session can only use one textbook.

  One class session is only taught by one specific coding language.
  Each project should be centered around one specific micro-controller.

4.There is a small library that students can check out up to 4 books, and students can also borrow no books. It's optional.

5.Assume each student enroll at least one class session and at least one project.

6.Projects parts are ordered from multiple online suppliers. 
  One project is enrolled by many students. So we need more than one project parts set for this project. One project can be enrolled by no students. At this situation, we buy one project parts set for this specific project.

  Assume every online supplier is able to provide all of the parts for one specific project.  But we can order project parts set from different online supplier, even though the same project parts set.

7.The description makes 4 students who enrolled the same project to be a group.
  However, not every project will be enrolled by students. If one project has no students to enroll, then it will not have table and plastic box. We use GROUP_SIZE to determine if the group has 4 enroll students. If there is one remaining group which the total number of students is smaller than 4, we also treat them as a group and give them a table and plastic box.

8.As for the Salary for instructors, I use CLASS_STARTTIME, CALSS_ENDTIME these two attributes in Class entity to calculate the hours for teaching class, use PROJECT_STARTTIME, PROJECT_ENDTIME to calculate the hours for overseeing projects. At the same time, they have the PROJECT_PAYMENTRATE and CLASS_PAYMENTRATE these two attributes separately. 


9. As for the rate system, I put three attributes INSTRUCTOR_RATE, PROJECT_RATE, CLASS_RATE at the student entity. Each students(by STUD_ID) have classes to take and projects to do. They have different instructors. So they give stars to their classes, projects and instructors.





