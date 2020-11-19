//
//  Course.swift
//  FinalExam_Maham_101328732
//
//  Created by Maham Shamail on 11/11/2020.
//  Copyright © 2020 Maham Shamail. All rights reserved.
//

import Foundation

struct Course: Printable {
    
    
    let Course_Code: String
    let Course_Title : String
    let Course_Credits : Double
    let marksReceived: Double
    var calGradeStatus: String {
        get{
            if self.marksReceived >= 50 && self.marksReceived <= 100 {
                return "PASS"
            } else {
                return "FAIL"
            }
        }
    }
    func printToScreen() {
        print("\(self.Course_Code)   \(self.Course_Title)   \(self.Course_Credits) credits   \(self.calGradeStatus)")
    }
}
