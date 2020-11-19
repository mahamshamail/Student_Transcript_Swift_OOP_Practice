//
//  Student.swift
//  FinalExam_Maham_101328732
//
//  Created by Maham Shamail on 11/11/2020.
//  Copyright © 2020 Maham Shamail. All rights reserved.
//

import Foundation

struct Student: Printable {
    let ID_number : String
    let first_Name: String
    let last_Name: String
    let student_Type: String
    
    var student_full_name: String {
        get{
            return first_Name + " " + last_Name
        }
    }
    init(ID_number : String,
     first_Name: String,
     last_Name: String,
     student_Type: String) {
        self.ID_number = ID_number
        self.first_Name = first_Name
        self.last_Name = last_Name
        self.student_Type = student_Type
    }
    func printToScreen(){
        print("Student Name: \(self.student_full_name)\nStudent ID: \(ID_number)\nStudent Type: \(student_Type)")
    }
}


