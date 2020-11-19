//
//  UndergraduateStudentTranscript.swift
//  FinalExam_Maham_101328732
//
//  Created by Maham Shamail on 11/11/2020.
//  Copyright © 2020 Maham Shamail. All rights reserved.
//

import Foundation

class UndergraduateStudentTranscript : StudentTranscript, Printable {

    
    override init(student: Student, list_of_courses: [Course]) {
        super.init(student: student, list_of_courses: list_of_courses)
    }
    func calGPA() -> Double {
        var courseCount = 0
        var total_course_points: Double = 0
        var total_possible_course_points: Double = 0
        while courseCount < list_of_courses.count {
             var courseGPA: Double = 0
             var course_points: Double = 0
             let course_marks = list_of_courses[courseCount].marksReceived
             let courseCredit = list_of_courses[courseCount].Course_Credits
             let course_points_possible = 4 * courseCredit
             if course_marks >= 90 && course_marks <= 100 {
                 courseGPA = 4
                 course_points = courseGPA * courseCredit
             } else if course_marks >= 80 {
                 courseGPA = 3
                 course_points = courseGPA * courseCredit
             } else if course_marks >= 70 {
                 courseGPA = 2
                 course_points = courseGPA * courseCredit
             } else if course_marks >= 60 {
                 courseGPA = 1
                 course_points = courseGPA * courseCredit
             }else {
                 course_points = 0
             }
             total_possible_course_points = total_possible_course_points + course_points_possible
             total_course_points = total_course_points + course_points
             courseCount += 1
        }
        let total_GPA = (total_course_points/total_possible_course_points) * 4
        return total_GPA
    }
    override func printTranscript(){
        print("------------------------------------------------------------------")
        print("              UNDERGRADUATE STUDENT TRANSCRIPT")
        print("------------------------------------------------------------------")
        student.printToScreen()
        print("------------------------------------------------------------------")
        print("\nCourse List:")
        print("------------------------------------------------------------------")

        for course in list_of_courses {
            print("\(course.Course_Code)    \(course.Course_Title)    \(course.Course_Credits) credits    \(course.marksReceived)")
            print("------------------------------------------------------------------")

        }
       // print("------------------------------------------------------------------")

        print("GPA: \(calGPA())")
         print("------------------------------------------------------------------")
        print("------------------------------------------------------------------")

    }
    // adding this method because it said -> Apply abstraction when creating each class/struct in the problem oop design section

    override func printToScreen() {
           printTranscript()
    }
}
