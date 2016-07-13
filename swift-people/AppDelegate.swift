//  AppDelegate.swift

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
   
   var window: UIWindow?
   
   
   func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
      // Override point for customization after application launch.
      
      //create own test to see if situations work as intented
      let jenny = Person(name: "Jenny")
      let mike = Person(name: "Mike", age: 26)
      
      print(jenny.celebrateBirthday())
      print(mike.celebrateBirthday())
      
      mike.learnSkillBash()
      mike.learnSkillInterfaceBuilder()
      mike.learnSkillObjectiveC()
      mike.learnSkillSwift()
      mike.learnSkillSwift()

      
      jenny.learnSkillBash()
      jenny.learnSkillXcode()
      jenny.learnSkillSwift()
      
      print(jenny.qualifiedTutor)
      print(mike.qualifiedTutor)
      
      print(mike.skills)
      print(jenny.skills)
      
      // Do not alter
      return true  //
   }   //////////////
}       /////////////

