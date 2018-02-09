//
//  CoreDataHelper.swift
//  ScheduleMaker
//
//  Created by Ava Crnkovic-Rubsamen on 2/9/18.
//  Copyright © 2018 Ava Crnkovic-Rubsamen. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class CoreDataHelper {
    
    static let appDelegate = UIApplication.shared.delegate as! AppDelegate
    static let persistentContainer = appDelegate.persistentContainer
    static let managedContext = persistentContainer.viewContext
    
    //save person
    static func saveCommitment() {
        do {
            try managedContext.save()
        } catch let error as NSError {
            print("Could not save \(error)")
        }
    }
    
    static func retrieveCommitment() -> [Commitment] {
        
        let fetchRequest = NSFetchRequest<Commitment>(entityName: "Commitment")
        do {
            let result = try managedContext.fetch(fetchRequest)
            return result
        } catch let error as NSError {
            print("Could not fetch \(error)")
            return []
        }
    }
    
    //new person
    static func newCommitment() -> Commitment {
        let commitment = NSEntityDescription.insertNewObject(forEntityName: "Commitment", into: managedContext) as! Commitment
        return commitment
    }
}
