//
//  PostGraduateStudentTranscript.swift
//  FinalExam_Maham_101328732
//
//  Created by Maham Shamail on 11/11/2020.
//  Copyright © 2020 Maham Shamail. All rights reserved.
//

import Foundation
class PostGraduateStudentTranscript : StudentTranscript, Printable {
    
    override init(student: Student, list_of_courses: [Course]) {
        super.init(student: student, list_of_courses: list_of_courses)
    }
    
    
    override func printTranscript(){
        print("\n\n\n------------------------------------------------------------------")
        print("              POST-GRADUATE STUDENT TRANSCRIPT")
        print("------------------------------------------------------------------")
        student.printToScreen()
        print("\nCourse List:")
        print("------------------------------------------------------------------")
              for course in list_of_courses {
                print("\(course.Course_Code)   \(course.Course_Title)   \(course.Course_Credits) credits   \(course.calGradeStatus)")
                print("------------------------------------------------------------------")

              }
        //print("------------------------------------------------------------------")
        print("------------------------------------------------------------------")

    }
    // adding this method because it said -> Apply abstraction when creating each class/struct in the problem oop design section

    override func printToScreen() {
        printTranscript()
    }
}
