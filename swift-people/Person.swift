//
//  Person.swift
//  swift-people
//
//  Created by Michael Amundsen on 7/13/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person {
   let name: String
   var ageInYears: Int?
   var skills = Set<String>()
   
   init() {
      name = "John Doe"
      ageInYears = nil
   }
   
   init(name: String, age: Int?) {
      self.name = name
      self.ageInYears = age ?? nil
   }
   
   convenience init(name: String) {
      self.init(name: name, age: nil)
   }
   
   func celebrateBirthday() -> String {
      if let ageInYears = ageInYears {
         let newAge = ageInYears + 1
         return "HAPPY \(newAge)\(newAge.ordinal().uppercaseString) BIRTHDAY, \(name.uppercaseString)!!!"
      }
      return "HAPPY BIRTHDAY, \(name.uppercaseString)!!!"
   }
   
   func learnSkillBash() {
      skills.insert("Bash")
   }
   
   func learnSkillXcode() {
      skills.insert("Xcode")
   }
   
   func learnSkillObjectiveC() {
      skills.insert("Objective-c")
   }
   
   func learnSkillSwift() {
      skills.insert("Swift")
   }
   
   func learnSkillInterfaceBuilder() {
      skills.insert("Interface Builder")
   }
}

//MARK: Calculated Properties
extension Person {
   
   var qualifiedTutor: Bool {
      
      return skills.count >= 4
   }
   
}