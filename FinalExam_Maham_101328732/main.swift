//
//  main.swift
//  FinalExam_Maham_101328732
//
//  Created by Maham Shamail on 11/11/2020.
//  Copyright © 2020 Maham Shamail. All rights reserved.
//

import Foundation



let student_undergrad = Student(ID_number: "25881", first_Name: "Abigail", last_Name: "Smith", student_Type: Student_Type.Undergraduate.rawValue)
let math = Course(Course_Code: "MATH133", Course_Title: "Algebra", Course_Credits: 3, marksReceived: 94)
let english = Course(Course_Code: "ENGL301", Course_Title: "English in Pop Culture", Course_Credits: 3, marksReceived: 75)
let undergrad_transcript = UndergraduateStudentTranscript(student: student_undergrad, list_of_courses: [math, english])
undergrad_transcript.printTranscript()

let student_post_graduate = Student(ID_number: "000137", first_Name: "Marrissa", last_Name: "Benjamin", student_Type: Student_Type.Post_Graduate.rawValue)
let math_post_grad = Course(Course_Code: "MATH133", Course_Title: "Algebra", Course_Credits: 3, marksReceived: 44)
let english_post_grad = Course(Course_Code: "ENGL301", Course_Title: "English in Pop Culture", Course_Credits: 3, marksReceived: 75)
let biology = Course(Course_Code: "BIO101", Course_Title: "Intro to Biology", Course_Credits: 3, marksReceived: 75)
let post_grad_transcript = PostGraduateStudentTranscript(student: student_post_graduate, list_of_courses: [math_post_grad, english_post_grad, biology ])
post_grad_transcript.printTranscript()
