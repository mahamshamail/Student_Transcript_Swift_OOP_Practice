//
//  StudentTranscript.swift
//  FinalExam_Maham_101328732
//
//  Created by Maham Shamail on 11/11/2020.
//  Copyright © 2020 Maham Shamail. All rights reserved.
//

import Foundation
class StudentTranscript {
    let  student: Student
    let list_of_courses: [Course]
    
    init(student: Student, list_of_courses: [Course]) {
        self.student = student
        self.list_of_courses = list_of_courses
    }
    
    func printTranscript(){
        //student.printToScreen()
    }
    
    // adding this method because it said -> Apply abstraction when creating each class/struct in the problem oop design section
    func printToScreen() {
           printTranscript()
    }
}
