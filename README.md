# My-Mind-2.0
Version 2 of my Final Year Project App Concept, My Mind simplifies allows staff to easily manage their appointments and give the efficient support that both the university and students need.

# FinalYearProject
# Project Proposal

Introduction and Background
“In recent years, health problems, particularly mental health of students is so interested. College is an important setting in which to evaluate and address mental health.”
(Nami et al., 2014)

Today’s society has recently begun speaking out on controversial and sensitive subjects become part of a regular conversation. This has started to include objects such as mental health and wellbeing including the diagnosis that many students who are at university having a mental health condition such as depression and anxiety disorders.

Many students starting at university are now facing the issue where they are unable to find support or unaware of any of the mental health support mechanisms available at their university.

Aim
The main aim of this project is to design and create a mobile application that allows students at Birmingham City University be able to see the mental health support available from both the university and the students within the university.

The app will also allow them to refer themselves to the Mental Health and Wellbeing student services team within the university and book and appointment with a mental health and wellbeing advisor.

Objectives
The mobile app needs to be able to follow the Apple iOS Human Interface Guidelines as I will be primarily developing the app on the iOS mobile platform. Apple’s software design guidelines state:

“Three primary themes differentiate iOS from other platforms:
•	Clarity. Throughout the system, text is legible at every size, icons are precise and lucid, adornments are subtle and appropriate, and a sharpened focus on functionality motivates the design…
•	Deference. Fluid motion and a crisp, beautiful interface help people understand and interact with content while never competing with it…
•	Depth. Distinct visual layers and realistic motion convey hierarchy, impart vitality, and facilitate understanding…”
(Apple Inc, 2016)

I will originally design the app so it will work on iPhones and iPods however in future I may include iPads into my designs and there is a possibility to expand the deployment of this application to work with Android devices.

The app must be able to work within the university’s own file and data entry systems including the Microsoft SharePoint platform. This is used by the Student Mental Health and Wellbeing services within the university to allow students to refer themselves to the department. The implementation of this is not very good as many students have to be referred to the actual form by a member of staff and to find this form on iCity, the university’s information portal for staff and students, can be incredibly difficult which could potentially put off students from filling the referral form.

Figure one shows the current menu for the iCity information portal. As you can see, the ability to view the mental health and wellbeing page is not there however after several minutes of clicking you will be able to access the page by clicking several hyperlinks on many pages. Personally, as I have accessed this page previously, I am able to access it within a matter of minutes with only four clicks however some new students who are not used to the layout of iCity may not be able to do so in a similar fashion.

Source: (Birmingham City University, 2015)

The app must also be able to allow members of staff to create, amend and cancel appointments for students. This can be done in an administrative section of the app which will be linked to the same database as the student section. There is also the possibility to include the Doodle Online Appointment Management system into this as Doddle allows people to suggest times and view the availability of a specific person.

The app must also include a new, updated version of the referral form. The current design is not user friendly and some students may encounter difficulty when viewing and filling in the form. The form also includes unnecessary items, for instance, Figure 2 displays the sidebar (shown in the red box) at the top of the page that students do not need to access. Figure 3 also shows a question within the form that includes information that is now no longer valid. The question (shown in the blue box) in Figure 3 asks the user which faculty they belong to and includes faculties that now no longer exist (shown in a green box) and have merged to form other faculties. The design of this form has even includes a warning not to use these answers as they are not valid.

Source: (Birmingham City University, no date)

Product
Figure 4 shows the three different sections of the app that users can interact with. The app will communicate with an online database to allow the input of data such as appointments and allow access to the forum, this has been shown with the database section holding three tables for the appropriate app areas.

The main referral section of the app will contain a user creation page where users will be required to create their own account for the service. This account implementation is for the forum and so that the student can create appointments with Mental Health and Wellbeing Advisors. Although there is a possibility for me to use the university’s single sign on service in future, I have decided that this is not a good idea for the current project as I would like to trial it on a select focus group and do not want to allow all students access to the app or the forum at this moment in time. There is the possibility in the future to implement the OpenAthens Single Sign-On service that most UK universities use. This would allow me to create a location specific, university specific experience for each user. Another reason for not requesting to the OpenAthens service is due to the time restriction within this project, there are several legal issues I would have to face and discuss with the service provider and this process would take longer than the allocated time I have for this project.

Rationale
Reasons for Project
Higher Education Institutions are seeing a common trend within first year students where around 6% of all first year entrants do not continue with their studies according to data from the Higher Education Statistics Agency. The Times Newspaper states

“Six per cent of first degree entrants aged under 21 who enrolled in 2013-14 did not continue their studies beyond their first year, according to data from the Higher Education Statistics Agency.”
(Havergal et al., 2016)

Many institutions have theorised that most non-continuation cases are cause by mental health issues such as anxiety and depression. To combat this ongoing issue, many universities have set-up counselling services for students suffering with mental health conditions. Although the number of cases is not known, many counselling services are reporting an increase in referrals as stated by Ann Macaskill:

“There are increasing concerns globally about the mental health of students. In the UK, the actual incidence of mental disturbance is unknown, although university counselling services report increased referrals.”
(Macaskill, 2013)

As these services are becoming available, I have noticed many issues with the referral system and knowledge of their existence within different university institutions. One common issue I have seen is that many students are aware how to get counselling support however the university’s website makes it rather difficult for the student to refer themselves to the support services available.

Project Effects
This project will allow the ease of use for support services to be accessed and will also create the availability where many students who do not want staff intervention, via counselling etc., to be able to gain support from other students experiencing similar issues. There is the potential for any products created within this project to be used in a live environment where staff and students would actively use the system.

The forum section of the app can also ease the strain that most support services are experiencing. As the general public are becoming more confident talking about mental health issues, many people are coming forward with various mental health issues.

Comparison of other possible solutions
A possible solution for this issue is a web based application that utilises HTML, PHP and SQL Databases. I have decided that this is not an appropriate solution as the system needs to be available to those who are not near a computer and using their mobile devices to access the internet. This can create an issue where data usage is limited therefore a solution that uses little to no mobile data is optimum for this project.

Methodology
Research Methods
To obtain the relevant information suitable for my project, I will be collaborating with the university’s Mental Health and Wellbeing team. As part of my research, I will interview members of staff from the wellbeing team and many students who suffer from mental health illnesses.

Although my project will work with students who are interested in the mental health and wellbeing of themselves and others, I will ensure that all data collected from these students is to be anonymised to prevent any confidential and sensitive information from being publicised.

I will also be conducting surveys in the form of a questionnaire. This will allow me to see what needs are required from the final product and what features students and staff would like from the system.

Throughout my research, I will only include active staff and students from Birmingham City University. This is due to my final product only being suitable for use within the university and will incorporate the use of staff and student identification numbers. I will ensure the eligibility of this group by requesting them to enter their university identification number when testing or using the app.

Development Methodology
During development, I will incorporate the waterfall lifecycle software development technique. This is mainly due to many parts of the lifecycle will be suitable as the design of the application must be completed before the final creation of the app can be completed.

Evaluation Methodology
I will evaluate my whole system by using my original research focus group of active staff and students at Birmingham City University. I will ask each participant to use the app for around 5 minutes then answer a series of questions in the form of a questionnaire or interview.

Resources
General Computing Equipment
As this project will primarily develop on Apple’s iOS platform, the general computing equipment required for use will be an Apple Macintosh computer and an iOS Smartphone. I will be using my personal smartphone for this project for the testing of the application and will be allowing participants who are evaluating the app to use my device.

University Based Resources
My project will be designing and creating an application designed for Birmingham City University therefore I will be working with the university’s student services to obtain resources such as internal procedures, access to the current system and information about any previous systems the department has used.

I will also be requiring student participants for my project to assist me in my research. These participants will influence the design of this application and are able to suggest additional features or tell me that a specific feature of the app is not required. I will obtain participants from the university’s Mental Health Awareness society.

Schedule
Figure 5 shows a Task Sheet for the whole of my project. I have allocated time for each section and broken each assignment down into different areas. It also includes which tasks need to be completed before I can begin any given task.

References
Apple Inc (2016) IOS human interface guidelines. Available at: https://developer.apple.com/ios/human-interface-guidelines/ [Accessed 3 October 2016].
Birmingham City University (2015) Mental Health and Wellbeing. Available at: ​ https://icity.bcu.ac.uk/student-services/Health-and-Wellbeing/Mental-Health-and-Wellbeing [Accessed 27 October 2016].
Birmingham City University (no date) Wellbeing/Mental Health/Counselling Registration Form. Available at: https://hub.bcu.ac.uk/sites/ss/HW/Lists/Pre%20counselling%20and%20MHA%20form%20and%20Consent/Item/newifs.aspx?List=dac1e7ab-7044-42e1-9597-d7ecb809e3bf&Web=c45b5557-f4af-4bae-bbc9-bd2a1b010293 [Accessed 1 November 2016].
Havergal, C. and The Times Higher Education (2016) Rise in UK university dropout rate ‘disappointing’. Available at: https://www.timeshighereducation.com/news/rise-uk-university-dropout-rate-disappointing [Accessed 4 November 2016].
Macaskill, A. (2013) The mental health of university students in the United Kingdom. British Journal of Guidance & Counselling, 41(4), pp. 426–441. Available at: http://dx.doi.org/10.1080/03069885.2012.743110.
Nami, Y., Nami, M. S. and Eishani, K. A. (2014) The students’ mental health status. Procedia - Social and Behavioral Sciences, 114, pp. 840–844. Available at: http://dx.doi.org/10.1016/j.sbspro.2013.12.794.

